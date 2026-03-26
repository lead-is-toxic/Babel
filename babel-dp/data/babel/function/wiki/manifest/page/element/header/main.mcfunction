data modify storage babel:temp root.element set value ["\n",{"text": "header", "font": "foo:bar", "color": "white"},"\n"]
$data modify storage babel:temp root.element[1].text set from storage babel:temp root.wiki.elements.$(header).character
data modify storage babel:temp root.element[1].font set from storage babel:temp root.wiki.fonts.ui