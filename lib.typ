#let scripts = (
  "devanagari": (
    virama: "्",
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
      "ē": (independent: "ए", dependent: "े"),
      "ai": (independent: "ऐ", dependent: "ै"),
      "o": (independent: "ओ", dependent: "ो"),
      "ō": (independent: "ओ", dependent: "ो"),
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
      "ḥ": "ः",
      "m̐": "ँ",
      "̃": "̃",
      "ʼ": "ऽ",
    ),
  ),
  "kannada": (
    virama: "್",
    vowels: (
      "a": (independent: "ಅ", dependent: ""),
      "ā": (independent: "ಆ", dependent: "ಾ"),
      "i": (independent: "ಇ", dependent: "ಿ"),
      "ī": (independent: "ಈ", dependent: "ೀ"),
      "u": (independent: "ಉ", dependent: "ು"),
      "ū": (independent: "ಊ", dependent: "ೂ"),
      "ṛ": (independent: "ಋ", dependent: "ೃ"),
      "ṝ": (independent: "ೠ", dependent: "ೄ"),
      "ḷ": (independent: "ಌ", dependent: "ೢ"),
      "ḹ": (independent: "ೡ", dependent: "ೣ"),
      "e": (independent: "ಎ", dependent: "ೆ"),
      "ē": (independent: "ಏ", dependent: "ೇ"),
      "ai": (independent: "ಐ", dependent: "ೈ"),
      "o": (independent: "ಒ", dependent: "ೊ"),
      "ō": (independent: "ಓ", dependent: "ೋ"),
      "au": (independent: "ಔ", dependent: "ೌ"),
    ),
    consonants: (
      "k": "ಕ",
      "kh": "ಖ",
      "g": "ಗ",
      "gh": "ಘ",
      "ṅ": "ಙ",
      "c": "ಚ",
      "ch": "ಛ",
      "j": "ಜ",
      "jh": "ಝ",
      "ñ": "ಞ",
      "ṭ": "ಟ",
      "ṭh": "ಠ",
      "ḍ": "ಡ",
      "ḍh": "ಢ",
      "ṇ": "ಣ",
      "t": "ತ",
      "th": "ಥ",
      "d": "ದ",
      "dh": "ಧ",
      "n": "ನ",
      "p": "ಪ",
      "ph": "ಫ",
      "b": "ಬ",
      "bh": "ಭ",
      "m": "ಮ",
      "y": "ಯ",
      "r": "ರ",
      "l": "ಲ",
      "v": "ವ",
      "ś": "ಶ",
      "ṣ": "ಷ",
      "s": "ಸ",
      "h": "ಹ",
    ),
    diacritics: (
      "ṃ": "ಂ",
      "ḥ": "ಃ",
      "m̐": "ಁ",
      "̃": "̃",
      "ʼ": "ಽ",
    ),
  ),
)

#let iast-scheme = (
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
  vowels: (
    "a": "a",
    "ā": "ā",
    "i": "i",
    "ī": "ī",
    "u": "u",
    "ū": "ū",
    "ṛ": "ṛ",
    "ṝ": "ṝ",
    "ḷ": "ḷ",
    "ḹ": "ḹ",
    "e": "ē",
    "ē": "ē",
    "ai": "ai",
    "o": "ō",
    "ō": "ō",
    "au": "au",
  ),
  consonants: (
    "k": "k",
    "kh": "kh",
    "g": "g",
    "gh": "gh",
    "ṅ": "ṅ",
    "c": "c",
    "ch": "ch",
    "j": "j",
    "jh": "jh",
    "ñ": "ñ",
    "ṭ": "ṭ",
    "ṭh": "ṭh",
    "ḍ": "ḍ",
    "ḍh": "ḍh",
    "ṇ": "ṇ",
    "t": "t",
    "th": "th",
    "d": "d",
    "dh": "dh",
    "n": "n",
    "p": "p",
    "ph": "ph",
    "b": "b",
    "bh": "bh",
    "m": "m",
    "y": "y",
    "r": "r",
    "l": "l",
    "v": "v",
    "ś": "ś",
    "ṣ": "ṣ",
    "s": "s",
    "h": "h",
  ),
  diacritics: (
    "ṃ": "ṃ",
    "ṁ": "ṃ",
    "ḥ": "ḥ",
    "m̐": "m̐",
    "̃": "̃",
    "ʼ": "ʼ",
  ),
)

#let harvard-kyoto-scheme = (
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
  vowels: (
    "a": "a",
    "A": "ā",
    "i": "i",
    "I": "ī",
    "u": "u",
    "U": "ū",
    "R": "ṛ",
    "RR": "ṝ",
    "L": "ḷ",
    "LL": "ḹ",
    "e": "ē",
    "E": "ē",
    "ai": "ai",
    "o": "ō",
    "O": "ō",
    "au": "au",
  ),
  consonants: (
    "k": "k",
    "kh": "kh",
    "g": "g",
    "gh": "gh",
    "G": "ṅ",
    "c": "c",
    "ch": "ch",
    "j": "j",
    "jh": "jh",
    "J": "ñ",
    "T": "ṭ",
    "Th": "ṭh",
    "D": "ḍ",
    "Dh": "ḍh",
    "N": "ṇ",
    "t": "t",
    "th": "th",
    "d": "d",
    "dh": "dh",
    "n": "n",
    "p": "p",
    "ph": "ph",
    "b": "b",
    "bh": "bh",
    "m": "m",
    "y": "y",
    "r": "r",
    "l": "l",
    "v": "v",
    "z": "ś",
    "S": "ṣ",
    "s": "s",
    "h": "h",
  ),
  diacritics: (
    "M": "ṃ",
    "H": "ḥ",
    "~N": "m̐",
    "'": "ʼ",
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

#let is-whitespace(cluster) = cluster == " " or cluster == "\t" or cluster == "\n" or cluster == "\r"

#let rewrite-specials(text, scheme-name, script-name) = {
  if script-name != "devanagari" {
    return text;
  }
  let forms = if scheme-name == "harvard-kyoto" {
    ("oM", "OM")
  } else {
    ("oṃ", "oṁ")
  };
  let clusters = to-clusters(text);
  if clusters.len() == 0 {
    return text;
  }
  let segments = ();
  let current = ();
  let current-space = is-whitespace(clusters.at(0));
  for cluster in clusters {
    let space = is-whitespace(cluster);
    if space != current-space {
      segments.push((space: current-space, text: join-clusters(current)));
      current = ();
      current-space = space;
    }
    current.push(cluster);
  }
  segments.push((space: current-space, text: join-clusters(current)));

  let result = "";
  for segment in segments {
    if not segment.at("space") {
      let word = segment.at("text");
      let matched = false;
      for form in forms {
        if word == form {
          matched = true;
          break;
        }
      }
      if matched {
        result += "ॐ";
        continue;
      }
    }
    result += segment.at("text");
  }
  result
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

#let transliterate-text(text, scheme-name, script-name) = {
  let scheme = schemes.at(scheme-name, default: none);
  if scheme == none {
    panic("unknown typstscript scheme `" + scheme-name + "` (supported: `iast`, `harvard-kyoto`).");
  }
  let script = scripts.at(script-name, default: none);
  if script == none {
    panic("unknown typstscript script `" + script-name + "` (supported: `devanagari`, `kannada`).");
  }

  text = rewrite-specials(text, scheme-name, script-name);

  let vowel-map = scheme.at("vowels");
  let consonant-map = scheme.at("consonants");
  let diacritic-map = scheme.at("diacritics");
  let script-vowels = script.at("vowels");
  let script-consonants = script.at("consonants");
  let script-diacritics = script.at("diacritics");
  let virama = script.at("virama");

  let output = "";
  let pending = false;
  for token in tokenize(text, scheme.at("digraphs")) {
    let canonical = vowel-map.at(token, default: none);
    if canonical != none {
      let vowel = script-vowels.at(canonical, default: none);
      if vowel == none {
        panic("vowel `" + canonical + "` missing for script `" + script-name + "`.");
      }
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

    canonical = consonant-map.at(token, default: none);
    if canonical != none {
      let consonant = script-consonants.at(canonical, default: none);
      if consonant == none {
        panic("consonant `" + canonical + "` missing for script `" + script-name + "`.");
      }
      if pending {
        output += virama;
      }
      output += consonant;
      pending = true;
      continue;
    }

    canonical = diacritic-map.at(token, default: none);
    if canonical != none {
      let mark = script-diacritics.at(canonical, default: none);
      if mark == none {
        panic("diacritic `" + canonical + "` missing for script `" + script-name + "`.");
      }
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

#let typstscript(scheme: "iast", script: "devanagari", body) = {
  let source = if body.text == none { str(body) } else { body.text };
  transliterate-text(source, scheme, script)
}
