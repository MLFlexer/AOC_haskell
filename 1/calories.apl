input ← ⍎¨¨((×≢¨)⊆⊢)⊃⎕nget '/home/mlflexer/repos/AOC_haskell/1/1.in' 1

sum_input ← +/¨⍪input
sol_a ← ⌈/⍉sum_input

sol_b ← {⊃+/(↓⍵)[3↑⍒⍵]} sum_input
