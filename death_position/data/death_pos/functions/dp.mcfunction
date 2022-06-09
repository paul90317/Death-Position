execute store result score @s dpos.x run data get entity @s Pos[0]
execute store result score @s dpos.y run data get entity @s Pos[1]
execute store result score @s dpos.z run data get entity @s Pos[2]
tellraw @s [{"text": "You died at "},{"score":{"name": "@s","objective": "dpos.x"},"color": "yellow"}," ",{"score":{"name": "@s","objective": "dpos.y"},"color": "yellow"}," ",{"score":{"name": "@s","objective": "dpos.z"},"color": "yellow"}]
scoreboard players reset @s dpos.death