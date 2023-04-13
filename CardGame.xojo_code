#tag Module
Protected Module CardGame
	#tag Method, Flags = &h0
		Sub AddNewCardInRandomPosition()
		  Var icons() As String = Array("♥️", "♦️", "♣️", "♠️")
		  Var number As Integer = System.Random.InRange(1, 10)
		  Var icon As String = icons(System.Random.InRange(0, icons.LastIndex))
		  
		  Var card As New CardGame.Card
		  card.Top = System.Random.InRange(0, 100)
		  card.Left = System.Random.InRange(0, 100)
		  card.Symbol = number.ToString + " " + icon 
		  
		  CardGame.Cards.Add(card)
		  
		  App.UpdateSessions
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		Cards() As CardGame.Card
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Cards()"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Module
#tag EndModule
