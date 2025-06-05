scoreboard objectives add hunger food
scoreboard objectives add id dummy
scoreboard objectives setdisplay list id
scoreboard objectives add raycast.steps dummy
scoreboard objectives add raycast.hit dummy
scoreboard objectives add weapon.primary dummy
scoreboard objectives add weapon.secondary dummy
scoreboard objectives add click.right minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add deaths deathCount
scoreboard objectives add deaths.old dummy
scoreboard objectives add sneak.time minecraft.custom:minecraft.sneak_time
scoreboard objectives add sneak.time.old dummy
scoreboard objectives add arbitrary dummy
# 0 - not playing
# -1 - queued for defuse
# 1 - playing defuse
scoreboard objectives add play.state dummy
# Number of people playing each gamemode
scoreboard objectives add playing dummy
scoreboard objectives add queued dummy
# 1 - starting
# 2 - started
# 3 - freeze time or smth
scoreboard objectives add game.state dummy

scoreboard objectives add ak47.timer dummy
scoreboard objectives add ak47.ammo dummy
scoreboard objectives add ak47.reserve dummy
scoreboard objectives add ak47.reload dummy

scoreboard objectives add m4a4.timer dummy
scoreboard objectives add m4a4.ammo dummy
scoreboard objectives add m4a4.reserve dummy
scoreboard objectives add m4a4.reload dummy
