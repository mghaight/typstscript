# Inscript

Inscript is a Typst package that transliterates Latin-script input (IAST or
Harvard-Kyoto) into Indic scripts.

## Usage

```typst
#import "@local/inscript:0.1.0": inscript 

#inscript()[oṃ namaḥ śivāya]
#inscript(scheme: "harvard-kyoto")[oM namaH zivAya]
#inscript(script: "kannada")[ēkō devāḥ]
#inscript(scheme: "harvard-kyoto", script: "kannada")[OM namaH zIvAya]
#inscript(unicode-om: false)[oṃ]
```

- `scheme` selects the transliteration input (defaults to `"iast"`).
- `script` selects the output script (defaults to `"devanagari"`).
- `unicode-om` toggles the optional `oṃ` (ॐ) ligature (defaults to `true`)
