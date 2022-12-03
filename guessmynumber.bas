Dim answer As Integer
Dim guess As Integer
Dim cnt As Integer
Dim game As String

Cls
'main game loop
Do

    'input validation
    Do
        Cls
        Color 14 'yellow

        Print "Guess my number Game:"
        Print
        Color 11 ' cyan
        Print "A) 10"
        Print "B) 100"
        Print "C) 1000"
        Color 20 ' blinking red

        Input "Please Enter a Game: ", game
        game = UCase$(game) ' make upper case


    Loop Until game = "A" Or game = "B" Or game = "C"


    '' get number based on game

    Randomize Timer

    Cls
    Color 14

    Select Case game
        Case "A"
            answer = Int(Rnd * 10) + 1
            Print "Game 1-10"

        Case "B"

            answer = Int(Rnd * 100) + 1
            Print "Game 1-100"


        Case "C"
            answer = Int(Rnd * 1000) + 1

            Print "Game 1-1000"

    End Select

    '' guess loop

    guess = 0
    cnt = 0

    Do
        Color 20
        Input "Pleas Enter a Guess: ", guess

        cnt = cnt + 1
        If guess < answer Then
            Color 11
            Print guess; "is too Low!"
        ElseIf guess > answer Then
            Color 11
            Print guess; "is too High!"
        Else
            Color 11
            Print "You guessed my number in"; cnt; "tries"
        End If

    Loop Until guess = answer


    '' play again validation

    Do
        Color 20
        Input "Play again Y/N", game
        game = UCase$(game)
    Loop Until game = "Y" Or game = "N"



Loop Until game = "N"






