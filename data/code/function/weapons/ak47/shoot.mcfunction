scoreboard players set @s raycast.steps 1000
scoreboard players set @s raycast.hit 0
scoreboard players set @s ak47.timer 2
scoreboard players remove @s ak47.ammo 1
tag @s add immune

execute anchored eyes positioned ^ ^ ^ run function code:weapons/ak47/raycast

tag @s remove immune