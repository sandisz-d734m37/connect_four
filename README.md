## Welcome to the all-inclusive, thrill-filled, and computer-automated
## __Connect 4 experience of a lifetime__


Brought to you by:
Sandisz
John
& Paul

To start playing:  ruby connect_four.rb


## Developer notes: Game Logic
We implemented a 7 column by 6 row board as shown below

|row/col|A|B|C|D|E|F|G|
|---|---|---|---|---|---|---|---|
|0|a0|b0|c0|d0|e0|f0|g0|
|1|a1|b1|c1|d1|e1|f1|g1|
|2|a2|b2|c2|d2|e2|f2|g2|
|3|a3|b3|c3|d3|e3|f3|g3|
|4|a4|b4|c4|d4|e4|f4|g4|
|5|a5|b5|c5|d5|e5|f5|g5|

Win conditions:
Find four consecutive game pieces.

The logic implemented for matching on rows and columns is the same except use of ruby's .transpose method on the array.

**check_rows:** Start at a0 then shift right

|a0| b0| c0| d0
|---|---|---|---|

The last elements check would be

|d5| e5| f5| g5
|---|---|---|---|


**check_columns:** Transposes (rotates the array), then start at a0 and shift right

|a0| a1| a2| a3
|---|---|---|---|

The last elements check would be

|g2| g3| g4| g5
|---|---|---|---|


**check_upward_diagonals:** We start at d0 and look up and to the left for 4 elements, then shovels all 4 into an array

|d0| c1| b2| a3
|---|---|---|---|

Now, d0, c1, b2, & a3 are put into an array.
The array is then checked, and if we find all 4 items in the array to be the same, we have a win!
We loop across columns D-G and rows 0-2.
Thus the last 4 elements checked would be

|g2|f3|e4|d5
|---|---|---|---|

**check_downward_diagonals:** We start at a0 and look down and to the right for 4 elements, then shovels all 4 into an array

|a0| b1| c2| d3
|---|---|---|---|

Now a0, b1, c2, and d3 are all put into an array.
The array is then checked, and if we find all 4 to be the same we have a win!
we loop across columns A-D and rows 0-2.
Thus the last 4 elements checked would be

|d2|e3|f4|g5
|---|---|---|---|
