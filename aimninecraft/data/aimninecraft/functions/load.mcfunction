scoreboard objectives add aimninecraft_shooter_track dummy
scoreboard objectives add aimninecraft_missile_track dummy

scoreboard objectives add aimninecraft_var dummy
scoreboard players set $1200 aimninecraft_var 1200
scoreboard players set $1000 aimninecraft_var 1000

scoreboard players set $cos(r60) aimninecraft_var 990
scoreboard players set $sin(r60) aimninecraft_var 139

# /give @p firework_rocket{Fireworks: {Flight: 2b, Explosions: [{Type: 0b, Colors: [1]}, {Type: 0b, Colors: [1]}, {Type: 0b, Colors: [1]}, {Type: 0b, Colors: [1]}, {Type: 0b, Colors: [1]}]}, MissileData: {Type: R60}}
#{id:"minecraft:firework_rocket",tag:{Fireworks:{Flight:2b,Explosions:[{Type:0b,Colors:[1]},{Type:0b,Colors:[1]}]},MissileData:{Type:"R60"}},Count:1b}
#{id: "minecraft:crossbow", tag: {Damage:0,Unbreakable:1,Enchantments:[{id:quick_charge,lvl:3}]}, Count: 1b}
#summon pillager ~ ~1 ~ {Attributes:[{Name:"generic.follow_range",Base:100.0}],HandItems: [{id: "minecraft:crossbow", tag: {Damage:0,Unbreakable:1,Enchantments:[{id:quick_charge,lvl:3}]}, Count: 1b},{id:"minecraft:firework_rocket",tag:{Fireworks:{Flight:2b,Explosions:[{Type:0b,Colors:[1]},{Type:0b,Colors:[1]}]},MissileData:{Type:"R60"}},Count:64b}]}