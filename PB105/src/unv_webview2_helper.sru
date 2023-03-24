$PBExportHeader$unv_webview2_helper.sru
forward
global type unv_webview2_helper from nonvisualobject
end type
end forward

global type unv_webview2_helper from nonvisualobject autoinstantiate
end type

forward prototypes
public function integer of_createwebview2 (ux_webview2 auo_webview2)
end prototypes

public function integer of_createwebview2 (ux_webview2 auo_webview2);// TEST
Int i_test = 1

Choose Case i_test
	Case 1
		auo_webview2.CreateWebView('{&
			"userDataFolder": "" ,~r~n&
			"browserExecutableFolder" : "" ,  ~r~n &
			"environmentOptions" : "" ~r~n&
			}')
	Case 2
		
		
		// TEST
		auo_webview2.CreateWebView('{&
			"userDataFolder": Null ,~r~n&
			"XXbrowserExecutableFolder" : "D:\\asc\\PBNI\\Microsoft.WebView2.FixedVersionRuntime.87.0.664.8.x86" ,  ~r~n &
			"environmentOptions" : "" ~r~n&
			}')
		
End Choose
Return 1


end function

on unv_webview2_helper.create
call super::create
TriggerEvent( this, "constructor" )
end on

on unv_webview2_helper.destroy
TriggerEvent( this, "destructor" )
call super::destroy
end on

