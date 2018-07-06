inherit kernel-resin

# enable audio over HDMI (requested by customer)
RESIN_CONFIGS_append = " hdmi_lpe_audio"
RESIN_CONFIGS_DEPS[hdmi_lpe_audio] = " \
    CONFIG_SND_X86=m \
"
RESIN_CONFIGS[hdmi_lpe_audio] = " \
    CONFIG_HDMI_LPE_AUDIO=m \
"
