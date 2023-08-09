///@desc Take damage
var _healthloss = other.damage - defence;
var _minloss = .3 * other.damage;
if (_healthloss < _minloss) _healthloss = _minloss;
hp -= _healthloss;
with(other) instance_destroy();