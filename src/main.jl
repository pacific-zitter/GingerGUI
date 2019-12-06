using GageCompuscope
using Interact
using Blink
using NamedTupleTools
using Interact: hbox, vbox, vline, hline, pad
gage = GageCard();

win = Window();

oAcq = Observable(gage.acquisition_config)
oCh1 = Observable(gage.channel_config[1])
oCh2 = Observable(gage.channel_config[2])


Acq=gage.acquisition_config
#-------------------------------------------------------------------------------
# Acquistion Configuation.
#-------------------------------------------------------------------------------

#-------------------------------------------------------------------------------
# Channel 1
#-------------------------------------------------------------------------------


#-------------------------------------------------------------------------------
# Channel 2
#-------------------------------------------------------------------------------







body!(win, hbox(acq_ctl, vline(), c1Ctl, c2Ctl, vline()));
