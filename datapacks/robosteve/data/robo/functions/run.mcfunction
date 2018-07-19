summon area_effect_cloud -11 5 10 {Duration:10000000,Tags:["marker","traverse"]}
execute at @e[type=area_effect_cloud,tag=marker] run summon shulker ~ ~ ~ {Silent:1,Invulnerable:1,NoAI:1,Glowing:1b,Tags:["highlight"],DeathLootTable:"minecraft:empty",ActiveEffects:[{Id:14,Amplifier:0,Duration:2000000,ShowParticles:0b}],Team:"green"}
# teleport @e[type=armor_stand,tag=robot] -10 4 5 -90 0