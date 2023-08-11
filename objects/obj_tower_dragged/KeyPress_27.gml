/// @description Cancel placement
global.coins += spawned_from.cost;
global.placing = false;
show_debug_message("Refunded");
instance_destroy();