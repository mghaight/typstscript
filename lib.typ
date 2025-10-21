#let virama = "्"

#let iast-scheme = (
  vowels: (
    "a": (independent: "अ", dependent: ""),
    "ā": (independent: "आ", dependent: "ा"),
    "i": (independent: "इ", dependent: "ि"),
    "ī": (independent: "ई", dependent: "ी"),
    "u": (independent: "उ", dependent: "ु"),
    "ū": (independent: "ऊ", dependent: "ू"),
    "ṛ": (independent: "ऋ", dependent: "ृ"),
    "ṝ": (independent: "ॠ", dependent: "ॄ"),
    "ḷ": (independent: "ऌ", dependent: "ॢ"),
    "ḹ": (independent: "ॡ", dependent: "ॣ"),
    "e": (independent: "ए", dependent: "े"),
    "ai": (independent: "ऐ", dependent: "ै"),
    "o": (independent: "ओ", dependent: "ो"),
    "au": (independent: "औ", dependent: "ौ"),
  ),
  consonants: (
    "k": "क",
    "kh": "ख",
    "g": "ग",
    "gh": "घ",
    "ṅ": "ङ",
    "c": "च",
    "ch": "छ",
    "j": "ज",
    "jh": "झ",
    "ñ": "ञ",
    "ṭ": "ट",
    "ṭh": "ठ",
    "ḍ": "ड",
    "ḍh": "ढ",
    "ṇ": "ण",
    "t": "त",
    "th": "थ",
    "d": "द",
    "dh": "ध",
    "n": "न",
    "p": "प",
    "ph": "फ",
    "b": "ब",
    "bh": "भ",
    "m": "म",
    "y": "य",
    "r": "र",
    "l": "ल",
    "v": "व",
    "ś": "श",
    "ṣ": "ष",
    "s": "स",
    "h": "ह",
  ),
  diacritics: (
    "ṃ": "ं",
    "ṁ": "ं",
    "ḥ": "ः",
    "m̐": "ँ",
    "̃": "̃",
    "ʼ": "ऽ",
  ),
  digraphs: (
    "ai",
    "au",
    "kh",
    "gh",
    "ch",
    "jh",
    "ṭh",
    "ḍh",
    "th",
    "dh",
    "ph",
    "bh",
  ),
)

#let harvard-kyoto-scheme = (
  vowels: (
    "a": (independent: "अ", dependent: ""),
    "A": (independent: "आ", dependent: "ा"),
    "i": (independent: "इ", dependent: "ि"),
    "I": (independent: "ई", dependent: "ी"),
    "u": (independent: "उ", dependent: "ु"),
    "U": (independent: "ऊ", dependent: "ू"),
    "R": (independent: "ऋ", dependent: "ृ"),
    "RR": (independent: "ॠ", dependent: "ॄ"),
    "L": (independent: "ऌ", dependent: "ॢ"),
    "LL": (independent: "ॡ", dependent: "ॣ"),
    "e": (independent: "ए", dependent: "े"),
    "ai": (independent: "ऐ", dependent: "ै"),
    "o": (independent: "ओ", dependent: "ो"),
    "au": (independent: "औ", dependent: "ौ"),
  ),
  consonants: (
    "k": "क",
    "kh": "ख",
    "g": "ग",
    "gh": "घ",
    "G": "ङ",
    "c": "च",
    "ch": "छ",
    "j": "ज",
    "jh": "झ",
    "J": "ञ",
    "T": "ट",
    "Th": "ठ",
    "D": "ड",
    "Dh": "ढ",
    "N": "ण",
    "t": "त",
    "th": "थ",
    "d": "द",
    "dh": "ध",
    "n": "न",
    "p": "प",
    "ph": "फ",
    "b": "ब",
    "bh": "भ",
    "m": "म",
    "y": "य",
    "r": "र",
    "l": "ल",
    "v": "व",
    "z": "श",
    "S": "ष",
    "s": "स",
    "h": "ह",
  ),
  diacritics: (
    "M": "ं",
    "H": "ः",
    "~N": "ँ",
    "'": "ऽ",
  ),
  digraphs: (
    "ai",
    "au",
    "kh",
    "gh",
    "ch",
    "jh",
    "Th",
    "Dh",
    "th",
    "dh",
    "ph",
    "bh",
    "RR",
    "LL",
    "~N",
  ),
)

#let schemes = (
  "iast": iast-scheme,
  "harvard-kyoto": harvard-kyoto-scheme,
)

#let to-clusters(text) = {
  let clusters = ();
  for cluster in text {
    clusters.push(cluster);
  }
  clusters
}

#let join-clusters(clusters) = {
  let text = "";
  for cluster in clusters {
    text += cluster;
  }
  text
}

#let tokenize(text, digraphs) = {
  let clusters = to-clusters(text);
  let patterns = ();
  for digraph in digraphs {
    patterns.push(to-clusters(digraph));
  }
  let tokens = ();
  let i = 0;
  while i < clusters.len() {
    let matched = none;
    for pattern in patterns {
      let span = pattern.len();
      if span > 0 and i + span <= clusters.len() and clusters.slice(i, i + span) == pattern {
        matched = join-clusters(pattern);
        i += span;
        break;
      }
    }
    if matched != none {
      tokens.push(matched);
      continue;
    }
    tokens.push(clusters.at(i));
    i += 1;
  }
  tokens
}

#let transliterate-text(text, scheme-name) = {
  let scheme = schemes.at(scheme-name, default: none);
  if scheme == none {
    panic("unknown typstscript scheme `" + scheme-name + "` (supported: `iast`, `harvard-kyoto`).");
  }
  let vowels = scheme.at("vowels");
  let consonants = scheme.at("consonants");
  let diacritics = scheme.at("diacritics");
  let digraphs = scheme.at("digraphs");

  let output = "";
  let pending = false;
  for token in tokenize(text, digraphs) {
    let vowel = vowels.at(token, default: none);
    if vowel != none {
      if pending {
        let dependent = vowel.at("dependent");
        if dependent != "" {
          output += dependent;
        }
        pending = false;
      } else {
        output += vowel.at("independent");
      }
      continue;
    }

    let consonant = consonants.at(token, default: none);
    if consonant != none {
      if pending {
        output += virama;
      }
      output += consonant;
      pending = true;
      continue;
    }

    let mark = diacritics.at(token, default: none);
    if mark != none {
      if pending {
        pending = false;
      }
      output += mark;
      continue;
    }

    if pending {
      output += virama;
      pending = false;
    }
    output += token;
  }

  if pending {
    output += virama;
  }
  output
}

#let typstscript(scheme: "iast", body) = {
  let source = if body.text == none { str(body) } else { body.text };
  transliterate-text(source, scheme)
}
