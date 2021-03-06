﻿Imports Microsoft.VisualBasic
#Region "#usinghelper"
Imports DevExpress.Web.ASPxScheduler
Imports DevExpress.XtraScheduler
#End Region ' #usinghelper
Imports System
Imports System.Collections.Generic
Imports System.Linq
Imports System.Web

#Region "#fillresources"
Public Class ResourceHelper
	Public Shared Users() As String = { "Sarah Brighton", "Ryan Fischer", "Andrew Miller" }
	Public Shared Usernames() As String = { "sbrighton", "rfischer", "amiller" }

	Public Shared Sub FillObjectDataSourceWithResources(ByVal list As CustomResourceList, ByVal count As Integer)
			For i As Integer = 1 To count
				list.Add(New CustomResource(Usernames(i-1), Users(i - 1)))
			Next i
	End Sub
End Class
#End Region ' #fillresources