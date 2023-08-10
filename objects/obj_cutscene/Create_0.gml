/// @description Init variables
camera_x = 375; // camera inital x pos, used to move it later
fadeout_alpha = 1; // alpha value for fading in and out
fadeout = false; // determine if fadeout_alpha should incr. or decr.

current_line = ""; // whole line to be printed
current_drawn_text = ""; // current text to draw, for scrolling effect

letters_to_draw = 0; // letters to draw, length of current_drawn_text
next_line_index = 0; // index for next line in array

key_hold_duration = 0; // time "skip" action has been held

strings[0] = "First placeholder text";
strings[1] = "Second placeholder text";
strings[2] = "Third placeholder text\nMore text";