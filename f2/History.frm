VERSION 5.00
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "COMDLG32.OCX"
Begin VB.Form History 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "История командъ"
   ClientHeight    =   4890
   ClientLeft      =   4050
   ClientTop       =   7695
   ClientWidth     =   5520
   BeginProperty Font 
      Name            =   "MS Serif"
      Size            =   6.75
      Charset         =   204
      Weight          =   400
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   4890
   ScaleWidth      =   5520
   ShowInTaskbar   =   0   'False
   Begin MSComDlg.CommonDialog ComDialog 
      Left            =   2160
      Top             =   4080
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
      CancelError     =   -1  'True
   End
   Begin VB.TextBox txtHist 
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   9.75
         Charset         =   204
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   3495
      Left            =   120
      Locked          =   -1  'True
      MultiLine       =   -1  'True
      ScrollBars      =   2  'Vertical
      TabIndex        =   2
      Top             =   120
      Width           =   5295
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Отчистить лог"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   204
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   2880
      TabIndex        =   1
      Top             =   4200
      Width           =   1455
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Сохранить как..."
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   204
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   240
      TabIndex        =   0
      Top             =   4200
      Width           =   1575
   End
End
Attribute VB_Name = "History"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub Command1_Click()
Dim fn As String
On Error GoTo ErrHandler
ComDialog.Filter = "Всё файло(*.*)|*.*|Чисто текст(*.txt)|*.txt"
ComDialog.FilterIndex = 2
ComDialog.ShowSave
fn = ComDialog.filename
If FileExist(fn) = True Then
If MsgBox("Файл уже существует, перезписать?", vbOKCancel, "Сохранение файла") = vbCancel _
Then Exit Sub
End If

Dim Txt As String
Txt = txtHist.Text
Open fn For Output As 3
Print #3, Txt
Close 3
ErrHandler:
Exit Sub
End Sub

Private Sub Command2_Click()
History.txtHist = "ПЛ" + Chr(9) + "ТЛ" + Chr(9) + "Люкс" + Chr(9) + "УМ" + Chr(9) + "М" + Chr(9) + "шт" + vbCrLf
End Sub

Private Sub Form_Load()
History.txtHist = "ПЛ" + Chr(9) + "ТЛ" + Chr(9) + "Люкс" + Chr(9) + "УМ" + Chr(9) + "М" + Chr(9) + "шт" + vbCrLf
End Sub

