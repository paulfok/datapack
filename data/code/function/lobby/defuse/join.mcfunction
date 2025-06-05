execute if score @s play.state matches 0 run tellraw @s {"text": "Queued for defuse","color":"yellow"}
execute if score @s play.state matches -1 run tellraw @s {"text": "Left queue for defuse","color": "red"}
execute if score @s play.state matches 0 store success score @s arbitrary run scoreboard players set @s play.state -1
execute if score @s play.state matches -1 unless score @s arbitrary matches 1 run scoreboard players set @s play.state 0
scoreboard players reset * arbitrary