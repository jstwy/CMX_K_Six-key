/*
 * Original firmware files: Copyright 2012 Jun Wako <wakojun@gmail.com>, <github.com/tmk/tmk_keyboard>
 * Code for macro keys based on work posted by user argcargv in thread <geekhack.org/index/php?topic=74497.0>
 */

#include <stdint.h>
#include <stdbool.h>
#include "keycode.h"
#include "action.h"
#include "action_macro.h"
#include "report.h"
#include "host.h"
#include "print.h"
#include "debug.h"
#include "keymap.h"
#include <avr/pgmspace.h>
#include "util.h"


/*--------------------------------------
 * Keymap for CMX K Six-key
 *
 * Layout: 6 keys
 * ,-----------.
 * |K00|K01|K02|
 * |K10|K11|K12|
 * '-----------'
 *
 * Matrix: 2x3
 * ,-------------------------.
 * |////| col0 | col1 | col2 |
 * |----+------+------+------|
 * |row0| K00  | K01  | K02  |
 * |row1| K10  | K11  | K12  |
 * '-------------------------'
 ---------------------------------------*/

/* Define keypad matrix */
#define KEYMAP( \
    K00, K01, K02, \
    K10, K11, K12  \
) { \
    { KC_##K00, KC_##K01, KC_##K02 }, \
    { KC_##K10, KC_##K11, KC_##K12 }  \
}

/* Map keycodes to keys using */
const uint8_t PROGMEM keymaps[][MATRIX_ROWS][MATRIX_COLS] = {
    /*
     * 0: Default and sole layer
     * ,---------------.
     * |FN0 |MYCM|SLEP|
     * |FN1 |FN2 |PSCR|
     * '---------------'
     */
    KEYMAP(FN0, MYCM, SLEP, \
           FN1, FN2, PSCR),
};

/* Enumerate macro IDs */
enum macro_id {
    HEART,
    CYCLE,
    RESTORE,
};

/* Define function key actions */
const action_t PROGMEM fn_actions[] = {
    [0] = ACTION_MACRO(HEART), // macro for heart emoji alt code
    [1] = ACTION_MACRO(CYCLE), // macro for cycling through browser tabs
    [2] = ACTION_MACRO(RESTORE), // macro for restoring browser tab
};

/* Define macro keystrokes (alt + keypad 3 for heart emoji) */
const macro_t *action_get_macro(keyrecord_t *record, uint8_t id, uint8_t opt)
{
    switch (id) {
        case HEART:
            return (record->event.pressed ?
                    MACRO( D(LALT), T(KP_3), U(LALT), END ) :
                    MACRO_NONE);
            break;
        case CYCLE:
            return (record->event.pressed ?
                    MACRO( D(LCTRL), T(TAB), U(LCTRL), END ) :
                    MACRO_NONE);
            break;
        case RESTORE:
            return (record->event.pressed ?
                    MACRO( D(LCTRL), D(LSFT), T(T), U(LCTRL), U(LSFT), END ) :
                    MACRO_NONE);
            break;
    }
    return MACRO_NONE;
}
