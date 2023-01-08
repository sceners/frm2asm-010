VERSION 5.00
Begin VB.Form Form1 
   BorderStyle     =   1  'Fest Einfach
   Caption         =   "Test Form"
   ClientHeight    =   3450
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   6990
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   3450
   ScaleWidth      =   6990
   StartUpPosition =   1  'Fenstermitte
   Begin VB.CheckBox Check1 
      Caption         =   ":-)"
      Height          =   255
      Left            =   120
      TabIndex        =   14
      Top             =   1320
      Width           =   1455
   End
   Begin VB.CheckBox Check2 
      Caption         =   ":-("
      Height          =   255
      Left            =   120
      TabIndex        =   13
      Top             =   1680
      Width           =   1455
   End
   Begin VB.CheckBox Check3 
      Caption         =   ":-D"
      Height          =   255
      Left            =   120
      TabIndex        =   12
      Top             =   2040
      Width           =   1455
   End
   Begin VB.CheckBox Check4 
      Caption         =   ":-p"
      Height          =   255
      Left            =   120
      TabIndex        =   11
      Top             =   2400
      Width           =   1455
   End
   Begin VB.ListBox List1 
      Height          =   1035
      Left            =   2040
      TabIndex        =   9
      Top             =   2280
      Width           =   1815
   End
   Begin VB.ComboBox Combo1 
      Height          =   315
      Left            =   120
      TabIndex        =   8
      Text            =   "Combo1"
      Top             =   3000
      Width           =   1815
   End
   Begin VB.OptionButton Option2 
      Caption         =   "blahblah"
      Height          =   375
      Left            =   2040
      TabIndex        =   7
      Top             =   1800
      Width           =   1815
   End
   Begin VB.OptionButton Option1 
      Caption         =   "blah"
      Height          =   375
      Left            =   2040
      TabIndex        =   6
      Top             =   1320
      Width           =   1815
   End
   Begin VB.Frame Frame1 
      Caption         =   "testframe"
      Height          =   375
      Left            =   4920
      TabIndex        =   5
      Top             =   2400
      Width           =   1815
   End
   Begin VB.CommandButton Command2 
      Caption         =   "This is a button"
      Height          =   495
      Left            =   4680
      TabIndex        =   4
      Top             =   1200
      Width           =   2175
   End
   Begin VB.CommandButton Command1 
      Caption         =   "another button"
      Height          =   495
      Left            =   4680
      TabIndex        =   3
      Top             =   1800
      Width           =   2175
   End
   Begin VB.TextBox Text3 
      Height          =   285
      Left            =   120
      TabIndex        =   2
      Text            =   "Coded by bAZiK [KomA] --> http://KomA.gulli.com"
      Top             =   840
      Width           =   6735
   End
   Begin VB.TextBox Text2 
      Height          =   285
      Left            =   120
      TabIndex        =   1
      Text            =   "for FRM2ASM Converter"
      Top             =   480
      Width           =   6735
   End
   Begin VB.TextBox Text1 
      Height          =   285
      Left            =   120
      TabIndex        =   0
      Text            =   "This is a sample VB Form"
      Top             =   120
      Width           =   6735
   End
   Begin VB.Label Label1 
      Caption         =   "bazik@x-mail.net"
      Height          =   375
      Left            =   3960
      TabIndex        =   10
      Top             =   2880
      Width           =   2895
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
