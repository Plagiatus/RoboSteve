# called during the move forward action
#
#

scoreboard players add @s timer 1

execute if entity @s[scores={timer=0..10}] as @e[type=armor_stand,tag=robot] at @s run teleport @s ^ ^ ^0.1



execute if entity @s[scores={timer=20}] run tag @s remove move_forward
execute if entity @s[scores={timer=20}] run tag @s add traverse