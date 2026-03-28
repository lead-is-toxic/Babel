## Prepare structure of alias and call function to insert
$data modify storage babel:temp root.template.aliases[0].input set from storage babel:temp root.manifest.contents.$(alias)
execute unless data storage babel:temp root.template.aliases[0].prefix run data modify storage babel:temp root.template.aliases[0].prefix set value ""
execute unless data storage babel:temp root.template.aliases[0].suffix run data modify storage babel:temp root.template.aliases[0].suffix set value ""
function babel:wiki/manifest/page/alias/apply with storage babel:temp root.template.aliases[0]

## Remove current alias
data remove storage babel:temp root.template.aliases[0]

## If there is another alias queued, process it
execute unless data storage babel:temp root.template.aliases[0] run return fail
function babel:wiki/manifest/page/alias/main with storage babel:temp root.template.aliases[0]