norm =: normaliser =: [ % +/ "1
genTrans =: {{(#/.~y)(~.y)} x}} 
genTrans2 =: {{(#/.~y)(~.y)} (,~#y) $ 0}} 
predict =: {{(? 0) I.~  +/\ (y { x) }}
mat =: 0 $~ ,~


raw =: freads 'C:\Users\utilisateur1\j9.5-user\temp\Celogedelafolie.txt'

obs =: _7<\  raw
states =: ~. obs
nstates=: # states
indexed =: states i. obs
tm =: norm (mat nstates) genTrans [ 2 <\ indexed
;:^:(_1) states {~ tm predict^:(i. 30) 0


size =:  2, 3,4,6 ,.8
obs =:   (- size) <@(<\)  raw
states =: ~.&.> obs
nstates=: #&> states
indexed =: states i.&.> obs
tms =: (<@mat"0 nstates) norm@genTrans&.> [ 2<\&.> indexed
results =: ([: , >)"1 |:  states {&>"1~ tms (predict&>)^:(i.100) 0
(<"0 size),. (<"1 results)

