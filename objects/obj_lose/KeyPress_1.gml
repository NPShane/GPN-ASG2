/// @description Transition to loss stats
if (!view_stats) {
    view_stats = true;
}
else {
    room_goto(rm_start);
    global.upgrade_tokens += upgrades_gained;
}