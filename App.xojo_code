#tag Class
Protected Class App
Inherits WebApplication
	#tag Event
		Sub Opening(args() as String)
		  For i As Integer = 1 To 3
		    CardGame.AddNewCardInRandomPosition
		  Next
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub UpdateSessions()
		  Timer.CancelCallLater(WeakAddressOf _Update)
		  Timer.CallLater(0, WeakAddressOf _Update)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub _Update()
		  For i As Integer = 0 To Self.LastSessionIndex
		    Var s As Session = Self.SessionAt(i)
		    Var context As New WebSessionContext(s.Identifier)
		    s.Update
		  Next
		End Sub
	#tag EndMethod


	#tag ViewBehavior
	#tag EndViewBehavior
End Class
#tag EndClass
