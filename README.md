# Typstscript

Typstscript is a Typst package that transliterates Latin-script input (IAST or
Harvard-Kyoto) into Indic scripts.

## Usage

```typst
#import "@local/typstscript:0.1.0": typstscript

#typstscript()[oṃ namaḥ śivāya]
#typstscript(scheme: "harvard-kyoto")[oM namaH zivAya]
#typstscript(script: "kannada")[ēkō devāḥ]
#typstscript(scheme: "harvard-kyoto", script: "kannada")[OM namaH zIvAya]
#typstscript(unicode-om: false)[oṃ]
```

- `scheme` selects the transliteration input (defaults to `"iast"`).
- `script` selects the output script (defaults to `"devanagari"`).
