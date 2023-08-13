/// @description Init variables
camera_x = 615; // camera inital x pos, used to move it later
fadeout_alpha = 1; // alpha value for fading in and out
fadeout = false; // determine if fadeout_alpha should incr. or decr.

current_line = ""; // whole line to be printed
current_drawn_text = ""; // current text to draw, for scrolling effect

letters_to_draw = 0; // letters to draw, length of current_drawn_text
next_line_index = 0; // index for next line in array

key_hold_duration = 0; // time "skip" action has been held

strings[0] = "In the realm of the desert land there lived a family of squares.\n Their lives was characterized by joy,unity and happiness. Their bond was unbreakable and they would always have each other’s backs. \nThe square family had something special a connection that radiated love and happiness.";
strings[1] = "However, Across the undulating plains, the circle army swelled. Unlike the squares, they were envious of their counterparts.\n The circles believed that the squares perfect angles and certain land space gave them an inherent advantage\n which was their source of their happiness.\n This jealousy festered in the hearts of the circle army until it consumed them entirely.";
strings[2] = "One day, a malevolent circle general fueled with envy, rallied the circle army to invade the squares family\n and take the land of the squares to take their source of happiness so the circles can finally be happy again.";
strings[3] = "The squares family now has to defend themselves\n and fight against the circle army to protect their home!";