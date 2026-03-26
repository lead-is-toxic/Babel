## Reset scores
scoreboard players enable @s babel.trigger

## Clear data for the crazy stuff that is about to go down
data remove storage babel:temp root

## Check for which slot to grab wiki data from
execute if items entity @s weapon.mainhand minecraft:written_book[minecraft:custom_data~{babel:{wiki:{}}}] run function babel:wiki/render/fetch/item_data {path:"SelectedItem"}
execute if items entity @s weapon.offhand minecraft:written_book[minecraft:custom_data~{babel:{wiki:{}}}] unless items entity @s weapon.mainhand minecraft:written_book[minecraft:custom_data~{babel:{wiki:{}}}] run function babel:wiki/render/fetch/item_data {path:"equipment.offhand"}
data remove storage babel:temp root.macro

## Build the base of the page (background, widgets)
# data modify storage babel:temp root.macro.background_width merge from storage babel:temp root.wiki.elements.background.width
function babel:wiki/render/base/build
# data remove storage babel:temp root.macro

## Assemble last macro and display the dialog
data modify storage babel:temp root.macro merge from storage babel:temp root.wiki.offsets
data modify storage babel:temp root.macro.elements set from storage babel:temp root.elements
data modify storage babel:temp root.macro.wiki_name set from storage babel:temp root.wiki_name
function babel:wiki/render/output with storage babel:temp root.macro
# data remove storage babel:temp root.macro

## Post-render clarity
# data remove storage babel:temp root