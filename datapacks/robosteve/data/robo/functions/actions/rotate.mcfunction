# called during the move forward action
#
#

scoreboard players add @s timer 1

execute at @s if block ~ ~1 ~ minecraft:oak_planks if entity @s[scores={timer=0..10}] as @e[type=armor_stand,tag=robot] at @s run teleport @s ~ ~ ~ ~9 ~
execute at @s if block ~ ~1 ~ minecraft:spruce_planks if entity @s[scores={timer=0..10}] as @e[type=armor_stand,tag=robot] at @s run teleport @s ~ ~ ~ ~-9 ~



execute if entity @s[scores={timer=20}] run tag @s remove rotate
execute if entity @s[scores={timer=20}] run tag @s add traverse