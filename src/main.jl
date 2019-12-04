using GageCompuscope
using Signals
using Interact
using WGLMakie, AbstractPlotting
using Blink
using NamedTupleTools
using Interact: hbox, vbox, vline, hline, pad
gage = GageCard();

win = Window();
WGLMakie.activate!()
AbstractPlotting.inline!() = false
set_theme!(resolution = (650, 650))
p1 = scatter(rand(4));
Acq = gage.acquisition_config

#-------------------------------------------------------------------------------
# Acquistion Configuation.
#-------------------------------------------------------------------------------
srate = spinbox(Acq.SampleRate; label = "𝑓ₛ");
segsz = spinbox(Acq.SegmentSize; label = "Segment Size");
nseg = spinbox(Acq.SegmentCount; label = "Segment Count");

acq_ctl = vbox(padinner.(1em, [srate, segsz, nseg]))

#-------------------------------------------------------------------------------
# Channel 1
#-------------------------------------------------------------------------------
_c1 = ntfromstruct(gage.channel_config[1])
c1 = map(propertynames(_c1), fieldvalues(_c1)) do nm, v
  spinbox(v; label = string(nm))
end

c1Ctl = vbox(padinner.(1em, [c1...]))

#-------------------------------------------------------------------------------
# Channel 2
#-------------------------------------------------------------------------------
_c2 = ntfromstruct(gage.channel_config[2])
c2 = map(propertynames(_c2), fieldvalues(_c2)) do nm, v
  spinbox(v; label = string(nm))
end

c2Ctl = vbox(padinner.(1em, [c2...]))









body!(win, hbox(acq_ctl, vline(), c1Ctl, c2Ctl, vline()));
