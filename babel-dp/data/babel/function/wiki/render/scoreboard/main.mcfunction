## Make sure player's page score exists
$scoreboard players add @s $(scoreboard) 0

## Change page based on trigger score
$execute unless score @s $(scoreboard) matches 0 if score @s babel.trigger matches -1 run scoreboard players remove @s $(scoreboard) 1
$execute unless score @s $(scoreboard) >= #page_count babel.dummy if score @s babel.trigger matches -2 run scoreboard players add @s $(scoreboard) 1
$execute if score @s babel.trigger matches 1.. run scoreboard players operation @s $(scoreboard) = @s babel.trigger

## Get page based on score results
$execute store result storage babel:temp root.macro.score int 1 run scoreboard players get @s $(scoreboard)
function babel:wiki/render/scoreboard/get_page with storage babel:temp root.macro