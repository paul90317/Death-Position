execute store result score @s dpos.x run data get entity @s Pos[0]
execute store result score @s dpos.y run data get entity @s Pos[1]
execute store result score @s dpos.z run data get entity @s Pos[2]
execute if entity @s[nbt={Dimension:"minecraft:overworld"}] run scoreboard players set @s dpos.dim 1
execute if entity @s[nbt={Dimension:"minecraft:the_nether"}] run scoreboard players set @s dpos.dim 2
execute if entity @s[nbt={Dimension:"minecraft:the_end"}] run scoreboard players set @s dpos.dim 3
tellraw @s [{"text": "You died at "},{"score":{"name": "@s","objective": "dpos.x"},"color": "yellow"}," ",{"score":{"name": "@s","objective": "dpos.y"},"color": "yellow"}," ",{"score":{"name": "@s","objective": "dpos.z"},"color": "yellow"}]
scoreboard players reset @s dpos.death