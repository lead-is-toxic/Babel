## Set placeholder values for the base of the page
data modify storage babel:temp root.elements set value [[\
    {\
        "text": "background",\
        "font": "foo:bar",\
        "shadow_color": [0, 0, 0, 0]\
    },\
    "\n",\
    {\
        "text": "previous_button",\
        "font": "foo:bar",\
        "shadow_color": [0, 0, 0, 0],\
        "hover_event": {\
            "action": "show_text",\
            "value": {"translate": "ui.babel.previous"}\
        },\
        "click_event": {\
            "action": "run_command",\
            "command": "trigger babel.trigger set -1"\
        }\
    },\
    {\
        "text": "exit_button",\
        "font": "foo:bar",\
        "shadow_color": [0, 0, 0, 0],\
        "hover_event": {\
            "action": "show_text",\
            "value": {"translate": "mco.selectServer.close"}\
        },\
        "click_event": {\
            "action": "run_command",\
            "command": "trigger babel.trigger set -3"\
        }\
    },\
    {\
        "text": "previous_button",\
        "font": "foo:bar",\
        "shadow_color": [0, 0, 0, 0],\
        "hover_event": {\
            "action": "show_text",\
            "value": {"translate": "ui.babel.next"}\
        },\
        "click_event": {\
            "action": "run_command",\
            "command": "trigger babel.trigger set -2"\
        }\
    }\
    ]]

## Set values from the wiki that is being rendered
data modify storage babel:temp root.elements[0][0].text set from storage babel:temp root.wiki.elements.background.character
data modify storage babel:temp root.elements[0][0].font set from storage babel:temp root.wiki.fonts.ui

data modify storage babel:temp root.elements[0][2].text set from storage babel:temp root.wiki.elements.previous_button.character
data modify storage babel:temp root.elements[0][2].font set from storage babel:temp root.wiki.fonts.ui

data modify storage babel:temp root.elements[0][3].text set from storage babel:temp root.wiki.elements.close_button.character
data modify storage babel:temp root.elements[0][3].font set from storage babel:temp root.wiki.fonts.ui

data modify storage babel:temp root.elements[0][4].text set from storage babel:temp root.wiki.elements.next_button.character
data modify storage babel:temp root.elements[0][4].font set from storage babel:temp root.wiki.fonts.ui