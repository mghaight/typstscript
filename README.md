# Typstscript

Typstscript is a Typst package that transliterates IAST input into Devanagari characters at compile time.

## Usage

```typst
#import "@local/typstscript:0.1.0": typstscript

#typstscript()[oṃ namaḥ śivāya]
#typstscript(scheme: "harvard-kyoto")[oM namaH zivAya]
```

- `typstscript()[...]` defaults to the IAST scheme.
- Select the Harvard-Kyoto scheme with `scheme: "harvard-kyoto"`.

Explore `demo.typ` for a runnable demonstration of both schemes.
