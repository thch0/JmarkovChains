
statesName =: 'rainy';'sunny'
obsName =: 'walk';'shop';'clean'

A =: 2 2 $ 0.7 0.3 0.4 0.6
B =: 2 3 $ 0.1 0.4 0.5 0.6 0.3 0.1

pi =: 0.6 0.4
obs =: 0 1 2
NB.
NB. A =: 3 3 $ 0.5 0.4 0.1 0.3 0.5 0.2 0.2 0.3 0.5
NB. B =: 3 3 $ 0.1 0.4 0.5 0.4 0.4 0.2 0.6 0.3 0.1
NB.
NB. pi =: 0.6 0.3 0.1
NB. obs =: 0 1 2 2
obs1 =: 'nettoyage'; 'shopping'; 'balade'; 'shopping'; 'shopping'; 'balade'; 'nettoyage'
obsLabel =: 'balade'; 'shopping'; 'nettoyage'
] obs =: obsLabel i. obs1 

init =: [ * B {~"1 ]
iterVit =: [ {"1 B * [: >./ A * ]
viterbi =: [, ]F:.iterVit
] vt1 =: (pi init {. obs) viterbi }. obs 
((pi init {.) viterbi }.) obs
( i. >./)"1 vt1
