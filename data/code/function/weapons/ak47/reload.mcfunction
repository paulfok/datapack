scoreboard players set @s ak47.ammo 30
scoreboard players remove @s ak47.reserve 30
execute if score @s ak47.reserve matches ..-1 run scoreboard players operation @s ak47.ammo += @s ak47.reserve
execute if score @s ak47.reserve matches ..-1 run scoreboard players set @s ak47.reserve 0
tag @s remove reloading.ak47