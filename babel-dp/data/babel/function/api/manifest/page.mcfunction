data remove storage babel:temp root

## Set all these cool things up
$data modify storage babel:temp root.fields set value $(page)
$data modify storage babel:temp root.wiki set from storage babel:database wiki.$(wiki)
$data modify storage babel:temp root.template set from storage babel:database page_template.$(template)

## Start alias loop
execute if data storage babel:temp root.template.aliases[0] run function babel:wiki/manifest/page/alias with storage babel:temp root.template.aliases[0]

## Start element loop
data modify storage babel:temp root.element set from storage babel:temp root.elements[0]
execute if data storage babel:temp root.template.elements[0] run function babel:wiki/manifest/page/element/main

## Call function to prepare new wiki for database
$function babel:wiki/manifest/page/finalize {wiki:"$(wiki)"}

## Don't forget to uncomment this later
# data remove storage babel:temp root