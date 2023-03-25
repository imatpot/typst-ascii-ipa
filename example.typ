#import("ipa.typ"): *

#set list(marker: [--])

#show par: set block(
  above: 1.2em,
  below: 1.2em
)

#show heading: set block(
  above: 2em,
  below: 1.2em
)

= Typst IPA

While the features are somewhat organized into separate files, you can import everything via the `ipa.typ` entry file.

```typ
#import("ipa.typ"): *
```

== Conversion

/ Sample word: Russian #orth("привет") #phnt(xsampa("pr_jIv_jet"))

To convert X-SAMPA, Praat, Branner, and SIL notation to the IPA, use the following functions:

```typ
#xsampa("pr_jIv_jet")
#praat("pr\\^j\\icv\\^jet")
#branner("prj^Ivj^et")
#sil("prj^i=vj^et")
```

Output:

- #xsampa("pr_jIv_jet")
- #praat("pr\\^j\\icv\\^jet")
- #branner("prj^Ivj^et")
- #sil("prj^i=vj^et")

You can also reverse the conversion, from the IPA to X-SAMPA, Praat, Branner, and SIL notation:

```typ
#xsampa("prʲɪvʲet", reverse: true)
#praat("prʲɪvʲet", reverse: true)
#branner("prʲɪvʲet", reverse: true)
#sil("prʲɪvʲet", reverse: true)
```

Output:

- #xsampa("prʲɪvʲet", reverse: true)
- #praat("prʲɪvʲet", reverse: true)
- #branner("prʲɪvʲet", reverse: true)
- #sil("prʲɪvʲet", reverse: true)

== Brackets and braces

You can mark your text as #phonetic("phonetic"), #phonemic("phonemic"), #orthographic("orthographic"), and #prosodic("prosodic"):

```typ
#phonetic("prʲɪˈvʲet") /* or */ #phnt("prʲɪˈvʲet")
#phonemic("prɪvet") /* or */ #phnm("prɪvet")
#orthographic("привет") /* or */ #orth("привет")
#prosodic("I actually don't know what this is") /* or */ #prsd("...")
```

Output:

- #phonetic("prʲɪˈvʲet")
- #phonemic("prɪvet")
- #orthographic("привет")
- #prosodic("I actually don't know what this is")

#include("test.typ")
