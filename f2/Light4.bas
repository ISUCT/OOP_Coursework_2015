Attribute VB_Name = "Module5"
Option Explicit
Sub UslProh(TxtUp1 As TextBox, CmbK As ComboBox, CmbG As ComboBox, CmbPV As ComboBox, DtaUslProh As Data)
Dim q As String, StrCompare As String

q = CSng(CmbPV.Text)
q = CStr(q)
DtaUslProh.DatabaseName = App.Path & "\UslProh.mdb"
DtaUslProh.RecordSource = "Odnogil"
DtaUslProh.Refresh
Select Case CmbK
       Case "осмо"
                StrCompare = "[Sechen] =" + q
                DtaUslProh.Recordset.MoveFirst
                DtaUslProh.Recordset.FindFirst StrCompare
                TxtUp1.DataField = "3"
                TxtUp1 = TxtUp1
       Case "юоб"
                StrCompare = "[Sechen] =" + q
                DtaUslProh.Recordset.MoveFirst
                DtaUslProh.Recordset.FindFirst StrCompare
                TxtUp1.DataField = "5"
                TxtUp1 = TxtUp1
       Case "об"
                Select Case CmbG
                Case 3
                StrCompare = "[Sechen] =" + q
                DtaUslProh.Recordset.MoveFirst
                DtaUslProh.Recordset.FindFirst StrCompare
                TxtUp1.DataField = "3"
                TxtUp1 = TxtUp1
                Case Else
                StrCompare = "[Sechen] =" + q
                DtaUslProh.Recordset.MoveFirst
                DtaUslProh.Recordset.FindFirst StrCompare
                TxtUp1.DataField = "5"
                TxtUp1 = TxtUp1
                End Select
Case Else
TxtUp1 = "м/ю"
End Select
End Sub
Function Koeff_TxtK(cosphi As TextBox)
Koeff_TxtK = Sqr(3) * 380 * CSng(cosphi)
End Function

Function Interpolation(Interp1 As TextBox, Interp2 As TextBox, Interp3 As TextBox, Interp4 As TextBox, Interp5 As TextBox, Interp6 As TextBox) As Single
If Interp1 = "" Or Interp2 = "" Or Interp3 = "" Or Interp4 = "" Or Interp6 = "" Then
Interpolation = 0
Else
Interpolation = (CSng(((CSng(Interp4) - CSng(Interp6)) / (CSng(Interp3) - CSng(Interp1)))) * (CSng(Interp3) - CSng(Interp2)) + CSng(Interp6))
End If
End Function

Function FileExist(filename As String) As Boolean
        On Error Resume Next
        FileExist = Dir$(filename) <> ""
        If Err.Number <> 0 Then FileExist = False
        On Error GoTo 0
End Function


