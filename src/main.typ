#import "lib/delimiters.typ": *
#import "lib/branner.typ": branner
#import "lib/praat.typ": praat
#import "lib/sil.typ": sil
#import "lib/xsampa.typ": xsampa

#let test = "d>$$$$l~~a<^ 0_ &33 #32 2_ x=x=^ f~~ k#&p k@&p"

- #test
- #sil(test)
- #sil(sil(test), reverse: true)
