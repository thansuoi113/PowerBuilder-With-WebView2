$PBExportHeader$pbwebview2.sra
$PBExportComments$Generated Application Object
forward
global type pbwebview2 from application
end type
global transaction sqlca
global dynamicdescriptionarea sqlda
global dynamicstagingarea sqlsa
global error error
global message message
end forward

global type pbwebview2 from application
string appname = "pbwebview2"
end type
global pbwebview2 pbwebview2

on pbwebview2.create
appname="pbwebview2"
message=create message
sqlca=create transaction
sqlda=create dynamicdescriptionarea
sqlsa=create dynamicstagingarea
error=create error
end on

on pbwebview2.destroy
destroy(sqlca)
destroy(sqlda)
destroy(sqlsa)
destroy(error)
destroy(message)
end on

event open;
window lw_a
Open (lw_a, "w_webview2")

end event

