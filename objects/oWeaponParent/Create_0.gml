/// @description Insert description here
// You can write your code in this editor
event_inherited()
type = EQUIPMENTPOSITIONS.DOMINANTHAND
min_damage = 1
max_damage = 2

crit_multiplyer = 1.5

min_protection = 0
max_protection = 1

function get_damage(is_crit)
{
	var multiplyer = 1
	if(is_crit) multiplyer = crit_multiplyer
	return irandom_range(min_damage, max_damage) * multiplyer
}

function get_protection()
{
	return irandom_range(min_protection, max_protection)
}