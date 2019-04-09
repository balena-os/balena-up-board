inherit kernel-resin

# HDMI audio support requested by customer
RESIN_CONFIGS_append = " hdmi_sound"
RESIN_CONFIGS[hdmi_sound] = " \
    CONFIG_SND_HDA_INTEL=m \
"
