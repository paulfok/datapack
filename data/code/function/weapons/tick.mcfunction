execute as @a[scores={ak47.reload=0}] run function code:weapons/ak47/reload
execute as @a[scores={ak47.ammo=0,ak47.reserve=1..,ak47.reload=..0}] run function code:weapons/ak47/start_reload
execute as @a[scores={ak47.ammo=..29,ak47.reserve=1..,ak47.reload=..0}] if items entity @s weapon.offhand carrot_on_a_stick[item_name='"AK-47"'] run function code:weapons/ak47/start_reload
execute as @a if items entity @s weapon.offhand carrot_on_a_stick[item_name='"AK-47"'] run function code:reset/inventory
execute as @a[scores={ak47.reload=..-1}] if items entity @s weapon.mainhand carrot_on_a_stick[item_name='"AK-47"'] run title @s actionbar [{"score":{"name":"@s","objective":"ak47.ammo"},"color": "gray"},{"text": " | "},{"score":{"name":"@s","objective":"ak47.reserve"}}]
execute as @a[scores={ak47.reload=1..}] if items entity @s weapon.mainhand carrot_on_a_stick[item_name='"AK-47"'] run title @s actionbar [{"text": "Reloading (","color": "gray"},{"score":{"name":"@s","objective":"ak47.reload"}},{"text": "t) "},{"score":{"name":"@s","objective":"ak47.ammo"}},{"text": " | "},{"score":{"name":"@s","objective":"ak47.reserve"}}]

execute as @a[scores={m4a4.reload=0}] run function code:weapons/m4a4/reload
execute as @a[scores={m4a4.ammo=0,m4a4.reserve=1..,m4a4.reload=..0}] run function code:weapons/m4a4/start_reload
execute as @a[scores={m4a4.ammo=..29,m4a4.reserve=1..,m4a4.reload=..0}] if items entity @s weapon.offhand carrot_on_a_stick[item_name='"M4A4"'] run function code:weapons/m4a4/start_reload
execute as @a if items entity @s weapon.offhand carrot_on_a_stick[item_name='"M4A4"'] run function code:reset/inventory
execute as @a[scores={m4a4.reload=..-1}] if items entity @s weapon.mainhand carrot_on_a_stick[item_name='"M4A4"'] run title @s actionbar [{"score":{"name":"@s","objective":"m4a4.ammo"},"color": "gray"},{"text": " | "},{"score":{"name":"@s","objective":"m4a4.reserve"}}]
execute as @a[scores={m4a4.reload=1..}] if items entity @s weapon.mainhand carrot_on_a_stick[item_name='"M4A4"'] run title @s actionbar [{"text": "Reloading (","color": "gray"},{"score":{"name":"@s","objective":"m4a4.reload"}},{"text": "t) "},{"score":{"name":"@s","objective":"m4a4.ammo"}},{"text": " | "},{"score":{"name":"@s","objective":"m4a4.reserve"}}]

scoreboard players remove @a ak47.timer 1
scoreboard players remove @a m4a4.timer 1

scoreboard players remove @a ak47.reload 1
scoreboard players remove @a m4a4.reload 1

execute as @a[scores={click.right=1..}] if items entity @s weapon.mainhand carrot_on_a_stick[item_name='"AK-47"'] at @s run function code:weapons/ak47/check
execute as @a[scores={click.right=1..}] if items entity @s weapon.mainhand carrot_on_a_stick[item_name='"M4A4"'] at @s run function code:weapons/m4a4/check