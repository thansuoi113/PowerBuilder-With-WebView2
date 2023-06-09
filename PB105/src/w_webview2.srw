$PBExportHeader$w_webview2.srw
forward
global type w_webview2 from window
end type
type cb_2 from commandbutton within w_webview2
end type
type cb_executescriptsync from commandbutton within w_webview2
end type
type cb_new from commandbutton within w_webview2
end type
type pb_1 from picturebutton within w_webview2
end type
type sle_documenttitle from singlelineedit within w_webview2
end type
type cb_goback from commandbutton within w_webview2
end type
type cb_goforward from commandbutton within w_webview2
end type
type cb_exec1 from commandbutton within w_webview2
end type
type mle_statustext from multilineedit within w_webview2
end type
type sle_url from singlelineedit within w_webview2
end type
type cb_navigate from commandbutton within w_webview2
end type
type uo_webview2 from ux_webview2 within w_webview2
end type
end forward

global type w_webview2 from window
integer width = 4160
integer height = 1932
boolean titlebar = true
string title = "PowerBuilder WebView2 "
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
long backcolor = 67108864
string icon = "AppIcon!"
boolean center = true
cb_2 cb_2
cb_executescriptsync cb_executescriptsync
cb_new cb_new
pb_1 pb_1
sle_documenttitle sle_documenttitle
cb_goback cb_goback
cb_goforward cb_goforward
cb_exec1 cb_exec1
mle_statustext mle_statustext
sle_url sle_url
cb_navigate cb_navigate
uo_webview2 uo_webview2
end type
global w_webview2 w_webview2

type variables
longlong ill_callerID = 0
end variables

forward prototypes
public subroutine of_msg (string as_msg)
public subroutine of_yield ()
end prototypes

public subroutine of_msg (string as_msg);mle_statustext.Event ue_add ( as_msg )

end subroutine

public subroutine of_yield ();//unv_yield lnv_yield 

//lnv_yield = CREATE unv_yield
//lnv_yield.of_yield(Handle(uo_webview2))

//DESTROY( lnv_yield)

Return

end subroutine

on w_webview2.create
this.cb_2=create cb_2
this.cb_executescriptsync=create cb_executescriptsync
this.cb_new=create cb_new
this.pb_1=create pb_1
this.sle_documenttitle=create sle_documenttitle
this.cb_goback=create cb_goback
this.cb_goforward=create cb_goforward
this.cb_exec1=create cb_exec1
this.mle_statustext=create mle_statustext
this.sle_url=create sle_url
this.cb_navigate=create cb_navigate
this.uo_webview2=create uo_webview2
this.Control[]={this.cb_2,&
this.cb_executescriptsync,&
this.cb_new,&
this.pb_1,&
this.sle_documenttitle,&
this.cb_goback,&
this.cb_goforward,&
this.cb_exec1,&
this.mle_statustext,&
this.sle_url,&
this.cb_navigate,&
this.uo_webview2}
end on

on w_webview2.destroy
destroy(this.cb_2)
destroy(this.cb_executescriptsync)
destroy(this.cb_new)
destroy(this.pb_1)
destroy(this.sle_documenttitle)
destroy(this.cb_goback)
destroy(this.cb_goforward)
destroy(this.cb_exec1)
destroy(this.mle_statustext)
destroy(this.sle_url)
destroy(this.cb_navigate)
destroy(this.uo_webview2)
end on

event resize;uo_webview2.Resize(This.WorkSpaceWidth() - ( uo_webview2.X + 30 ),This.WorkSpaceHeight()-( uo_webview2.Y + 50 ) )
sle_documenttitle.Width =  This.WorkSpaceWidth() - ( sle_documenttitle.X + 30 )
cb_new.X = This.WorkSpaceWidth() - ( cb_new.Width + 30 )
mle_statustext.Height = This.WorkSpaceHeight()-( mle_statustext.Y + 50 )

end event

type cb_2 from commandbutton within w_webview2
integer x = 37
integer y = 444
integer width = 951
integer height = 112
integer taborder = 40
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "getVersion"
end type

event clicked;String ls_result
ls_result = uo_webview2.getBrowserVersionString()
of_msg ( "Version:" + ls_result)


end event

type cb_executescriptsync from commandbutton within w_webview2
integer x = 37
integer y = 320
integer width = 951
integer height = 96
integer taborder = 20
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Test ExecuteScriptSync"
end type

event clicked;Int  li_ret
String ls_result
ill_callerID ++
li_ret = uo_webview2.ExecuteScriptSync (ill_callerID ,  "String( 4 + 1)" , ls_result)
of_msg ( String(ill_callerID) + ":" + String (li_ret) + ":" + ls_result)

ill_callerID ++
li_ret = uo_webview2.ExecuteScriptSync (ill_callerID ,  "String( 4 * 13)", ls_result)
of_msg ( String(ill_callerID) + ":" + String (li_ret) + ":" + ls_result)

ill_callerID ++
li_ret = uo_webview2.ExecuteScriptSync (ill_callerID , "(new Date()).getTime();", ls_result)
of_msg ( String(ill_callerID) + ":" + String (li_ret) + ":" + ls_result)

ill_callerID ++
li_ret = uo_webview2.ExecuteScriptSync (ill_callerID , "new Array(123, new Date(), 'Appeon', 2 > 1)", ls_result)
of_msg ( String(ill_callerID) + ":" + String (li_ret) + ":" + ls_result)

ill_callerID ++
li_ret = uo_webview2.ExecuteScriptSync (ill_callerID , 'window.chrome.webview.postMessage("GetWindowBounds");', ls_result)
of_msg ( String(ill_callerID) + ":" + String (li_ret) + ":" + ls_result)

ill_callerID ++
li_ret = uo_webview2.ExecuteScriptSync (ill_callerID , 'windw.chrome.webview.postMessage("GendowBounds");', ls_result)
of_msg ( String(ill_callerID) + ":" + String (li_ret) + ":" + ls_result)


end event

type cb_new from commandbutton within w_webview2
integer x = 3977
integer y = 32
integer width = 119
integer height = 112
integer taborder = 40
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "+"
end type

event clicked;window lw_a
Open (lw_a, "w_webview2")

end event

type pb_1 from picturebutton within w_webview2
integer x = 2555
integer y = 32
integer width = 137
integer height = 116
integer taborder = 30
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string picturename = "Update5!"
alignment htextalign = left!
end type

event clicked;uo_webview2.reload()
end event

type sle_documenttitle from singlelineedit within w_webview2
integer x = 1038
integer y = 184
integer width = 3058
integer height = 112
integer taborder = 30
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
boolean displayonly = true
borderstyle borderstyle = stylelowered!
end type

type cb_goback from commandbutton within w_webview2
integer x = 2313
integer y = 32
integer width = 101
integer height = 112
integer taborder = 20
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
boolean enabled = false
string text = "<"
end type

event clicked;uo_webview2.goback()

end event

type cb_goforward from commandbutton within w_webview2
integer x = 2432
integer y = 32
integer width = 101
integer height = 112
integer taborder = 20
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
boolean enabled = false
string text = ">"
end type

event clicked;uo_webview2.goForward()
end event

type cb_exec1 from commandbutton within w_webview2
integer x = 37
integer y = 184
integer width = 951
integer height = 112
integer taborder = 20
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Test ExecuteScript"
end type

event clicked;Int  li_ret
ill_callerID ++
li_ret = uo_webview2.ExecuteScript2 (ill_callerID ,  "String( 4 + 1)")
of_msg ( String(ill_callerID) + ":" + String (li_ret))

ill_callerID ++
li_ret = uo_webview2.ExecuteScript2 (ill_callerID ,  "String( 4 * 13)")
of_msg ( String(ill_callerID) + ":" + String (li_ret))

ill_callerID ++
li_ret = uo_webview2.ExecuteScript2 (ill_callerID , "(new Date()).getTime();")
of_msg ( String(ill_callerID) + ":" + String (li_ret))

ill_callerID ++
li_ret = uo_webview2.ExecuteScript2 (ill_callerID , "new Array(123, new Date(), 'Appeon', 2 > 1)")
of_msg ( String(ill_callerID) + ":" + String (li_ret))


ill_callerID ++
li_ret = uo_webview2.ExecuteScript2 (ill_callerID , "ne Aaray(123, new Date(), 'Appeon', 2 > X)")
of_msg ( String(ill_callerID) + ":" + String (li_ret))



end event

type mle_statustext from multilineedit within w_webview2
event ue_add ( string as_msg )
integer x = 37
integer y = 576
integer width = 951
integer height = 1216
integer taborder = 20
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
borderstyle borderstyle = stylelowered!
end type

event ue_add(string as_msg);This.Text = as_msg + "~r~n" + This.Text

end event

type sle_url from singlelineedit within w_webview2
integer x = 37
integer y = 32
integer width = 1847
integer height = 100
integer taborder = 20
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
string text = "https://pblib.com"
borderstyle borderstyle = stylelowered!
end type

event constructor;//this.text = 'file://D:\asc\PBNI\html\Example1.html'
end event

type cb_navigate from commandbutton within w_webview2
integer x = 1915
integer y = 32
integer width = 329
integer height = 104
integer taborder = 10
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Navigate"
end type

event clicked;Integer li_rc
of_msg ( "Fct: Call Navigate()")
li_rc = uo_webview2.Navigate( sle_url.Text)
of_msg ( "Fct: Navigate() returned:" + String (li_rc))

end event

type uo_webview2 from ux_webview2 within w_webview2
integer x = 1038
integer y = 320
integer width = 3058
integer height = 1464
integer taborder = 10
boolean border = true
borderstyle borderstyle = stylelowered!
end type

on uo_webview2.destroy
call ux_webview2::destroy
end on

event ondoubleclick;call super::ondoubleclick;MessageBox("DoubleClicked!","")
Return 1

end event

event webmessagereceived;call super::webmessagereceived;of_msg(msg)
of_msg(Data)
Return 1

end event

event executescriptresult;call super::executescriptresult;of_msg(scriptresult)
Return 1

end event

event documenttitlechanged;call super::documenttitlechanged;sle_documenttitle.Text = Title
Return 1

end event

event sourcechanged;call super::sourcechanged;of_msg ("Evt: SourceChanged")
sle_url.Text = uri
cb_goback.Enabled = This.CanGoBack()
cb_goforward.Enabled = This.CanGoForward()
Return 0

end event

event navigationstarting;call super::navigationstarting;Post of_msg("Evt: NavigationStarting")
Return 1

end event

event navigationcompleted;call super::navigationcompleted;
of_msg("Evt: NavigationCompleted " + String (success) + " - " + String (weberrorstatus))
sle_documenttitle.Text = This.DocumentTitle()
Return 1


end event

event constructor;call super::constructor;
Integer li_rc

of_msg ( "Fct: Call createwebview2()")
li_rc = CreateWebView('{&
	"userDataFolder": "" ,~r~n&
	"browserExecutableFolder" : "" ,  ~r~n &
	"environmentOptions" : "" ~r~n&
	}')
of_msg ( "Fct: createwebview2 () returned:" + String (li_rc))



end event

event executescript2result;call super::executescript2result;of_msg(String(callerid) + ":" + scriptresult)
Return 1

end event

event onclick;call super::onclick;//MessageBox("TEST","TEST")
Return 1


end event

