VERSION 5.00
Begin VB.Form Help 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Помощь"
   ClientHeight    =   4665
   ClientLeft      =   5400
   ClientTop       =   7695
   ClientWidth     =   4185
   Icon            =   "Help.frx":0000
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   4665
   ScaleWidth      =   4185
   ShowInTaskbar   =   0   'False
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Height          =   195
      Left            =   240
      TabIndex        =   0
      Top             =   240
      Width           =   45
   End
End
Attribute VB_Name = "Help"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Private Sub Form_Load()
Dim Txt As String
Open App.Path & "\Help.txt" For Input As 2
Do Until EOF(2)
Input #2, Txt
Label1.Caption = Label1.Caption & Txt & Chr(13) & Chr(10)
Loop
Close 2
End Sub
