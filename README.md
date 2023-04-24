# Typst IPA

A direct port of the [`ipa-translate`](https://github.com/tirimid/ipa-translate) Rust crate by [tirimid](https://github.com/tirimid)'s conversion features into native [Typst](https://typst.app). Props to them for doing all the *actual* work!

This essentially allows you to conveniently convert linguistic notation from ASCII-representations into IPA, and provides the different brackets and braces that accompany it. This library supports forward and backward conversion with X-Sampa, Praat, Branner, and SIL.

## Usage

Check out the [`example.pdf`](example.pdf) and its source [`example.typ`](example.typ) for all the details you need. Feel free to compile and play around with it yourself.

Once Typst eventually receives its own package manager, I'll provide this repository as a package for convenient use across your projects!

**Note:** As per [this issue](/../../issues/1), you should make sure you use a IPA-compatible font in order to have the smoothest experience. Alternatively, you may pass the `override-font` flag to force the output to use [Linux Libertine](https://en.wikipedia.org/wiki/Linux_Libertine) which is embedded in Typst.
