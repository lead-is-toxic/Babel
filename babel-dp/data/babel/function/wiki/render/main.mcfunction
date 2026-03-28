## Reset scores
scoreboard players enable @s babel.trigger

## Clear data for the crazy stuff that is about to go down
data remove storage babel:temp root

## Check for which slot to grab wiki data from
execute if items entity @s weapon.mainhand minecraft:written_book[minecraft:custom_data~{babel:{wiki:{}}}] run function babel:wiki/render/fetch/item_data {path:"SelectedItem"}
execute if items entity @s weapon.offhand minecraft:written_book[minecraft:custom_data~{babel:{wiki:{}}}] unless items entity @s weapon.mainhand minecraft:written_book[minecraft:custom_data~{babel:{wiki:{}}}] run function babel:wiki/render/fetch/item_data {path:"equipment.offhand"}
data remove storage babel:temp root.macro

## Get max page count and save it for later
execute store result score #page_count babel.dummy run data get storage babel:temp root.wiki.page_count
scoreboard players remove #page_count babel.dummy 1

## I think this and some other things could probably be merged
## Handle score
data modify storage babel:temp root.macro.scoreboard set from storage babel:temp root.wiki.scoreboard
function babel:wiki/render/scoreboard/main with storage babel:temp root.macro
data remove storage babel:temp root.macro

## Call function to build the base of the page (background, widgets)
function babel:wiki/render/base

## Append page elements to base elements
data modify storage babel:temp root.elements append from storage babel:temp root.page.elements

## Assemble last macro and display the dialog
data modify storage babel:temp root.macro merge from storage babel:temp root.wiki.offsets
data modify storage babel:temp root.macro merge from storage babel:temp root.page.offsets
data modify storage babel:temp root.macro.body_width set from storage babel:temp root.wiki.body_width
data modify storage babel:temp root.macro.elements set from storage babel:temp root.elements
data modify storage babel:temp root.macro.wiki_name set from storage babel:temp root.wiki_name
function babel:wiki/render/output with storage babel:temp root.macro
# data remove storage babel:temp root.macro

## Post-render clarity
# data remove storage babel:temp root