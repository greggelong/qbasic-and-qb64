# qbasic-and-qb64
a place to hold some code while playing with qbasic and qb64


## polarGraph and polarGraphHigh

This is a simple graphic visualization of modular multiplication using polar to cartesian coordinates

I must convert the angle in the for loop to radians and plot with an offset for x and y to center it

```basic

For angle = 0 To 360 Step 2
    ' converting angle to radians
    ar = angle / 57.295
    x = radius * Cos(ar)
    y = radius * Sin(ar)

    x1 = radius * Cos(ar * 2)
    y1 = radius * Sin(ar * 2)

    Line (x + xoff, y + yoff)-(x1 + xoff, y1 + yoff), 13
    PSet (x + xoff, y + yoff), 6

Next angle

```

I have made a high res version on a 600,600 screen

it will cycle through the multipliers from 2 to 35 when you press a button

I have incluced the .exe as well


## note on assigning floats to ints

```basic
Dim x As Integer
Dim y As Integer


Cls
'' when random number is put into an integer it is rounded up
'' you can avoid this by making the number a int first. that just floors it
'' y = int(rnd *9)+1

For x = 1 To 80
    Randomize Timer
    y = (Rnd * 9) + 1

    Print y; ","; Int(Rnd * 9) + 1; " \ ";

Next x



```
