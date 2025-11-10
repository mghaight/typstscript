#import "../lib.typ": inscript
#set text(font: "Murty Kannada")

= inscript Transliteration Demo

== IAST

#inscript()[oṃ namaḥ śivāya]
#inscript(script: "kannada")[ēkō devāḥ]

== Harvard-Kyoto

#inscript(scheme: "harvard-kyoto")[oM namaH zivAya]
#inscript(scheme: "harvard-kyoto", script: "kannada")[OM namaH zIvAya]

== Unicode Om Toggle

#inscript()[oṃ]
#inscript(unicode-om: false)[oṃ]
