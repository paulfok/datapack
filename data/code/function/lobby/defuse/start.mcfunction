tellraw @a {"text": "Defuse is starting in 20 seconds","color": "green"}
scoreboard players set .defuse game.state 1
schedule function code:lobby/defuse/start_game 20s