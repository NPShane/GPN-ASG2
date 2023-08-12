/// @description Follow pause
var _paused = obj_run.paused;
if(_paused) {
	// hold timers if paused
	alarm[0]++;
	alarm[1]++;
}