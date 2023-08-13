upgrades_gained = round(global.kills / 10);

if (global.kills > global.max_kills) {
    global.max_kills = global.kills;
    global.max_waves_cleared = global.waves_cleared;
    new_high = true;
}
else new_high = false;

global.upgrade_tokens += upgrades_gained;

fadeout_alpha = 1;