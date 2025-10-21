#import "../lib.typ": typstscript
#set text(font: "Murty Kannada")

= Typstscript Transliteration Demo

== IAST

#typstscript()[oṃ namaḥ śivāya]
#typstscript(script: "kannada")[ēkō devāḥ]

== Harvard-Kyoto

#typstscript(scheme: "harvard-kyoto")[oM namaH zivAya]
#typstscript(scheme: "harvard-kyoto", script: "kannada")[OM namaH zIvAya]

== Unicode Om Toggle

#typstscript()[oṃ]
#typstscript(unicode-om: false)[oṃ]
