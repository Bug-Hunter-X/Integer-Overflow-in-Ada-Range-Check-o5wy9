# Ada Integer Overflow Bug

This repository demonstrates a potential integer overflow bug in an Ada function that checks if a number is within a specific range.  The original code lacks robust error handling for values exceeding the maximum representable integer. The solution addresses this by adding a check against Integer'Last and Integer'First before proceeding with the range check, making the code more robust and preventing unexpected behavior or crashes.

## Bug Description

The `Check_Range` function only checks if the input number `Num` is less than 10 or greater than 20. It doesn't account for the possibility of integer overflow if `Num` is assigned a value larger than `Integer'Last`. This could lead to unexpected results or program crashes.

## Solution

The solution involves adding a check to see if the input number is within the valid range of integers before performing the range check. This prevents potential overflow issues and makes the function more robust.
