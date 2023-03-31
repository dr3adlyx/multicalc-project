# Information about Multicalc

Last change: 31.03.2023, 22:48



**1. How was the program developed?**

The program was finished with the help of the "Pair Programmer" from character.ai, but was primarily created alone.

Only things like `if ! [[ "$NUM" =~ ^[+-]?[0-9]+([.][0-9]+)?$ ]]; then` were then added by AI.

**2. How does the program work?**

The program first asks the user how many numbers he wants to add up. The user has no limit [^1].
Then it checks if the user has entered a positive number. If so, the program goes to the primary function.
It now asks the user for the numbers to add up, using a FOR loop that goes through until the desired set of numbers to add up is reached.
Then it asks the user for the desired calculation type, using a standard shell calculation it then calculates the result.

[^1]: Will come in a new update, but as of 03/31/2023 this function is not yet available.
