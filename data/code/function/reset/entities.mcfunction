kill @e[type=!player]
kill @e[type=item]

summon armor_stand -2 62 4 {Invulnerable:true}
summon text_display -2 64 4 {billboard:"center",alignment:"center",text:'{"text": "Arms Race","color": "gray"}',Rotation:[180F,0F]}

summon creeper 0 62 4 {NoAI:true,Rotation:[180F,0F],active_effects:[{id:regeneration,amplifier:255,duration:-1,show_particles:false}]}
summon text_display 0 64 4 {billboard:"center",alignment:"center",text:'[{"text": "Defuse\\n"},{"score": {"name": ".defuse","objective": "queued"}},{"text": " queued"}]',Rotation:[180F,0F],Tags:[lobby.defuse]}

summon armor_stand 2 62 4 {Invulnerable:true}
summon text_display 2 64 4 {billboard:"center",alignment:"center",text:'{"text": "Deathmatch","color": "gray"}',Rotation:[180F,0F]}