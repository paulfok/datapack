scoreboard players set @s raycast.steps 1000
scoreboard players set @s raycast.hit 0
scoreboard players set @s m4a4.timer 2
scoreboard players remove @s m4a4.ammo 1
tag @s add immune

execute anchored eyes positioned ^ ^ ^ run function code:weapons/m4a4/raycast

tag @s remove immune