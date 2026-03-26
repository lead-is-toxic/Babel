## Set placeholder values for the base of the page
data modify storage babel:temp root.elements set value [\
    {\
        "text": "",\
        "font": "foo:bar",\
        "color": "white",\
        "shadow_color": [0, 0, 0, 0]\
    },\
   [{\
        "text": "background",\
        "font": "foo:bar",\
        "color": "white",\
        "shadow_color": [0, 0, 0, 0]\
    },\
    "\n",\
    {\
        "text": "previous_button",\
        "font": "foo:bar",\
        "color": "white",\
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
        "color": "white",\
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
        "color": "white",\
        "shadow_color": [0, 0, 0, 0],\
        "hover_event": {\
            "action": "show_text",\
            "value": {"translate": "ui.babel.next"}\
        },\
        "click_event": {\
            "action": "run_command",\
            "command": "trigger babel.trigger set -2"\
        }\
    }],\
    "\n"\
    ]

## Set values from the wiki that is being rendered
data modify storage babel:temp root.elements[0].color set from storage babel:temp root.wiki.colors.text
data modify storage babel:temp root.elements[0].shadow_color set from storage babel:temp root.wiki.colors.text_shadow
data modify storage babel:temp root.elements[0].font set from storage babel:temp root.wiki.fonts.text

data modify storage babel:temp root.elements[1][0].text set from storage babel:temp root.wiki.elements.background.character
data modify storage babel:temp root.elements[1][0].font set from storage babel:temp root.wiki.fonts.ui

data modify storage babel:temp root.elements[1][2].text set from storage babel:temp root.wiki.elements.previous_button.character
data modify storage babel:temp root.elements[1][2].font set from storage babel:temp root.wiki.fonts.ui

data modify storage babel:temp root.elements[1][3].text set from storage babel:temp root.wiki.elements.close_button.character
data modify storage babel:temp root.elements[1][3].font set from storage babel:temp root.wiki.fonts.ui

data modify storage babel:temp root.elements[1][4].text set from storage babel:temp root.wiki.elements.next_button.character
data modify storage babel:temp root.elements[1][4].font set from storage babel:temp root.wiki.fonts.ui