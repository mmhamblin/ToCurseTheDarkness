/// @description Insert description here
// You can write your code in this editor


// Inherit the parent event
event_inherited();

for(var i = 0; i < instance_number(enemyParent); i++)
{
	enemy = instance_find(enemyParent, i);
	if(abs(x-enemy.x) < 600)
	{
		enemy.state = enemy.down;
	}
}