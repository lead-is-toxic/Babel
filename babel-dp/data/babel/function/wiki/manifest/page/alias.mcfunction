## Apply alias
$data modify storage babel:temp root.template.elements[{id:"$(element)"}].$(target) set from storage babel:temp root.fields.$(alias)

## Remove current alias
data remove storage babel:temp root.template.aliases[0]

## If there is another alias queued, process it
execute if data storage babel:temp root.template.aliases[0] run function babel:wiki/manifest/page/alias with storage babel:temp root.template.aliases[0]