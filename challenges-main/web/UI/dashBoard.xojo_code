#tag WebPage
Begin WebPage dashBoard
   AllowTabOrderWrap=   True
   Compatibility   =   ""
   ControlID       =   ""
   Enabled         =   False
   Height          =   860
   ImplicitInstance=   True
   Index           =   -2147483648
   Indicator       =   0
   IsImplicitInstance=   False
   LayoutDirection =   0
   LayoutType      =   0
   Left            =   0
   LockBottom      =   False
   LockHorizontal  =   False
   LockLeft        =   True
   LockRight       =   False
   LockTop         =   True
   LockVertical    =   False
   MinimumHeight   =   400
   MinimumWidth    =   600
   TabIndex        =   0
   Title           =   "Challenges - Dashboard"
   Top             =   0
   Visible         =   True
   Width           =   1200
   _ImplicitInstance=   False
   _mDesignHeight  =   0
   _mDesignWidth   =   0
   _mPanelIndex    =   -1
   Begin login login1
      ControlID       =   ""
      Enabled         =   True
      Height          =   200
      Index           =   -2147483648
      Indicator       =   0
      LayoutDirection =   0
      LayoutType      =   0
      Left            =   790
      LockBottom      =   False
      LockedInPosition=   False
      LockHorizontal  =   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      LockVertical    =   False
      Scope           =   0
      ScrollDirection =   0
      TabIndex        =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   63
      Visible         =   True
      Width           =   400
      _mDesignHeight  =   0
      _mDesignWidth   =   0
      _mPanelIndex    =   -1
   End
   Begin WebToolbar Toolbar1
      ControlID       =   ""
      Enabled         =   True
      FullWidth       =   False
      Height          =   56
      Index           =   -2147483648
      Indicator       =   0
      Left            =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockHorizontal  =   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      LockVertical    =   False
      Position        =   0
      Scope           =   0
      TabIndex        =   1
      TabStop         =   True
      Title           =   ""
      Tooltip         =   ""
      Top             =   0
      Visible         =   True
      Width           =   1200
      _mPanelIndex    =   -1
   End
   Begin chartContainer chartContainer1
      ControlID       =   ""
      Enabled         =   True
      Height          =   340
      Index           =   -2147483648
      Indicator       =   0
      LayoutDirection =   0
      LayoutType      =   0
      Left            =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockHorizontal  =   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      LockVertical    =   False
      Scope           =   0
      ScrollDirection =   0
      TabIndex        =   3
      TabStop         =   True
      Tooltip         =   ""
      Top             =   283
      Visible         =   True
      Width           =   1190
      _mDesignHeight  =   0
      _mDesignWidth   =   0
      _mPanelIndex    =   -1
   End
   Begin WebRectangle Rectangle1
      BackgroundColor =   &cFFFFFF00
      ControlID       =   ""
      Enabled         =   True
      HasBackgroundColor=   False
      Height          =   200
      Index           =   -2147483648
      Indicator       =   ""
      LayoutDirection =   0
      LayoutType      =   0
      Left            =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockHorizontal  =   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      LockVertical    =   False
      Scope           =   0
      TabIndex        =   4
      TabStop         =   True
      Tooltip         =   ""
      Top             =   63
      Visible         =   True
      Width           =   782
      _mDesignHeight  =   0
      _mDesignWidth   =   0
      _mPanelIndex    =   -1
   End
End
#tag EndWebPage

#tag WindowCode
	#tag Event
		Sub Opening()
		  'me.Style.value("background-image") = "url(https://s3.eu-west-2.amazonaws.com/com.emirateshr.live.storage/businessassets/1007/backgroundimages/1557728303492.jpeg)"
		  'me.Style.value("background-size") = "cover"
		  'me.Style.Value("background-position") = "center top"
		  'me.Style.Value("background-repeat") = "no-repeat"
		  me.Style.BackgroundColor=background
		End Sub
	#tag EndEvent


#tag EndWindowCode

#tag Events Toolbar1
	#tag Event
		Sub Pressed(Item as WebToolbarButton)
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub Opening()
		  dim players as new WebToolbarButton
		  dim teams as new WebToolbarButton
		  dim challenges as new WebToolbarButton
		  dim options as new WebToolbarButton
		  players.icon = user
		  players.Caption = "Players"
		  players.Tooltip = "Manage Players and Users"
		  '
		  teams.icon = customers
		  teams.Caption = "Teams"
		  teams.Tooltip = "Manage Players and Users"
		  '
		  challenges.icon = fitnesschallenge
		  challenges.Caption = "Challenges"
		  challenges.Tooltip = "Manage Players and Users"
		  '
		  options.icon = optionsIcn
		  options.Caption = "Settings"
		  options.Tooltip = "Manage Players and Users"
		  me.AddItem(players)
		  me.AddItem(teams)
		  me.AddItem(challenges)
		  me.AddItem(options)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Rectangle1
	#tag Event
		Sub Opening()
		  me.Style.value("background-image") = "url(https://s3.eu-west-2.amazonaws.com/com.emirateshr.live.storage/businessassets/1007/backgroundimages/1557728303492.jpeg)"
		  me.Style.value("background-size") = "cover"
		  me.Style.Value("background-position") = "center"
		  me.Style.Value("background-repeat") = "no-repeat"
		  me.style.Value("height") ="200px"
		  me.style.value("background-color") = "#cccccc"
		  
		End Sub
	#tag EndEvent
#tag EndEvents
