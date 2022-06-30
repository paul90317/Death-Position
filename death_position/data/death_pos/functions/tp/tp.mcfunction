execute store result entity @s Pos[0] double 1 run scoreboard players get @p dpos.x
execute store result entity @s Pos[1] double 1 run scoreboard players get @p dpos.y
execute store result entity @s Pos[2] double 1 run scoreboard players get @p dpos.z
execute at @s run tp ~ ~ ~

scoreboard players set @s dpos.ret 0
execute if entity @p[nbt={Dimension:"minecraft:overworld"},scores={dpos.dim=1}] run scoreboard players set @s dpos.ret 1
execute if entity @p[nbt={Dimension:"minecraft:the_nether"},scores={dpos.dim=2}] run scoreboard players set @s dpos.ret 1
execute if entity @p[nbt={Dimension:"minecraft:the_end"},scores={dpos.dim=3}] run scoreboard players set @s dpos.ret 1
tp @p @s[scores={dpos.ret=1}]

execute if entity @s[scores={dpos.ret=0}] as @p run function death_pos:tp/fail

kill @s