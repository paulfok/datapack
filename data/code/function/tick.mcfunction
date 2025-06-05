effect clear @a

execute as @a[scores={hunger=..5}] run effect give @s saturation infinite 255 true
execute as @a[scores={hunger=7..}] run effect give @s hunger infinite 255 true
effect give @a speed infinite 0 true
xp set @a 0
xp set @a 0 levels

function code:weapons/tick
function code:id
function code:reset/advancements
function code:game/t/tick
function code:game/ct/tick

execute as @a if score @s sneak.time = @s sneak.time.old run scoreboard players set @s sneak.time 0
execute as @a run scoreboard players operation @s sneak.time.old = @s sneak.time
scoreboard players set @a click.right 0
scoreboard players add @a play.state 0
scoreboard players add @a deaths 0
scoreboard players add @a deaths.old 0
execute as @a if score @s deaths > @s deaths.old run gamemode spectator
# execute as @a if score @s deaths > @s deaths.old run tellraw @a [{"selector": "@s"},{"text":" died from idioms... idiots.","color": "white"}]
execute as @a run scoreboard players operation @s deaths.old = @s deaths
scoreboard players add .defuse game.state 0
scoreboard players add @a play.state 0
scoreboard players set * playing 0
execute as @a[scores={play.state=1}] run scoreboard players add .defuse playing 1
scoreboard players set * queued 0
execute as @a[scores={play.state=-1}] run scoreboard players add .defuse queued 1
gamemode adventure @a[tag=!is_admin]

function code:lobby/tick

execute unless entity @n[type=creeper] run summon creeper 0 62 4 {NoAI:true,Rotation:[180F,0F],active_effects:[{id:regeneration,amplifier:255,duration:-1,show_particles:false}]}
execute if score .defuse game.state matches 0..1 as @e[tag=lobby.defuse] run data modify entity @s text set value '[{"text": "Defuse\\n"},{"score": {"name": ".defuse","objective": "queued"}},{"text": " queued"}]'
execute if score .defuse game.state matches 2 as @e[tag=lobby.defuse] run data modify entity @s text set value '[{"text": "Defuse\\n"},{"score": {"name": ".defuse","objective": "playing"}},{"text": " playing"}]'

execute store result score .tps vars run tps
scoreboard players set .tps vars 1