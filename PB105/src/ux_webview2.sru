$PBExportHeader$ux_webview2.sru
forward
global type ux_webview2 from userobject
end type
end forward

global type ux_webview2 from userobject native "pbwebview2.pbx"
public subroutine  setdefaultuUrl(string defaultURL)
public function  string getDefaultUrl()
event type  int onclick()
event type  int ondoubleclick()
public function  string getBrowserVersionString()
public function  boolean CanGoBack()
public function  boolean CanGoForward()
public function  int CreateWebView(string config_JSON)
public function  string DocumentTitle()
public function  int Navigate(string uri)
public function  int NavigateEx(string uri, string method, string headers, string postdata)
public function  int NavigateToString(string htmlContent)
public function  int Reload()
public function  int Stop()
public function  int GoBack()
public function  int GoForward()
public function  int ExecuteScript(string executeScript)
public function  int ExecuteScript2(longlong callerID, string executeScript)
public function  int ExecuteScriptSync(longlong callerID, string executeScript, ref string result)
event type  int DocumentTitleChanged(string titleapp)
event type  int ExecuteScriptResult(string scriptresult)
event type  int ExecuteScript2Result(longlong callerID, string scriptResult)
event type  int NavigationStarting()
event type  int NavigationCompleted(boolean success, int webErrorStatus)
event type  int SourceChanged(string uri)
event type  int WebMessageReceived(string msg, string data)
integer width = 400
integer height = 200
end type
global ux_webview2 ux_webview2

on ux_webview2.create
call super::create
TriggerEvent( this, "constructor" )
end on

on ux_webview2.destroy
TriggerEvent( this, "destructor" )
call super::destroy
end on

