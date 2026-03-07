---
description: convert elementor component
---
Put the file here: `.ai-core/project-resources/{project-name}/elementor-components/`

I want to convert this component to elementor json so that I can import it inside elementor  and edit inside elementor.

**Rule**
- Elementor have two layout rule Section + Columns layout and Container layout. Don't use Section + Columns layout. Always use Container layout.


An example of elementor component with container layout- 

```json
{
  "version": "0.4",
  "title": "Hero Section",
  "type": "page",
  "author": "Elementor",
  "page_settings": {},
  "content": [
    {
      "id": "hero001",
      "elType": "container",
      "settings": {
        "content_width": "boxed",
        "boxed_width": {
          "unit": "px",
          "size": 1280,
          "sizes": []
        },
        "flex_direction": "column",
        "flex_align_items": "center",
        "flex_justify_content": "center",
        "padding": {
          "unit": "px",
          "top": "128",
          "right": "32",
          "bottom": "128",
          "left": "32",
          "isLinked": false
        },
        "padding_tablet": {
          "unit": "px",
          "top": "96",
          "right": "24",
          "bottom": "96",
          "left": "24",
          "isLinked": false
        },
        "padding_mobile": {
          "unit": "px",
          "top": "64",
          "right": "16",
          "bottom": "64",
          "left": "16",
          "isLinked": false
        },
        "margin": {
          "unit": "px",
          "top": "0",
          "right": "0",
          "bottom": "0",
          "left": "0",
          "isLinked": false
        },
        "background_background": "gradient",
        "background_color": "#ffffff",
        "background_color_b": "rgba(255,241,242,0.3)",
        "background_gradient_angle": {
          "unit": "deg",
          "size": 180,
          "sizes": []
        },
        "flex_gap": {
          "column": "0",
          "row": "0",
          "isLinked": true,
          "unit": "px",
          "size": 0
        }
      },
      "elements": [
        {
          "id": "hero002",
          "elType": "container",
          "settings": {
            "content_width": "full",
            "flex_direction": "row",
            "flex_direction_tablet": "column",
            "flex_align_items": "center",
            "flex_justify_content": "center",
            "flex_gap": {
              "column": "64",
              "row": "64",
              "isLinked": true,
              "unit": "px",
              "size": 64
            },
            "flex_gap_tablet": {
              "column": "48",
              "row": "48",
              "isLinked": true,
              "unit": "px",
              "size": 48
            },
            "flex_gap_mobile": {
              "column": "32",
              "row": "32",
              "isLinked": true,
              "unit": "px",
              "size": 32
            },
            "padding": {
              "unit": "px",
              "top": "0",
              "right": "0",
              "bottom": "0",
              "left": "0",
              "isLinked": false
            },
            "width": {
              "unit": "%",
              "size": 100,
              "sizes": []
            }
          },
          "elements": [
            {
              "id": "hero003",
              "elType": "container",
              "settings": {
                "content_width": "full",
                "flex_direction": "column",
                "flex_align_items": "flex-start",
                "flex_align_items_tablet": "center",
                "flex_align_items_mobile": "center",
                "flex_gap": {
                  "column": "32",
                  "row": "32",
                  "isLinked": true,
                  "unit": "px",
                  "size": 32
                },
                "flex_gap_mobile": {
                  "column": "24",
                  "row": "24",
                  "isLinked": true,
                  "unit": "px",
                  "size": 24
                },
                "width": {
                  "unit": "%",
                  "size": 55,
                  "sizes": []
                },
                "width_tablet": {
                  "unit": "%",
                  "size": 100,
                  "sizes": []
                },
                "width_mobile": {
                  "unit": "%",
                  "size": 100,
                  "sizes": []
                },
                "padding": {
                  "unit": "px",
                  "top": "0",
                  "right": "0",
                  "bottom": "0",
                  "left": "0",
                  "isLinked": false
                }
              },
              "elements": [
                {
                  "id": "hero004",
                  "elType": "widget",
                  "settings": {
                    "title": "যেকোনো পোশাকেই ফিরে আসুক আপনার হারানো আত্মবিশ্বাস ও স্বাচ্ছন্দ্য!",
                    "header_size": "h1",
                    "align": "left",
                    "align_tablet": "center",
                    "align_mobile": "center",
                    "title_color": "#0f172a",
                    "typography_typography": "custom",
                    "typography_font_family": "Noto Serif Bengali",
                    "typography_font_size": {
                      "unit": "px",
                      "size": 60,
                      "sizes": []
                    },
                    "typography_font_size_tablet": {
                      "unit": "px",
                      "size": 48,
                      "sizes": []
                    },
                    "typography_font_size_mobile": {
                      "unit": "px",
                      "size": 30,
                      "sizes": []
                    },
                    "typography_font_weight": "700",
                    "typography_line_height": {
                      "unit": "em",
                      "size": 1.25,
                      "sizes": []
                    },
                    "_margin": {
                      "unit": "px",
                      "top": "0",
                      "right": "0",
                      "bottom": "0",
                      "left": "0",
                      "isLinked": false
                    },
                    "_padding": {
                      "unit": "px",
                      "top": "0",
                      "right": "0",
                      "bottom": "0",
                      "left": "0",
                      "isLinked": false
                    },
                    "_element_width": "inherit"
                  },
                  "elements": [],
                  "widgetType": "heading"
                },
                {
                  "id": "hero005",
                  "elType": "widget",
                  "settings": {
                    "editor": "<p>সারাদিন কোনো অস্বস্তি ছাড়াই শাড়ি বা কামিজে পান একদম পারফেক্ট লুক এবং হারানো ফিগার ফিরে পান মুহূর্তেই।</p>",
                    "align": "left",
                    "align_tablet": "center",
                    "align_mobile": "center",
                    "text_color": "#475569",
                    "typography_typography": "custom",
                    "typography_font_family": "Noto Sans Bengali",
                    "typography_font_size": {
                      "unit": "px",
                      "size": 18,
                      "sizes": []
                    },
                    "typography_font_size_tablet": {
                      "unit": "px",
                      "size": 18,
                      "sizes": []
                    },
                    "typography_font_size_mobile": {
                      "unit": "px",
                      "size": 16,
                      "sizes": []
                    },
                    "typography_font_weight": "400",
                    "typography_line_height": {
                      "unit": "em",
                      "size": 1.625,
                      "sizes": []
                    },
                    "_margin": {
                      "unit": "px",
                      "top": "0",
                      "right": "0",
                      "bottom": "0",
                      "left": "0",
                      "isLinked": false
                    },
                    "_padding": {
                      "unit": "px",
                      "top": "0",
                      "right": "0",
                      "bottom": "0",
                      "left": "0",
                      "isLinked": false
                    },
                    "_element_width": "inherit"
                  },
                  "elements": [],
                  "widgetType": "text-editor"
                },
                {
                  "id": "hero006",
                  "elType": "container",
                  "settings": {
                    "content_width": "full",
                    "flex_direction": "row",
                    "flex_wrap": "wrap",
                    "flex_justify_content": "flex-start",
                    "flex_justify_content_tablet": "center",
                    "flex_justify_content_mobile": "center",
                    "flex_gap": {
                      "column": "16",
                      "row": "16",
                      "isLinked": true,
                      "unit": "px",
                      "size": 16
                    },
                    "padding": {
                      "unit": "px",
                      "top": "0",
                      "right": "0",
                      "bottom": "0",
                      "left": "0",
                      "isLinked": false
                    }
                  },
                  "elements": [
                    {
                      "id": "hero007",
                      "elType": "widget",
                      "settings": {
                        "text": "এখনই অর্ডার করুন",
                        "link": {
                          "url": "#order",
                          "is_external": false
                        },
                        "background_color": "#f43f5e",
                        "button_text_color": "#ffffff",
                        "button_background_hover_color": "#e11d48",
                        "hover_color": "#ffffff",
                        "border_radius": {
                          "unit": "px",
                          "top": "9999",
                          "right": "9999",
                          "bottom": "9999",
                          "left": "9999",
                          "isLinked": true
                        },
                        "text_padding": {
                          "unit": "px",
                          "top": "16",
                          "right": "32",
                          "bottom": "16",
                          "left": "32",
                          "isLinked": false
                        },
                        "typography_typography": "custom",
                        "typography_font_family": "Noto Sans Bengali",
                        "typography_font_size": {
                          "unit": "px",
                          "size": 18,
                          "sizes": []
                        },
                        "typography_font_weight": "500"
                      },
                      "elements": [],
                      "widgetType": "button"
                    },
                    {
                      "id": "hero008",
                      "elType": "widget",
                      "settings": {
                        "text": "সাইজ দেখুন",
                        "link": {
                          "url": "#size-fit",
                          "is_external": false
                        },
                        "background_color": "transparent",
                        "button_text_color": "#f43f5e",
                        "button_background_hover_color": "#fff1f2",
                        "hover_color": "#f43f5e",
                        "border_border": "solid",
                        "border_width": {
                          "unit": "px",
                          "top": "2",
                          "right": "2",
                          "bottom": "2",
                          "left": "2",
                          "isLinked": true
                        },
                        "border_color": "#f43f5e",
                        "border_radius": {
                          "unit": "px",
                          "top": "9999",
                          "right": "9999",
                          "bottom": "9999",
                          "left": "9999",
                          "isLinked": true
                        },
                        "text_padding": {
                          "unit": "px",
                          "top": "16",
                          "right": "32",
                          "bottom": "16",
                          "left": "32",
                          "isLinked": false
                        },
                        "typography_typography": "custom",
                        "typography_font_family": "Noto Sans Bengali",
                        "typography_font_size": {
                          "unit": "px",
                          "size": 18,
                          "sizes": []
                        },
                        "typography_font_weight": "500"
                      },
                      "elements": [],
                      "widgetType": "button"
                    }
                  ],
                  "isInner": true
                },
                {
                  "id": "hero009",
                  "elType": "container",
                  "settings": {
                    "content_width": "full",
                    "flex_direction": "row",
                    "flex_wrap": "wrap",
                    "flex_justify_content": "flex-start",
                    "flex_justify_content_tablet": "center",
                    "flex_justify_content_mobile": "center",
                    "flex_gap": {
                      "column": "24",
                      "row": "24",
                      "isLinked": true,
                      "unit": "px",
                      "size": 24
                    },
                    "padding": {
                      "unit": "px",
                      "top": "24",
                      "right": "0",
                      "bottom": "0",
                      "left": "0",
                      "isLinked": false
                    },
                    "border_border": "solid",
                    "border_width": {
                      "unit": "px",
                      "top": "1",
                      "right": "0",
                      "bottom": "0",
                      "left": "0",
                      "isLinked": false
                    },
                    "border_color": "#ffe4e6"
                  },
                  "elements": [
                    {
                      "id": "hero010",
                      "elType": "widget",
                      "settings": {
                        "editor": "<p>✔ ফ্রি সাইজ এক্সচেঞ্জ</p>",
                        "text_color": "#64748b",
                        "typography_typography": "custom",
                        "typography_font_family": "Noto Sans Bengali",
                        "typography_font_size": {
                          "unit": "px",
                          "size": 14,
                          "sizes": []
                        },
                        "typography_font_weight": "500"
                      },
                      "elements": [],
                      "widgetType": "text-editor"
                    },
                    {
                      "id": "hero011",
                      "elType": "widget",
                      "settings": {
                        "editor": "<p>🚚 ক্যাশ অন ডেলিভারি</p>",
                        "text_color": "#64748b",
                        "typography_typography": "custom",
                        "typography_font_family": "Noto Sans Bengali",
                        "typography_font_size": {
                          "unit": "px",
                          "size": 14,
                          "sizes": []
                        },
                        "typography_font_weight": "500"
                      },
                      "elements": [],
                      "widgetType": "text-editor"
                    },
                    {
                      "id": "hero012",
                      "elType": "widget",
                      "settings": {
                        "editor": "<p>৳ মূল্য: ৳৬০০</p>",
                        "text_color": "#64748b",
                        "typography_typography": "custom",
                        "typography_font_family": "Noto Sans Bengali",
                        "typography_font_size": {
                          "unit": "px",
                          "size": 14,
                          "sizes": []
                        },
                        "typography_font_weight": "500"
                      },
                      "elements": [],
                      "widgetType": "text-editor"
                    }
                  ],
                  "isInner": true
                }
              ],
              "isInner": true
            },
            {
              "id": "hero013",
              "elType": "widget",
              "settings": {
                "image": {
                  "url": "/assets/hero.png",
                  "alt": "Confident Bangladeshi woman in elegant saree"
                },
                "_element_width": "initial",
                "_element_custom_width": {
                  "unit": "%",
                  "size": 45,
                  "sizes": []
                },
                "_element_custom_width_tablet": {
                  "unit": "%",
                  "size": 75,
                  "sizes": []
                },
                "_element_custom_width_mobile": {
                  "unit": "%",
                  "size": 100,
                  "sizes": []
                },
                "_flex_align_self": "center",
                "_flex_align_self_tablet": "center",
                "image_border_radius": {
                  "unit": "px",
                  "top": "24",
                  "right": "24",
                  "bottom": "24",
                  "left": "24",
                  "isLinked": true
                },
                "border_border": "solid",
                "border_width": {
                  "unit": "px",
                  "top": "4",
                  "right": "4",
                  "bottom": "4",
                  "left": "4",
                  "isLinked": true
                },
                "border_color": "#ffffff",
                "box_shadow_box_shadow_type": "yes",
                "box_shadow_box_shadow": {
                  "horizontal": 0,
                  "vertical": 20,
                  "blur": 25,
                  "spread": -5,
                  "color": "rgba(244,63,94,0.15)"
                },
                "_element_width_tablet": "initial"
              },
              "elements": [],
              "widgetType": "image"
            }
          ],
          "isInner": true
        }
      ],
      "isInner": false
    }
  ]
}
```

