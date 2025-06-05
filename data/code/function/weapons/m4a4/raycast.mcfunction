execute unless block ~ ~ ~ minecraft:air run scoreboard players set @s raycast.hit 1
execute positioned ~-0.5 ~-0.5 ~-0.5 as @n[dx=0,dy=0,dz=0,tag=!immune] run damage @s 6.6 arrow by @s from @p[tag=immune]
execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @n[dx=0,dy=0,dz=0,tag=!immune] run scoreboard players set @s raycast.hit 1
scoreboard players remove @s raycast.steps 1
particle crit ~ ~ ~ 0 0 0 0 1
execute if score @s raycast.steps matches 1.. if score @s raycast.hit matches 0 positioned ^ ^ ^0.1 run function code:weapons/m4a4/raycast