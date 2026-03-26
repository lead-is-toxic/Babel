## Get the wiki id and put it into a macro
$data modify storage babel:temp root.macro.id set from entity @s $(path).components."minecraft:custom_data".babel.wiki.id
$data modify storage babel:temp root.wiki_name set from entity @s $(path).components."minecraft:item_name"
function babel:wiki/render/fetch/grab_wiki with storage babel:temp root.macro