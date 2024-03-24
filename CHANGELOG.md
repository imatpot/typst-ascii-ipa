# Changelog of `ascii-ipa`

follows [semantic versioning][semver]

## 2.0.0

> [!CAUTION]
> This release contains breaking changes

- [breaking] Dropped support for `override-font` to avoid [`string`][typst-string]/[`content`][typst-content] ambiguity
- [breaking] `))` between characters (e.g. `t))s`) in Branner is no longer supported and can now be used according to specification (e.g. `ts))`)
- Extended bracket support to include [precise, morphophonemic, indistinguishable, obscured, and transliterated][wikipedia-brackets] notation
- Extended range of supported characters and diacritics in Branner, Praat, SIL, and X-SAMPA

## 1.1.1

- Fixed a bug in X-SAMPA where ``` ` ``` falsely took precedence over ``` @` ``` (https://github.com/imatpot/typst-packages/issues/1)

## 1.1.0

- Translations will now return a [`string`][typst-string] if the font is not overridden
- The library now explicitly exposes functions via a "gateway" entrypoint
- Update internal project structure
- Update package metadata
- Update documentation

## 1.0.0

- Initial release

[semver]: https://semver.org
[typst-string]: https://typst.app/docs/reference/foundations/str/
[typst-content]: https://typst.app/docs/reference/foundations/content/
[wikipedia-brackets]: https://en.wikipedia.org/wiki/International_Phonetic_Alphabet#Brackets_and_transcription_delimiters
[wikipedia-v-rhook-unsupported]: https://en.wikipedia.org/wiki/X-SAMPA#Consonants
