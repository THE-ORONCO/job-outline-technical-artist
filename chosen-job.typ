#import "@preview/glossy:0.7.0": *
#import "@preview/diagraph:0.3.3": *

// ---------- Design-Tokens ----------
#let accent = rgb("#1f4e79")
#let accent-light = rgb("#e8eef5")
#let muted = rgb("#6b7280")
#let me = "Théo Florin Roncoletta"
#set text(lang: "de", font: "Fira Sans", size: 10.5pt)
#set document(
  title: "Stellenanalyse: Engine Programming Internship bei Larian Studios (Barcelona)",
  author: me,
  description: "Analyse der gewählten Stellenausschreibung",
)

#set page(
  paper: "a4",
  margin: (x: 25mm, top: 28mm, bottom: 25mm),
  numbering: "1",
  header: context {
    if counter(page).get().first() > 1 {
      let here-page = here().page()
      let on-page = query(heading.where(level: 1)).filter(h => h.location().page() == here-page)
      let before = if on-page.len() > 0 { on-page } else {
        query(selector(heading.where(level: 2)).before(here()))
      }
      set text(size: 8.5pt, fill: muted)
      grid(
        columns: (1fr, auto),
        [Stellenanalyse: Larian Studios -- #me],
        if before.len() > 0 { before.last().body },
      )
      v(-0.6em)
      line(length: 100%, stroke: 0.5pt + accent)
    }
  },
  footer: context {
    if counter(page).get().first() > 1 {
      set align(center)
      set text(size: 8.5pt, fill: muted)
      [Seite #counter(page).display() von #counter(page).final().first()]
    }
  },
)
#set par(justify: true, leading: 0.7em, spacing: 1.1em)

// ---------- Überschriften ----------
#set heading(numbering: "1.1")
#show heading: set text(fill: accent)
#show heading.where(level: 1): it => {
  v(1.6em, weak: true)
  set text(size: 20pt, weight: "bold")
  block(it)
  v(-0.5em)
  line(length: 100%, stroke: 1pt + accent)
  v(0.8em)
}
#show heading.where(level: 2): it => {
  v(1.5em, weak: true)
  set text(size: 14pt, weight: "bold")
  block(it, below: 0.8em)
}
#show heading.where(level: 3): it => {
  v(1.2em, weak: true)
  set text(size: 12pt, weight: "bold")
  block(it, below: 0.7em)
}
#show heading.where(level: 4): it => {
  v(1em, weak: true)
  set text(size: 10.5pt, weight: "bold", fill: black)
  block(it, below: 0.6em)
}

// ---------- Listen, Links, Zitate ----------
#set list(indent: 4mm, marker: (text(fill: accent)[◆], text(fill: accent)[►]))
#set terms(separator: text(weight: "bold", fill: accent)[:#h(5pt)], hanging-indent: 3mm)
#show terms: it => {
  show strong: it => text(weight: "bold", fill: accent, it.body)
  it
}
#show link: set text(fill: accent)
#show cite.where(form: "normal"): set text(fill: muted, size: 0.9em)

// ---------- Abbildungen ----------
#show figure: set block(above: 1.8em, below: 1.8em)
#show figure.caption: it => {
  set text(size: 9pt)
  [*#it.supplement #context it.counter.display(it.numbering)#it.separator*#it.body]
}
#show figure.where(kind: image): it => {
  show image: img => box(stroke: 0.5pt + muted, inset: 0pt, img)
  it
}

// ---------- Verzeichnisse ----------
#set outline(indent: auto)
#set outline.entry(fill: repeat(text(fill: muted)[.], gap: 0.3em))
#show outline.entry.where(level: 1): it => {
  if it.element.func() != heading { return it }
  v(0.9em, weak: true)
  strong(it)
}

#show bibliography: set text(size: 9.5pt)

// ---------- Titelseite ----------
#page(numbering: none)[
  #set align(center)
  #v(15mm)

Portfolio-Prüfungsabgabe \
*Analyse einer Jobanazeige* \
im Bachelorstudiengang \
*Game-Produktion und Management* \
Im Modul \
*Game Industry Fundamentals (WiSe 26/27)* \
an der Hochschule für angewandte Wissenschaften Neu-Ulm \
#v(20mm)

*Stellenanalyse „Engine Programming Internship“ bei Larian Studios*
#v(20mm)

#set align(left)

#show table.cell.where(y: 0): strong
#set table(
  stroke: {},
  align: left
)

#set list(indent: 4mm, marker: ([◆], [►]))

#show heading: it => [
  #v(1em)
  #it.body\
]

#table(
  columns: (auto, 1fr),
  [],[],
  [Prüfer:], [Prof. Michael Hebel#v(10mm)],
  [Verfasser/-in:], [Théo Florin Roncoletta (Matrikel-Nr.: 379030)#v(30mm)],
  [Thema erhalten:],	[01.10.2026],
  [Arbeit abgegeben:], [#datetime.today().display("[day].[month].[year]")#v(10mm)],
)

]
#outline()

#pagebreak()

Diese Analyse befasst sich mit der Stellenausschreibung *Engine Programming Internship* von Larian Studios am Standort Barcelona (Vollzeit, Arbeit vor Ort). Ausgangspunkt ist die Originalausschreibung @larianJobEngineIntern2026. Sie wird zunächst mit dem Unternehmen und seinem aktuellen Kurs abgeglichen, anschließend werden die Probleme herausgearbeitet, die Larian mit dieser Stelle lösen möchte, und zuletzt werden Risiken und Argumente für oder gegen eine Bewerbung abgewogen. Die verwendeten Quellen finden sich in der Bibliografie am Ende des Dokuments.

= Ausrichtung an Unternehmen und aktuellem Kurs

Die Ausschreibung passt fast punktgenau zu dem, wo Larian Studios aktuell steht. Die folgende Übersicht stellt die wichtigsten Erkenntnisse aus der Recherche den Belegen in der Ausschreibung bzw. in den Quellen gegenüber.

#table(
  columns: (1fr, 1.15fr),
  stroke: 0.5pt + rgb("#c7d2dc"),
  inset: (x: 6pt, y: 7pt),
  align: (left, top),
  table.header(
    table.cell(fill: accent-light)[*Erkenntnis aus der Recherche*],
    table.cell(fill: accent-light)[*Beleg in der Ausschreibung bzw. in den Quellen*],
  ),
  [Mit *Divinity* wurde im Dezember 2025 ein neues, ambitioniertes RPG angekündigt -- laut Ankündigung mit „greater breadth & depth than ever before“ @larianPressDivinity2025 @rpgamerDivinity2025.],
  [Die Ausschreibung spricht davon, „as we move on to new projects“ weiterhin die gewohnt hohe Qualität zu liefern @larianJobEngineIntern2026 @larianHome2026.],
  [Die proprietäre Engine ist das Herzstück; für das neue *Divinity* baut Larian Berichten zufolge eine neue Engine, weil die bisherige *Baldur's Gate 3* einschränkte @restartNewEngine2025 @larianSupportEngine2023.],
  [Als Aufgabe nennt die Ausschreibung, die proprietäre Engine zu „maintain and extend“ (Memory management, networking, ECS, data structures, performance optimization, physics systems, animation systems) @larianJobEngineIntern2026.],
  [Larian stellt studiosübergreifend ein; parallel ist eine Vollzeitstelle als *Engine Programmer* für Barcelona und Warschau ausgeschrieben @larianJobEngineProgrammer2026.],
  [Das Praktikum ergänzt damit genau das Team, das gleichzeitig Voll- und Senior-Kräfte sucht @larianCareers2026.],
  [Das Unternehmen ist rund 30 Jahre alt und nach dem Erfolg von *Baldur's Gate 3* finanziell stabil -- es kann langfristig in Engine-Personal investieren @independentLarianProfit2024 @larianAbout2026.],
  [Gefordert wird „robust, performant, well tested and maintainable code“ statt schnellem Prototyping @larianJobEngineIntern2026.],
  [Der Tech-Stack der Engine umfasst eine Entity-Component-System-Architektur (ECS).],
  [„ECS“ wird in der Ausschreibung ausdrücklich als Verantwortungsbereich genannt @larianJobEngineIntern2026.],
)

== Der Kontext des Standorts Barcelona

Das Studio in Barcelona ist einer von sieben Standorten von Larian Studios weltweit @larianAbout2026 @larianPressDivinity2025. Auffällig ist, dass Larian derzeit parallel eine Vollzeitstelle als *Engine Programmer* für Barcelona und Warschau ausschreibt @larianJobEngineProgrammer2026. Das Praktikum wirkt damit wie der Aufbau einer Pipeline für genau dieses Team. Larian wächst seit einigen Jahren stark: 2024 wurde mit Warschau der siebte Standort eröffnet @gamedeveloperWarsaw2024, und das Unternehmen beschäftigt nach eigenen Angaben über 500 Mitarbeitende @larianAbout2026. Vor diesem Hintergrund erscheint Barcelona als wachsender Hub für die Engine-Entwicklung.

== Das Signal „neue Projekte“

Die Ausschreibung spricht von „new projects“ im Plural, also mehreren neuen Projekten @larianJobEngineIntern2026. Drei Beobachtungen legen nahe, dass das Praktikum direkt in das *Divinity*-Projekt bzw. ein kommendes Spiel der *Divinity*-Reihe einfließt:

- Mit *Divinity* wurde gerade ein neues Spiel angekündigt, das als bislang größtes Projekt des Studios gilt @larianPressDivinity2025 @windowscentralDivinity2025 @rpgamerDivinity2025.
- Ein DLC zu *Baldur's Gate 3* wurde verworfen und ein *Baldur's Gate 4* ausgeschlossen @ignBg3NoDlc2024.
- Das Engine-Team wird über mehrere Studios hinweg ausgebaut @larianJobEngineProgrammer2026 @larianCareers2026.

Der Zeitpunkt passt: Die Ankündigung erfolgte im Dezember 2025, die Stellenausschreibungen laufen 2026.

= Probleme, die Larian mit dieser Ausschreibung lösen will

Hinter jeder Ausschreibung stehen konkrete Probleme, die ein Unternehmen lösen möchte. Bei dieser Stelle lassen sich drei erkennen.

== Skalierung der Engine-Kapazität für ein ambitionierteres Spiel

Larian entwickelt seine Engine seit Jahren selbst weiter: *Baldur's Gate 3* läuft auf der hauseigenen Divinity-4.0-Engine @larianSupportEngine2023, und laut Vincke setzt das Studio bewusst auf den eigenen statt auf einen kommerziellen Motor, dessen Roadmap man nicht selbst bestimme @eurogamerEngine2024. Für das neue Projekt, das „greater breadth & depth“ verspricht @windowscentralDivinity2025, muss sie deutlich erweitert werden. Genannt werden ausdrücklich Networking, Physics, Animation und ECS -- also Systeme, die für ein Spiel jenseits von *Baldur's Gate 3* überarbeitet oder ausgebaut werden müssten @larianJobEngineIntern2026. Das Praktikum ist damit auch eine Kapazitätsmaßnahme: Es braucht mehr Hände, um die Engine zu erweitern, während erfahrene Entwickler:innen die Architekturentscheidungen treffen.

== Aufbau einer Talent-Pipeline

Ein Praktikum ist ein risikoarmer Weg, Nachwuchstalente zu bewerten, bevor ihnen eine Vollzeitstelle angeboten wird. Die strengen Portfolio-Anforderungen -- eigene C++-Projekte statt Studienarbeiten, höchstens zwei Jahre alt, Quellcode erforderlich -- wirken wie ein Filter für echte Eigenmotivation: Gesucht werden Menschen, die programmieren, weil sie es lieben, und nicht, weil es eine Pflichtaufgabe ist @larianJobEngineIntern2026.

== Wissenstransfer und Wartbarkeit

Die Ausschreibung betont „well tested and maintainable code“ sowie die Bereitschaft, zu „experiment and iterate“ @larianJobEngineIntern2026. Das deutet darauf hin, dass das Engine-Team mit technischer Schuld oder Dokumentationslücken zu kämpfen haben könnte und Entwickler:innen braucht, die Systeme refaktorieren und absichern, während parallel neue entstehen.

= Risiken und Chancen

Eine Bewerbung sollte mit offenen Augen angegangen werden. Den Risiken stehen einige starke positive Signale gegenüber.

== Kritische Punkte

=== Crunch-Kultur

Larian hatte insbesondere in der Endphase von *Baldur's Gate 3* intensive Crunch-Phasen. Swen Vincke hat die persönliche Belastung offen angesprochen und eingeräumt, das Team habe „to do a bit of crunch“ gehabt @ignCrunch2024. Als Praktikant:in kann man in ein Team geraten, das sich von diesem Tempo noch erholt oder bereits auf den nächsten Crunch zusteuert. Das ist die vielleicht wichtigste Frage für ein Bewerbungsgespräch.

=== Praktikum ist keine Jobgarantie

Es handelt sich um eine befristete Stelle; eine Übernahme in eine Vollzeitrolle ist nicht garantiert. Zugleich bedeutet die strenge Portfolio-Anforderung, dass von Praktikant:innen erwartet wird, schnell produktiv zu sein -- und nicht nur zu lernen @larianJobEngineIntern2026.

=== Umzug nach Barcelona

Die Stelle ist vor Ort in Barcelona ausgeschrieben @larianJobEngineIntern2026. Wer nicht bereits dort lebt, muss umziehen; eine Unterstützung beim Umzug wird in der Ausschreibung nicht genannt. Barcelona ist eine attraktive Stadt, doch Lebenshaltungskosten und -- falls nötig -- Visa- bzw. Aufenthaltsfragen sind reale Faktoren.

=== Tencent-Minderheitsbeteiligung

Tencent hält rund 30 % an Larian, und zwar über stimmrechtslose Vorzugsaktien; auf die Unternehmensentscheidungen hat Tencent damit keinen Einfluss @pcgamerTencent2020. Larian bleibt unabhängig, und die Beteiligung hat die kreative Ausrichtung bisher nicht verändert @pcgamerTencent2024. Für manche bleibt die Beteiligung eines chinesischen Konzerns dennoch ein Abwägungspunkt.

=== Unangekündigte Projekte

Man würde an einem Projekt arbeiten, das noch nicht vollständig enthüllt ist. Umfang, Zeitplan und sogar die Richtung können sich noch ändern. Die *Divinity*-Ankündigung war rein cineastisch -- ohne Gameplay, ohne Release-Datum und ohne weitere Details @rpgamerDivinity2025 @windowscentralDivinity2025. Arbeit an unangekündigten Projekten kann spannend, aber auch belastend sein.

== Positive Signale

=== Privat gehalten, kein Aktionärsdruck

Als privates Unternehmen ist Larian nicht von Quartalszahlen und Aktienkursen getrieben. Auf der Bühne der DICE Awards betonte das Studio, man habe keine Aktionäre und denke auch nicht in deren Kategorien @pcgamerTencent2024. Das ist ein gutes Signal für die Planbarkeit: Es müssen keine unrealistischen kurzfristigen Ziele erfüllt werden. Nach dem Erfolg von *Baldur's Gate 3* ist das Unternehmen finanziell solide aufgestellt und hat einen Gewinn von rund 249 Millionen Euro ausgewiesen @independentLarianProfit2024.

=== Erfolgsbilanz

*Baldur's Gate 3* ist eines der am höchsten bewerteten Spiele überhaupt und hat als erstes Spiel den Titel „Spiel des Jahres“ bei allen fünf großen Preisverleihungen gewonnen -- den BAFTA Awards, den Golden Joystick Awards, den GDC Awards, den DICE Awards und den Game Awards @gamesradarBg3FiveGoty2024. Larian hat nach eigenen Angaben insgesamt mehr als 200 „Spiel des Jahres“-Auszeichnungen erhalten @larianAbout2026 @larianPressDivinity2025. Die *Divinity*-Reihe besitzt zudem eine treue Fangemeinde. Als Praktikant:in lernt man von Menschen, die gerade sämtliche wichtigen Branchenpreise abgeräumt haben.

=== Der technische Stack

C++, ECS, eine eigene Engine, Networking, Physics, Animation -- das ist echte Systemprogrammierung und nicht bloß Gameplay-Skripting. Die dabei aufgebauten Fähigkeiten sind über die gesamte Spielebranche hinweg gut übertragbar und darüber hinaus gefragt: ECS und datenorientiertes Design spielen auch im Hochleistungsrechnen und in Simulationen eine Rolle @larianJobEngineIntern2026.

= Sollte man sich bewerben?

== Bewerben, wenn ...

- man eigene, vorzeigbare *C++-Projekte* (keine Studienarbeiten) besitzt und den Quellcode teilen kann @larianJobEngineIntern2026,
- man sich ehrlich für *Engine-Programmierung* begeistert -- Speicher, Performance, ECS, Networking @larianJobEngineIntern2026,
- man an *AAA-RPGs* mit einem bewährten Team arbeiten möchte @larianAbout2026 @gamesradarBg3FiveGoty2024,
- man bereit ist, *vor Ort in Barcelona* zu arbeiten (oder bereits dort lebt),
- man einen möglichen *Crunch* zugunsten prestigeträchtiger Projekte in Kauf nimmt @ignCrunch2024,
- man die Stelle als *Sprungbrett* begreift -- auch ohne Übernahme sind die Erfahrung und der Name im Lebenslauf wertvoll.

== Zweimal überlegen, wenn ...

- man kein passendes Portfolio vorweisen kann (die Ausschreibung ist streng: keine Studienarbeiten, höchstens zwei Jahre alt, Quellcode erforderlich) @larianJobEngineIntern2026,
- man nicht nach Barcelona umziehen möchte,
- man risikoavers gegenüber unangekündigten Projekten mit unklarem Zeitplan ist,
- man empfindlich auf Crunch-Kultur oder Themen der Work-Life-Balance reagiert @ignCrunch2024,
- man eine garantiert langfristige Stelle braucht (es handelt sich um ein Praktikum).


= Fazit

Das ist eine Chance mit hohem Prestige, hohem Risiko und hoher Belohnung. Larian Studios ist einer der angesehensten RPG-Entwickler der Welt, kommt gerade vom erfolgreichsten Spiel der jüngeren Geschichte @gamesradarBg3FiveGoty2024 und arbeitet an einem neuen, ambitionierten Projekt @larianPressDivinity2025 @windowscentralDivinity2025. Das Engine-Team ist das Rückgrat all dessen -- und es wird ausgebaut @larianJobEngineProgrammer2026 @larianCareers2026.

Die Stelle ist erkennbar darauf angelegt, in das *Divinity*-Projekt einzufließen und Nachwuchs für die Engine aufzubauen @restartNewEngine2025 @larianJobEngineProgrammer2026. Wer das nötige C++-Portfolio mitbringt und Lust auf Systemprogrammierung hat, findet hier einen außergewöhnlichen Karrierestart. Man sollte sich aber bewusst sein, dass die Rolle befristet ist und dass ein möglicher Crunch sowie die Unsicherheit eines noch nicht enthüllten Titels dazugehören.


#pagebreak()


#figure(
    image("job-images/Larian Engine Programming Intern - Barcelona.pdf"),
    caption: [Stellenanzeige @larianJobEngineIntern2026]
)


#bibliography("job.bib", style: "apa")

