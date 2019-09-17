/*
 * Original firmware files: Copyright 2012 Jun Wako <wakojun@gmail.com>, <github.com/tmk/tmk_keyboard>
 */

#ifndef CONFIG_H
#define CONFIG_H

/* USB Device descriptor parameter */
#define VENDOR_ID       0xFEED
#define PRODUCT_ID      0x6060
#define DEVICE_VER      0x0001
#define MANUFACTURER    jstwy
#define PRODUCT         CMX K Six-key
#define DESCRIPTION     Custom keypad

/* Matrix size */
#define MATRIX_ROWS 2
#define MATRIX_COLS 3

/* Define if matrix has ghost */
//#define MATRIX_HAS_GHOST

/* Set 0 if need no debouncing */
#define DEBOUNCE    5

/* Disable debug print */
#define NO_DEBUG

/* Disable print */
#define NO_PRINT

/* Disable action features to reduce firmware size*/
#define NO_ACTION_LAYER
#define NO_ACTION_TAPPING
#define NO_ACTION_ONESHOT
//#define NO_ACTION_MACRO
//#define NO_ACTION_FUNCTION

/* Key combination for command */
#define IS_COMMAND() ( \
    keyboard_report->mods == (MOD_BIT(KC_LSHIFT) | MOD_BIT(KC_RSHIFT)) \
)

#endif
