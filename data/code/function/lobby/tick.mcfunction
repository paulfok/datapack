scoreboard players add .defuse game.state 0
execute if score .defuse queued matches 0 if score .defuse playing matches 0 run scoreboard players set .defuse game.state 0
execute if score .defuse queued matches 1.. if score .defuse game.state matches 0 run function code:lobby/defuse/start