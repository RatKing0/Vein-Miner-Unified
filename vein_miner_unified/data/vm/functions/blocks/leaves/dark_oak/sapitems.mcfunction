execute if score @s vm_pickus matches 65.. run summon item ~ ~ ~ {Item:{id:"minecraft:dark_oak_sapling",Count:64b},Tags:["vm_item"]}
execute if score @s vm_pickus matches 65.. run scoreboard players remove @s vm_pickus 64
execute if score @s vm_pickus matches 1..64 run summon item ~ ~ ~ {Item:{id:"minecraft:dark_oak_sapling",Count:1b},Tags:["vm_item","vm_dapling"]}
execute if score @s vm_pickus matches 1..64 store result entity @e[type=item,tag=vm_dapling,sort=nearest,limit=1,distance=..0.1] Item.Count byte 1 run scoreboard players get @s vm_pickus
execute if score @s vm_pickus matches 1..64 run function vm:blocks/leaves/apples
execute if score @s vm_pickus matches 1..64 run scoreboard players set #vm_max vm_pickus 0
execute if score @s vm_pickus matches 1..64 run tag @s add vm_stik
execute if entity @s[tag=vm_stik] run scoreboard players operation @s vm_pickus = #vm_stik vm_pickus
execute if entity @s[tag=vm_stik] run function vm:blocks/vegetation/dead_bush/sitems
execute if entity @s[tag=vm_stik] run scoreboard players set #vm_stik vm_pickus 0
execute if score @s vm_pickus matches 65.. run function vm:blocks/leaves/dark_oak/sapitems