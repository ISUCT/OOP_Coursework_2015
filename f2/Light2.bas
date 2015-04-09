Attribute VB_Name = "Module3"
Option Explicit
Sub Lister(Cmb As ComboBox, Fase As Integer, AlCu As Integer, GraIR As Integer, CmbK As ComboBox, CmbG As ComboBox, LblN As Label)
Dim Kabel As String

Select Case Fase
    Case 0 '3ôàçû
    Select Case AlCu
        Case 0 'Ìåäü
        CmbK.Clear
        CmbK.AddItem "ÏÂ"
        CmbK.AddItem "ÏÓÍÏ"
        CmbK.AddItem "ÂÂÃ"
        CmbK.Text = CmbK.List(0)
        Kabel = CmbK.Text
        Select Case Kabel
Case "ÏÂ"
        LblN.Caption = "(1 x"
        CmbG.Clear
        CmbG.AddItem "5"
        CmbG.AddItem "3"
        CmbG.Text = CmbG.List(0)
        Cmb.Clear
        Cmb.AddItem "1,5"
        Cmb.AddItem "2,5"
        Cmb.AddItem "4"
        Cmb.AddItem "6"
        Cmb.AddItem "10"
        Cmb.AddItem "16"
        Cmb.AddItem "25"
        Cmb.AddItem "35"
        Cmb.AddItem "50"
        Cmb.AddItem "70"
        Cmb.AddItem "95"
        'Cmb.AddItem "120"
        
        Cmb.Text = Cmb.List(0)
Case "ÏÓÍÏ"
        CmbG.Clear
        CmbG.AddItem "1"
        CmbG.Text = CmbG.List(0)
        Cmb.Clear
        Cmb.AddItem "1,5"
        Cmb.AddItem "2,5"
        Cmb.AddItem "4"
        Cmb.Text = Cmb.List(0)
Case "ÂÂÃ"
        CmbG.Clear
        CmbG.AddItem "1"
        CmbG.Text = CmbG.List(0)
        Cmb.Clear
        Cmb.AddItem "1,5"
        Cmb.AddItem "2,5"
        Cmb.AddItem "4"
        Cmb.AddItem "6"
        Cmb.AddItem "10"
        Cmb.AddItem "16"
        Cmb.AddItem "25"
        Cmb.AddItem "35"
        Cmb.AddItem "50"
        Cmb.AddItem "70"
        Cmb.AddItem "95"
        'Cmb.AddItem "120"
        'Cmb.AddItem "150"
        'Cmb.AddItem "185"
        Cmb.Text = Cmb.List(0)
        End Select
        Case 1 'Àëëþìèíèé
        CmbK.Clear
        CmbK.AddItem "ÀÏÂ"
        CmbK.AddItem "ÀÂÂÃ"
        CmbK.Text = CmbK.List(0)
        Kabel = CmbK.Text
        
        Select Case Kabel
Case "ÀÏÂ"
        LblN.Caption = "(1 x"
        CmbG.Clear
        CmbG.AddItem "5"
        CmbG.Text = CmbG.List(0)
        Cmb.Clear
        Cmb.AddItem "16"
        Cmb.AddItem "25"
        Cmb.AddItem "35"
        Cmb.AddItem "50"
        Cmb.AddItem "70"
        Cmb.AddItem "95"
        Cmb.AddItem "120"
        Cmb.Text = Cmb.List(0)
Case "ÀÂÂÃ"
        CmbG.Clear
        CmbG.AddItem "1"
        CmbG.Text = CmbG.List(0)
        Cmb.Clear
        Cmb.AddItem "16"
        Cmb.AddItem "25"
        Cmb.AddItem "35"
        Cmb.AddItem "50"
        Cmb.AddItem "70"
        Cmb.AddItem "95"
        Cmb.AddItem "120"
        Cmb.AddItem "150"
        Cmb.AddItem "185"
        Cmb.Text = Cmb.List(0)
        End Select
End Select

Case 1 '1 ôàçà
    
    Select Case AlCu
        Case 0
        CmbK.Clear
        CmbK.AddItem "ÏÂ"
        CmbK.AddItem "ÏÓÍÏ"
        CmbK.AddItem "ÂÂÃ"
        CmbK.Text = CmbK.List(0)
        Kabel = CmbK.Text
        Select Case Kabel
Case "ÏÂ"
        LblN.Caption = "(1 x"
        CmbG.Clear
        CmbG.AddItem "3"
        CmbG.AddItem "5"
        CmbG.Text = CmbG.List(0)
        Cmb.Clear
        Cmb.AddItem "1,5"
        Cmb.AddItem "2,5"
        Cmb.AddItem "4"
        Cmb.AddItem "6"
        Cmb.AddItem "10"
        Cmb.AddItem "16"
        'Cmb.AddItem "25"
        'Cmb.AddItem "35"
        'Cmb.AddItem "50"
        'Cmb.AddItem "70"
        'Cmb.AddItem "95"
        'Cmb.AddItem "120"
        Cmb.Text = Cmb.List(0)
Case "ÏÓÍÏ"
        CmbG.Clear
        CmbG.AddItem "1"
        CmbG.Text = CmbG.List(0)
        Cmb.Clear
        Cmb.AddItem "1,5"
        Cmb.AddItem "2,5"
        Cmb.AddItem "4"
        Cmb.Text = Cmb.List(0)
Case "ÂÂÃ"
        CmbG.Clear
        CmbG.AddItem "1"
        CmbG.Text = CmbG.List(0)
        Cmb.Clear
        Cmb.AddItem "1,5"
        Cmb.AddItem "2,5"
        Cmb.AddItem "4"
        Cmb.AddItem "6"
        Cmb.AddItem "10"
        Cmb.AddItem "16"
        'Cmb.AddItem "25"
        'Cmb.AddItem "35"
        'Cmb.AddItem "50"
        'Cmb.AddItem "70"
        'Cmb.AddItem "95"
        'Cmb.AddItem "120"
        'Cmb.AddItem "150"
        'Cmb.AddItem "185"

        Cmb.Text = Cmb.List(0)
        End Select
        Case 1
        CmbK.Clear
        CmbK.AddItem "ÀÏÂ"
        CmbK.AddItem "ÀÂÂÃ"
        CmbK.Text = CmbK.List(0)
        Kabel = CmbK.Text
        Select Case Kabel
Case "ÀÏÂ"
        LblN.Caption = "(1 x"
        CmbG.Clear
        CmbG.AddItem "5"
        CmbG.Text = CmbG.List(0)
        Cmb.Clear
        Cmb.AddItem "16"
        Cmb.AddItem "25"
        'Cmb.AddItem "35"
        'Cmb.AddItem "50"
        'Cmb.AddItem "70"
        'Cmb.AddItem "95"
        'Cmb.AddItem "120"
        Cmb.Text = Cmb.List(0)
Case "ÀÂÂÃ"
        CmbG.Clear
        CmbG.AddItem "1"
        CmbG.Text = CmbG.List(0)
        Cmb.Clear
        Cmb.AddItem "16"
        Cmb.AddItem "25"
        'Cmb.AddItem "35"
        'Cmb.AddItem "50"
        'Cmb.AddItem "70"
        'Cmb.AddItem "95"
        'Cmb.AddItem "120"
        'Cmb.AddItem "150"
        'Cmb.AddItem "185"
        Cmb.Text = Cmb.List(0)
        End Select
        
    End Select
End Select
End Sub

Sub SelD(Cmb As ComboBox, Fase As Integer, AlCu As Integer, GraIR As Integer, CmbK As ComboBox, CmbG As ComboBox, LblN As Label)
Dim Kabel As String
Kabel = CmbK.Text
Select Case Fase
    Case 0 '3ôàçû
    Select Case AlCu
        Case 0 'Ìåäü
    Select Case Kabel
Case "ÏÂ"
        LblN.Caption = "(1 x"
        CmbG.Clear
        CmbG.AddItem "3"
        CmbG.AddItem "5"
        CmbG.Text = CmbG.List(0)
        Cmb.Clear
        Cmb.AddItem "1,5"
        Cmb.AddItem "2,5"
        Cmb.AddItem "4"
        Cmb.AddItem "6"
        Cmb.AddItem "10"
        Cmb.AddItem "16"
        Cmb.AddItem "25"
        Cmb.AddItem "35"
        Cmb.AddItem "50"
        Cmb.AddItem "70"
        Cmb.AddItem "95"
        'Cmb.AddItem "120"
        Cmb.Text = Cmb.List(0)
        
Case "ÏÓÍÏ"
        LblN.Caption = "(3 x"
        CmbG.Clear
        CmbG.AddItem "1"
        CmbG.Text = CmbG.List(0)
        Cmb.Clear
        Cmb.AddItem "1,5"
        Cmb.AddItem "2,5"
        Cmb.AddItem "4"
        Cmb.Text = Cmb.List(0)
Case "ÂÂÃ"
        LblN.Caption = "(4 x"
        CmbG.Clear
        CmbG.AddItem "1"
        CmbG.Text = CmbG.List(0)
        Cmb.Clear
        Cmb.AddItem "1,5"
        Cmb.AddItem "2,5"
        Cmb.AddItem "4"
        Cmb.AddItem "6"
        Cmb.AddItem "10"
        Cmb.AddItem "16"
        Cmb.AddItem "25"
        Cmb.AddItem "35"
        Cmb.AddItem "50"
        Cmb.AddItem "70"
        Cmb.AddItem "95"
        'Cmb.AddItem "120"
        'Cmb.AddItem "150"
        'Cmb.AddItem "185"
        Cmb.Text = Cmb.List(0)
        End Select
        Case 1 'Àëëþìèíèé
    Select Case Kabel
Case "ÀÏÂ"
        LblN.Caption = "(1 x"
        CmbG.Clear
        CmbG.AddItem "5"
        CmbG.Text = CmbG.List(0)
        Cmb.Clear
        Cmb.AddItem "16"
        Cmb.AddItem "25"
        Cmb.AddItem "35"
        Cmb.AddItem "50"
        Cmb.AddItem "70"
        Cmb.AddItem "95"
        Cmb.AddItem "120"
        Cmb.Text = Cmb.List(0)
Case "ÀÂÂÃ"
        LblN.Caption = "(4 x"
        CmbG.Clear
        CmbG.AddItem "1"
        CmbG.Text = CmbG.List(0)
        Cmb.Clear
        Cmb.AddItem "16"
        Cmb.AddItem "25"
        Cmb.AddItem "35"
        Cmb.AddItem "50"
        Cmb.AddItem "70"
        Cmb.AddItem "95"
        Cmb.AddItem "120"
        Cmb.AddItem "150"
        Cmb.AddItem "185"
        Cmb.Text = Cmb.List(0)
        End Select
End Select

Case 1 '1 ôàçà
    
    Select Case AlCu
        Case 0
    Select Case Kabel
Case "ÏÂ"
        LblN.Caption = "(1 x"
        CmbG.Clear
        CmbG.AddItem "3"
        CmbG.AddItem "5"
        CmbG.Text = CmbG.List(0)
        Cmb.Clear
        Cmb.AddItem "1,5"
        Cmb.AddItem "2,5"
        Cmb.AddItem "4"
        Cmb.AddItem "6"
        Cmb.AddItem "10"
        Cmb.AddItem "16"
        'Cmb.AddItem "25"
        'Cmb.AddItem "35"
        'Cmb.AddItem "50"
        'Cmb.AddItem "70"
        'Cmb.AddItem "95"
        'Cmb.AddItem "120"
        
        Cmb.Text = Cmb.List(0)
Case "ÏÓÍÏ"
        LblN.Caption = "(3 x"
        CmbG.Clear
        CmbG.AddItem "1"
        CmbG.Text = CmbG.List(0)
        Cmb.Clear
        Cmb.AddItem "1,5"
        Cmb.AddItem "2,5"
        Cmb.AddItem "4"
        Cmb.Text = Cmb.List(0)
Case "ÂÂÃ"
        LblN.Caption = "(4 x"
        CmbG.Clear
        CmbG.AddItem "1"
        CmbG.Text = CmbG.List(0)
        Cmb.Clear
        Cmb.AddItem "1,5"
        Cmb.AddItem "2,5"
        Cmb.AddItem "4"
        Cmb.AddItem "6"
        Cmb.AddItem "10"
        Cmb.AddItem "16"
        'Cmb.AddItem "25"
        'Cmb.AddItem "35"
        'Cmb.AddItem "50"
        'Cmb.AddItem "70"
        'Cmb.AddItem "95"
        'Cmb.AddItem "120"
        'Cmb.AddItem "150"
        'Cmb.AddItem "185"
        Cmb.Text = Cmb.List(0)
        End Select
        Case 1
        Cmb.Clear
        Select Case Kabel
Case "ÀÏÂ"
        LblN.Caption = "(1 x"
        CmbG.Clear
        CmbG.AddItem "5"
        CmbG.Text = CmbG.List(0)
        Cmb.AddItem "16"
        Cmb.AddItem "25"
        'Cmb.AddItem "35"
        'Cmb.AddItem "50"
        'Cmb.AddItem "70"
        'Cmb.AddItem "95"
        'Cmb.AddItem "120"
        Cmb.Text = Cmb.List(0)
Case "ÀÂÂÃ"
        LblN.Caption = "(4 x"
        CmbG.Clear
        CmbG.AddItem "1"
        CmbG.Text = CmbG.List(0)
        Cmb.AddItem "16"
        Cmb.AddItem "25"
        'Cmb.AddItem "35"
        'Cmb.AddItem "50"
        'Cmb.AddItem "70"
        'Cmb.AddItem "95"
        'Cmb.AddItem "120"
        'Cmb.AddItem "150"
        'Cmb.AddItem "185"
        Cmb.Text = Cmb.List(0)
        End Select
    End Select
End Select

End Sub
