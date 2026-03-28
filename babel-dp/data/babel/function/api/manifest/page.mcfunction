data remove storage babel:temp root

## Set all these cool things up
$data modify storage babel:temp root.manifest set value $(page)
$data modify storage babel:temp root.wiki set from storage babel:database wiki.$(wiki)
data modify storage babel:temp root.wiki merge from storage babel:temp root.manifest.wiki_overrides
$data modify storage babel:temp root.template set from storage babel:database page_template.$(template)

## Increase wiki page count
scoreboard players reset #page_count
$execute store result score #page_count babel.dummy run data get storage babel:database wiki.$(wiki).page_count
scoreboard players add #page_count babel.dummy 1
$execute store result storage babel:database wiki.$(wiki).page_count int 1 run scoreboard players get #page_count babel.dummy

## Start alias loop
execute if data storage babel:temp root.template.aliases[0] run function babel:wiki/manifest/page/alias/main with storage babel:temp root.template.aliases[0]

## Start element loop
data modify storage babel:temp root.element set from storage babel:temp root.elements[0]
execute if data storage babel:temp root.template.elements[0] run function babel:wiki/manifest/page/element/main

## Remove redundant data and call function to prepare new wiki for database
data remove storage babel:temp root.manifest.contents
$data modify storage babel:database wiki.$(wiki).pages append from storage babel:temp root.manifest

## Don't forget to uncomment this later
# data remove storage babel:temp root