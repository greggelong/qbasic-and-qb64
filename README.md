# qbasic-and-qb64
a place to hold some code while playing with qbasic and qb64


## polargraph 

This is a simple graphic visualization of modular multiplication using polar to cartesian coordinates

I must convert the angle in the for loop to radians and plot with an offset for x and y to center it

```qbasic

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

'''
