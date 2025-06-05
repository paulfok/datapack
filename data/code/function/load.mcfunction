# function code:reset/all

gamerule doMobSpawning false
gamerule mobGriefing false
gamerule doFireTick false
gamerule doImmediateRespawn true
gamerule announceAdvancements false

forceload add 5 -5 -5 5

function code:reset/scoreboards

tellraw @a { "color": "#00FF00", "text": "The Code is Load"}