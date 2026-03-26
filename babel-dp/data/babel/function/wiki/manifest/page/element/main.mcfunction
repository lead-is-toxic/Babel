## Every time I think of json I think of my uncle Jason. Actually that's kind of weird now that I think about it, because that guy is like 50. Are there really Jasons that old? God damn that's actually kinda insane I always thought of Jason as like a my generation kind of name, I feel like I could have a brother called Jason.
## Anyways json pisses me off
data remove storage babel:temp root.element
data modify storage babel:temp root.element set from storage babel:temp root.template.elements[0]

## Element specific proccesses
execute if data storage babel:temp root.element{type:"text_component"} run function babel:wiki/manifest/page/element/text_component/main
execute if data storage babel:temp root.element{type:"header"} run function babel:wiki/manifest/page/element/header/main with storage babel:temp root.element

## Insert the element and clear current element
data modify storage babel:temp root.manifest.elements append from storage babel:temp root.element
data remove storage babel:temp root.template.elements[0]

## If there is another element queued, process it
execute if data storage babel:temp root.template.elements[0] run function babel:wiki/manifest/page/element/main