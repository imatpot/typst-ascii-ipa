#import("translations/xsampa.typ"): xsampa-translations
#import("translations/praat.typ"): praat-translations
#import("translations/branner.typ"): branner-translations
#import("translations/sil.typ"): sil-translations

#let replacer = (val, rpl, reverse: false) => {
  let (a, b) = if reverse {( 1, 0 )} else {( 0, 1 )}

  for pair in rpl {
    val = val.replace(pair.at(a), pair.at(b))
  }

  val
}

#let xsampa = (val, reverse: false) => {
  replacer(val, xsampa-translations, reverse: reverse)
}

#let praat = (val, reverse: false) => {
  replacer(val, praat-translations, reverse: reverse)
}

#let branner = (val, reverse: false) => {
  replacer(val, branner-translations, reverse: reverse)
}

#let sil = (val, reverse: false) => {
  replacer(val, sil-translations, reverse: reverse)
}

#let phonetic = (val) => {[
  [#val]
]}
#let phnt = phonetic

#let phonemic = (val) => {[
  /#val/
]}
#let phnm = phonemic

#let orthographic = (val) => {[
  ⟨#val⟩
]}
#let orth = orthographic

#let prosodic = (val) => {[
  {#val}
]}
#let prsd = prosodic
