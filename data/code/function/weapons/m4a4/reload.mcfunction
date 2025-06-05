scoreboard players set @s m4a4.ammo 30
scoreboard players remove @s m4a4.reserve 30
execute if score @s m4a4.reserve matches ..-1 run scoreboard players operation @s m4a4.ammo += @s m4a4.reserve
execute if score @s m4a4.reserve matches ..-1 run scoreboard players set @s m4a4.reserve 0
tag @s remove reloading.m4a4