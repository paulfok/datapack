scoreboard players add @a id 0
execute as @a[scores={id=0},limit=1] run scoreboard players add . id 1
execute as @a[scores={id=0},limit=1] run scoreboard players operation @s id = . id