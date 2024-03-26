# Changelog of `ascii-ipa`

follows [semantic versioning](https://semver.org)

## 2.0.0

> [!CAUTION]
> This release contains breaking changes

- General
  - (BREAKING) Dropped support for `override-font` to avoid [`string`](https://typst.app/docs/reference/foundations/str/)/[`content`](https://typst.app/docs/reference/foundations/content/) ambiguity
  - Extended bracket & braces support to include [precise, morphophonemic, indistinguishable, obscured, and transliterated](https://en.wikipedia.org/wiki/International_Phonetic_Alphabet#Brackets_and_transcription_delimiters) notation
- Branner
  - (BREAKING) `))` between characters (e.g. `t))s`) is no longer supported and must now be used according to specification (e.g. `ts))`)
  - Extended range of supported characters and diacritics
- Praat
  - Extended range of supported characters and diacritics
  - Add support for `$` as a replacement to `\\` avoiding the need for escaping
- SIL
  - Extended range of supported characters and diacritics
  - Add proper Unicode support for hooks (palatal, retroflex)
  - Add proper Unicode support for middle tildes (velar, pharyngeal)
  - Add proper Unicode support for superscripts
  - Added support for subscripts
  - Added support for right-bar tone glides
  - Added support for left-bar tones
- X-SAMPA
  - Extended range of supported characters and diacritics
  - Added support for `-` as a separator

## 1.1.1

- Fixed a bug in X-SAMPA where ``` ` ``` falsely took precedence over ``` @` ``` (https://github.com/imatpot/typst-packages/issues/1)

## 1.1.0

- Translations will now return a [`string`](https://typst.app/docs/reference/foundations/str/) if the font is not overridden
- The library now explicitly exposes functions via a "gateway" entrypoint
- Update internal project structure
- Update package metadata
- Update documentation

## 1.0.0

- Initial release
