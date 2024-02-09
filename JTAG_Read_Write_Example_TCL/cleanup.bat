@echo off
rmdir qdb tmp-clearbox software DNI /s /q
rmdir .qsys_edit ip sys sandboxes /s /q
del *.rpt *.sof *.summary *.smsg *.pin *~ /s /q
del *.qsf *.qpf *.qws *.v *.sv *.sdc *.done *.qsys /s /q
del *.cdf *.sld *.qarlog *.legacy *.log *.rec /s /q
del *.json *.qdf *.xml #*# serv_req_info* /s /q
del quartus.log* quartus.rec*  /s /q
