/*
 * Original firmware files: Copyright 2012 Jun Wako <wakojun@gmail.com>, <github.com/tmk/tmk_keyboard>
 */

#include <stdint.h>
#include <stdbool.h>
#include <avr/io.h>
#include <util/delay.h>
#include "print.h"
#include "debug.h"
#include "util.h"
#include "matrix.h"


/*
 * CMX K Six-key
 *
 * Pin usage:
 *   COL: PF4-6
 *   ROW: PF0-1
 */
#ifndef DEBOUNCE
#   define DEBOUNCE	5
#endif
static uint8_t debouncing = DEBOUNCE;

/* Matrix state(1:on, 0:off) */
static matrix_row_t matrix[MATRIX_ROWS];
static matrix_row_t matrix_debouncing[MATRIX_ROWS];

static matrix_row_t read_cols(void);
static void init_cols(void);
static void unselect_rows(void);
static void select_row(uint8_t row);


void matrix_init(void)
{
    // JTAG disable for PORT F (write JTD bit twice within four cycles)
    MCUCR |= (1<<JTD);
    MCUCR |= (1<<JTD);

    // Initialize rows and cols
    unselect_rows();
    init_cols();

    // Initialize matrix state: all keys off
    for (uint8_t i=0; i < MATRIX_ROWS; i++) {
        matrix[i] = 0;
        matrix_debouncing[i] = 0;
    }
}

uint8_t matrix_scan(void)
{
    for (uint8_t i = 0; i < MATRIX_ROWS; i++) {
        select_row(i);
        _delay_us(30);  // Unstable value read without this delay
        matrix_row_t cols = read_cols();
        if (matrix_debouncing[i] != cols) {
            matrix_debouncing[i] = cols;
            if (debouncing) {
                debug("bounce!: "); debug_hex(debouncing); debug("\n");
            }
            debouncing = DEBOUNCE;
        }
        unselect_rows();
    }

    if (debouncing) {
        if (--debouncing) {
            _delay_ms(1);
        } else {
            for (uint8_t i = 0; i < MATRIX_ROWS; i++) {
                matrix[i] = matrix_debouncing[i];
            }
        }
    }

    return 1;
}

inline
matrix_row_t matrix_get_row(uint8_t row)
{
    return matrix[row];
}

/* Column pin configuration
 * col: 0   1   2
 * pin: F4  F5  F6
 */
static void  init_cols(void)
{
    DDRF  &= ~(1<<6 | 1<<5 | 1<<4);
    PORTF |=  (1<<6 | 1<<5 | 1<<4);
}

static matrix_row_t read_cols(void)
{
    return (PINF&(1<<4) ? 0 : (1<<0)) |
           (PINF&(1<<5) ? 0 : (1<<1)) |
           (PINF&(1<<6) ? 0 : (1<<2));
}

/* Row pin configuration
 * row: 0   1
 * pin: F0  F1
 */
static void unselect_rows(void)
{
    // Hi-Z(DDR:0, PORT:0) to unselect
    DDRF  &= ~0b00000011;
    PORTF &= ~0b00000011;
}

static void select_row(uint8_t row)
{
    // Output low(DDR:1, PORT:0) to select
    switch (row) {
        case 0:
            DDRF  |= (1<<0);
            PORTD &= ~(1<<0);
            break;
        case 1:
            DDRF  |= (1<<1);
            PORTD &= ~(1<<1);
            break;
    }
}
