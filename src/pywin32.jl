using PyCall
win32 = pyimport_conda("win32com.client", "pywin32", "conda-forge")
genc = win32.gencache
igor = genc.EnsureDispatch("IgorPro.Application")
oo = igor._oleobj_

igor.

pycom = genc.pythoncom
using Markdown
h = genc.GetModuleForProgID("IgorPro.Application") .|> propertynames
using ElectronDisplay
ElectronDisplay.niceh = Mark
