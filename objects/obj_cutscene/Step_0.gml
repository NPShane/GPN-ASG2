/// @description control camera and fade
camera_set_view_pos(view_camera[0], camera_x, 122);
camera_x = max(camera_x - .1, 0);

if (!fadeout) fadeout_alpha = max(fadeout_alpha - .005, .2);
else fadeout_alpha = min(fadeout_alpha + .01, 1);

letters_to_draw += .28;

current_drawn_text = string_copy(current_line, 1, letters_to_draw);
if (letters_to_draw >= string_length(current_drawn_text) + 100) && (next_line_index < array_length(strings) - 1) {
    letters_to_draw = 0.5;
    next_line_index++;
    if (next_line_index == array_length(strings) - 1) key_hold_duration++;
}
current_line =  strings[next_line_index];

if (keyboard_check_direct(vk_space)) {
    key_hold_duration++;
}

if (key_hold_duration > 80) || (camera_x < 150) {
    fadeout = true;
    audio_sound_gain(snd_intro, 0, 1000); // fadeout
}

if (fadeout_alpha == 1) && (fadeout) room_goto(rm_level1);
