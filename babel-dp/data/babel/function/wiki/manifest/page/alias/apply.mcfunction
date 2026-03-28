## Replaces target with alias with prefix and suffix
$data modify storage babel:temp root.template.elements[{id:"$(element)"}].$(target) set value "$(prefix)$(input)$(suffix)"