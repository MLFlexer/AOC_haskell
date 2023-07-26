input ← ⍎¨¨((×≢¨)⊆⊢)⊃⎕nget '/home/mlflexer/repos/AOC_haskell/1/1.in' 1

sol_a ← ⌈/⍉+/¨⍪input

sol_b ← ⊃+/(↓+/¨⍪input)[3↑⍒+/¨⍪input]
