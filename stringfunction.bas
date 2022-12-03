Dim wrd As String
Dim x As Integer
Dim result As String




Cls

Input "enter a word", wrd
Print

Print rv$(wrd)

Function rv$ (w As String)
    Dim temp As String

    For x = Len(w) To 1 Step -1
        temp = temp + Mid$(w, x, 1)
    Next x

    rv$ = temp



End Function

