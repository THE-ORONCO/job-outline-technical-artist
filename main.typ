#import "@preview/glossy:0.7.0": *
#import "@preview/diagraph:0.3.3": *

#set text(lang: "de", font: "Fira Sans")
#set document(
  title: "Technical Artist - ein Berufsbild",
  author: "Théo Florin Roncoletta",
  description: "cooler Bericht",
)

#set page(numbering: "1")
#set par(justify: true)

#set align(center)
#v(20mm)

Portfolio-Prüfungsabgabe \
*Berufsbildanalyse* \
im Bachelorstudiengang \
*Game-Produktion und Management* \
Im Modul \
*Game Industry Fundamentals (WiSe 26/27)* \
an der Hochschule für angewandte Wissenschaften Neu-Ulm \ 
#v(20mm)

*Berufsbildanalyse "Technical Artist"*
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
  [Thema erhalten:],	[09.04.2026],
  [Arbeit abgegeben:], [#datetime.today().display("[day].[month].[year]")#v(10mm)],
)


#pagebreak()

#outline()

#pagebreak()

// add a fake heading to create a reference to the list of images
#{
  show heading: none
  heading[Abbildungsverzeichnis]
}
#outline(title: [Abbildungsverzeichnis], target: figure)

#pagebreak()

#show: init-glossary.with((
  TA: (
    short: "T.A.",
    long: "Technical Artist",
    plural: "T.A.s"
  ),
))

= Technical Artist – ein Berufsbild

Ein @TA steht zwischen dem Art- und Programmier-Team und vereinfacht und optimiert die Produktion und Integration von Art-Assets in das Spiel.

Technical Art ist ein sehr breites Berufsfeld. So kann es die Aufgabe eines @TA:pl sein, Tools zu erweitern oder entwickeln, welche die Artists in der Firma verwenden. Ein anderer @TA kann hingegen die Pipeline organisieren und managen, durch welche jegliche Assets im Entstehungsprozess fließen. Wohingegen ein weiterer @TA Shader schreibt, um die grafische Darstellung zu verbessern und den Artists beibringt, wie diese Sharder zu verwenden sind. @riot2018

Als Brücke zwischen der artistischen und technischen Seite der Spieleentwicklung dient ein @TA als Ansprechpartner für Artists und Designer, die auf technische Probleme stoßen. @riotJob So setzt sich ein @TA sowohl mit Artists als auch Programmierern zusammen, um über potenzielle Engpässe im Schaffungsprozess zu sprechen und die Integration von kommenden Features und Assets abzustimmen. Hierzu braucht ein @TA sowohl fundierte Kenntnisse in den künstlerischen Disziplinen als auch im Programmieren. @chadwick2009 @unrealJob @microsoftJob


== Was macht einen Technical Artist aus und was sind seine Aufgaben?

- technische Prototypen und Mockups die als Referenz dienen erstellen @unrealJob  @microsoftJob @riotJob
- Asset-Integration in das Spiel managen
  - Kommunikation gegenüber der Artists, Animatoren etc. welche Dinge bei der Asseterstellung beachtet werden müssen @indeed2024 @robinson2018 @chadwick2009
  - Tool-Entwicklung für Artists @robinson2018 @riot2018 @rockstarJobTaAnimation
  - Workflows / Pipelines aufsetzen und instandhalten, um die Assets zu optimieren / zu konvertieren / in ein konsistentes Design zu überführen @indeed2024 @robinson2018 @rockstarJobTaDevOps
- Performance-Optimierungen für ein flüssiges Spiel in Hinsicht auf Rendering und Ladezeiten @indeed2024  @chadwick2009
- den Renderingprozess auf Konsistenz der Art-Direktion und Performance überwachen @indeed2024 @unrealJob
- Fehlersuche und Fehlerbehebung im Bereich der Assets und des Renderns @chadwick2009
- Content-/Styleguides erstellen @indeed2024 @robinson2018
- Kommunikationsbrücke zwischen den Art- und Tech-Teams @robinson2018 @microsoftJob
  
== Karrierepfad
Der tatsächliche Karrierepfad eines @TA:pl kann sehr unterschiedlich ausfallen. Meistens entwickelt sich ein @TA aus einer Person mit einem technischen oder artistischen Hintergrund. @TA:pl können sich hierbei in Bereichen wie Rigging, Animation, Lighting/Shading, Shaders, Texturing, Special-FX, Pipeline-Management, Tool-Entwicklung, Simulationen, prozedurale Content-Erstellung, Performance-Profiling, UI, Facial- und Motion-Rigging und vielem mehr spezialisieren. @robinson2018 @riot2018 @rockstarJobProcedural2026 @avalancheJobProfiling2026 @massiveJobUi2026 @weltenbauerJobVfx2026 @insomniacJobFacial2026 @lightspeedJobMotion2025
Ein paar der Optionen sind in @career-path aufgeführt. 

#figure(
  rect(stroke: none)[
    #raw-render(
  ```dot
digraph G {
    // specify graph attributes
    bgcolor=white
    color=grey
    
    // specify common node attributes
    node [color="#111",bgcolor=white]
    edge [color=black]
      TA [label = "Technical Artist"]

    subgraph cluster_TA {
      label="Technical Art Spezialisierung"
      TAR [label="Rigging"]
      TAP [label="Pipeline"]
      TAT [label="Tooling"]
      TAS [label="Shader"]
      TASim [label="Simulation"]
      TAProc [label="Procedural"]
      TAVFX [label="VFX"]
      TAPerf [label="Performance /\nProfiling"]
      TAUI [label="UI"]
      TAFace [label="Facial / Motion"]
      TAO [label="..."]
    }

    TA -> TAR
    TA -> TAP
    TA -> TAT
    TA -> TAS
    TA -> TASim
    // zweite Reihe, damit die Grafik nicht zu breit wird
    TAR -> TAProc [style=invis]
    TAP -> TAVFX [style=invis]
    TAT -> TAPerf [style=invis]
    TAS -> TAUI [style=invis]
    TASim -> TAFace [style=invis]
    TASim -> TAO [style=invis]

    P [label="Game Programmer"];
    A [label="Game Artist"];
    EA [label="Environment Artist"];
    LD [label="Level Designer"];
    O [label="..."]
    
    LD -> TA
    EA -> TA
    P -> TA 
    A -> TA
    O -> TA
    

  }
  ```, 
  height: 20em,
  engine: "dot"
)
  ],
  caption: [Potenzielle Karrierepfade],
  supplement: [Abbildung]
) <career-path>

#set cite(form: "prose")
Aus Interviews von @gdcAkesson2011, @gdcButterworth2011, @gdcCloward2011, @gdcDecker2011, @gdcFerguson2011, @gdcFerguson2011, @gdcGalanakis2011, @gdcGibson2011, @gdcGibson2011, @gdcGood2011, @gdcGoodman2011, @gdcGrimes2011, @gdcHanna2011, @gdcHarbor2011, @gdcHarbor2011, @gdcHash2011, @gdcLindqvist2011, @gdcLong2011, @gdcLong2011, @gdcNielsen2011, @gdcParks2011 und @gdcPletcher2011 durch Crossbie geht hervor, dass ein @TA eine Rolle ist, die sich aktiv aus Anforderungen an eine effizientere Assetverarbeitung entwickelt. Wie diese Entwicklung tatsächlich passiert, fällt sehr unterschiedlich aus. 
#set cite(form: "normal")

Stellenausschreibungen für @TA:pl (siehe @unrealJob @rockstarJobTaAnimation @rockstarJobTaDevOps @microsoftJob @riotJob) gibt es meist nur für Senior Stellen oder höher und verlangen oft eine Spezialisierung in einem spezifischen Feld. Von den 19 für diese Analyse ausgewerteten Stellenausschreibungen aus Nordamerika, Europa und Asien/Ozeanien (Stand 05.10.2026, siehe #link(<jobs>)[Jobs]) sind 13 als Senior-, Lead- oder Management-Position ausgeschrieben. Auch die übrigen setzen größtenteils mehrjährige Berufserfahrung oder bereits veröffentlichte Titel voraus. Keine einzige Junior- oder Praktikumsstelle gab es darunter. In den Interviews und aus der Berufsbeschreibung von #cite(<robinson2018>, form: "prose") geht hervor, dass der Karriereeinstieg meistens nicht direkt als @TA geschieht. Stattdessen entwickelt sich ein Artist oder Programmierer im Laufe der Karriere zu einem @TA, wenn die entsprechenden Skills vorhanden sind und ein @TA im Asset-Erstellungsprozess benötigt wird.

== Skills
Ein @TA benötigten Skills sowohl von der technische als auch von der künstlerischen Seite des Game-Developments. Da der Einstieg in die Industrie überwiegend nur über die initiale Anstellung als Artist oder als Programmierer möglich ist, werden im Folgenden die Skills erst einmal separat aufgeschlüsselt. Um tatsächlich als @TA arbeiten zu können, werden ein Großteil der Skills aus beiden Kategorien benötigt. Außerdem werden auch weitere, @TA spezifische, Skills benötigt, die an letzter Stelle im Kapitel aufgelistet werden.

In keiner Quelle lässt sich eine komplette Liste an nötigen Skills finden, die ein @TA benötigt, da sich die tatsächlichen Anforderungen der konkreten Tätigkeit stark unterscheiden. Grundsätzlich gilt aber, dass ein fundiertes Wissen von mindestens einem Games-Branchen-Job wie Level Design, Environment Art, Animation oder Coding vorhanden sein sollte. @robinson2018 

Die folgenden Listen sollten also eher als Guidelines gesehen werden. Dennoch gibt es Skills, die häufiger aufgeführt wurden als andere. Entsprechend der Häufigkeit sind die Listen sortiert. Grundlage sind Interviews und Fachquellen aus den Jahren 2009 bis 2018, aktuelle Fachbeiträge sowie die 19 im Kapitel Karrierepfad genannten Stellenausschreibungen. Bei den Ausschreibungen wurde gezählt, ob eine Fähigkeit als Voraussetzung oder als Zusatzqualifikation genannt wird. Da die Studios gezielt ausgewählt wurden, ist diese Auswahl nicht repräsentativ für den gesamten Arbeitsmarkt.

Wenn die aktuellen Stellenausschreibungen mit den älteren Quellen verglichen werden ist zu sehen, dass sich die Grundlagen des Berufs gleich nicht wirklich verändert haben: Python, Shader-Arbeit, Pipeline-Verständnis und Kommunikation gehören weiterhin zu den am häufigsten verlangten Fähigkeiten. Deutlich konkreter geworden sind dagegen die Anforderungen an Engine-Kenntnisse. Häufig gefragt ist hier Wissen über die Unreal Engine 5 und an Performance-Analyse mit konkreten Profiling-Tools. MaxScript und eigenständige Physik-Engines wie Havok werden hingegen nicht mehr genannt. KI und Machine Learning spielen bisher (Stand Oktober 2026) nur eine Nebenrolle.

=== Programmierer
- Scripting & Coding, um selbst Tools, Shader etc. zu entwickeln oder mit Skripten verschiedenste Dinge zu automatisieren. @indeed2024 @gdcParks2011 @gdcAkesson2011 @gdcGrimes2011 @gdcGalanakis2011 @gdcLong2011 @gdcHash2011 @gdcGood2011  @unrealJob @rockstarJobTaAnimation @rockstarJobTaDevOps @epicJobLeadTa2026 @riotJobTaManager2026 @vividJobTa2026 @avalancheJobProfiling2026 @rockfishJobTa2026 @weltenbauerJobVfx2026 hierbei kann es sich zum Beispiel um folgende Sprachen handeln:
  - Python @chadwick2009 @gdcParks2011 @gdcGalanakis2011 @gdcCloward2011 @gdcButterworth2011 @gdcGood2011 @robinson2018 @riotJob @riotJobTaAnim2026 @riotJobTaManager2026 @twoKJobRigger2026 @epicJobLeadTa2026 @epicJobTechAnim2026 @lightspeedJobTa2026 @rockstarJobProcedural2026 @avalancheJobProfiling2026 @eaJobRigging2026 @rockfishJobTa2026 @weltenbauerJobVfx2026
    - Qt / PySide für Benutzeroberflächen von Artist-Tools @riotJobTaManager2026 @twoKJobRigger2026 @eaJobRigging2026
  - C++ @gdcGibson2011 @rockstarJobTaAnimation @epicJobLeadTa2026 @lightspeedJobTa2026 @rockstarJobProcedural2026 @techlandJobTa2026 @avalancheJobProfiling2026 @weltenbauerJobVfx2026
    - häufig nur als Zusatzqualifikation oder auf dem Niveau, bestehenden Engine-Code lesen und nachvollziehen zu können @techlandJobTa2026 @avalancheJobProfiling2026
  - C\# / .NET @chadwick2009 @gdcGalanakis2011 @gdcHash2011 @rockstarJobTaAnimation @epicJobLeadTa2026 @lightspeedJobTa2026 @vividJobTa2026
  - MaxScript @chadwick2009 @gdcHanna2011 @gdcGalanakis2011 @gdcCloward2011 @gdcDecker2011 @robinson2018 (in den aktuellen Ausschreibungen nicht mehr gefordert)
  - Visual Scripting (z. B. Unreal Blueprints) @riotJobTaAnim2026 @lightspeedJobTa2026 @lightspeedJobMotion2025 @techlandJobTa2026 @rockfishJobTa2026 @weltenbauerJobVfx2026
  - JavaScript @chadwick2009 @gdcHash2011
  - C @gdcFerguson2011
  - VEX (Houdini) @lv2026houdiniBridge

- Mathematik für Grafikprogrammierung @gdcGoodman2011
  - lineare Algebra / 3D-Mathematik (Vektor, Matrix, Euler-Winkel, Quaternion etc.) @lightspeedJobTa2026 @rockfishJobTa2026 @gdcLindqvist2011 @gdcCloward2011 @gdcFerguson2011 @chadwick2009 @gdcHanna2011 @gdcParks2011 @gdcLindqvist2011 @gdcGrimes2011 @gdcNielsen2011 @gdcGalanakis2011 @gdcHarbor2011 @gdcCloward2011 @gdcGibson2011 @gdcHash2011 @gdcButterworth2011 @gdcDecker2011 @robinson2018
  - Trigonometrie @gdcHash2011 @gdcDecker2011 @robinson2018
  - Infinitesimalrechnung @gdcGrimes2011 @gdcDecker2011 @lightspeedJobTa2026
  - Inverse- / Forwards-Kinematik @gdcGalanakis2011

- Shader-Programmierung @chadwick2009 @gdcHanna2011 @gdcGrimes2011 @gdcNielsen2011 @gdcGalanakis2011 @gdcHarbor2011 @gdcCloward2011 @gdcGibson2011 @gdcGoodman2011 @gdcFerguson2011 @robinson2018 @riotJob @riotJobTaRender2026 @twoKJobShader2026 @epicJobLeadTa2026 @lightspeedJobTa2026 @massiveJobUi2026 @techlandJobTa2026 @avalancheJobProfiling2026 @vividJobTa2026 @rockfishJobTa2026 @weltenbauerJobVfx2026
  - HLSL / GLSL @riotJobTaRender2026 @twoKJobShader2026 @lightspeedJobTa2026 @massiveJobUi2026 @avalancheJobProfiling2026 @vividJobTa2026 @weltenbauerJobVfx2026
  - node-basierte Material- und Shader-Editoren (z. B. Unreal Material Editor / Substrate, Unity Shader Graph) @riotJobTaRender2026 @twoKJobShader2026 @vividJobTa2026 @cgchannel2025ue57 @unity2024unity6

- Sofware-Design-Muster, um gute und instand haltbare Software zu designen @gdcGalanakis2011 @gdcCloward2011 @rockstarJobTaAnimation

=== Artist
- Wissen über Industrie-Tools (z. B. die Adobe Suite) @unrealJob @microsoftJob @riotJob
  - Autodesk Maya @riotJobTaAnim2026 @riotJobTaRender2026 @riotJobTaManager2026 @twoKJobRigger2026 @insomniacJobFacial2026 @epicJobLeadTa2026 @epicJobTechAnim2026 @lightspeedJobMotion2025 @eaJobRigging2026
  - SideFX Houdini @epicJobLeadTa2026 @lightspeedJobTa2026 @rockstarJobProcedural2026 @weltenbauerJobVfx2026
  - Adobe Photoshop @riotJobTaRender2026 @twoKJobShader2026
  - ZBrush @insomniacJobFacial2026 @rockstarJobProcedural2026
  - Blender @epicJobLeadTa2026 @rockfishJobTa2026
  - Autodesk 3ds Max / MotionBuilder @eaJobRigging2026
- Rigging @chadwick2009 @gdcParks2011 @gdcGrimes2011 @gdcGalanakis2011 @gdcCloward2011 @rockstarJobTaAnimation @riotJobTaAnim2026 @twoKJobRigger2026 @insomniacJobFacial2026 @epicJobTechAnim2026 @lightspeedJobTa2026 @lightspeedJobMotion2025 @eaJobRigging2026 @vividJobTa2026
  - Facial-Rigs / FACS @twoKJobRigger2026 @insomniacJobFacial2026 @eaJobRigging2026
  - Rigging direkt in der Engine (z. B. Unreal Control Rig) @epicJobTechAnim2026 @lightspeedJobMotion2025
  - ML Deformer / RBF @lightspeedJobMotion2025
- Lighting @robinson2018 @unrealJob @chadwick2009 @gdcGoodman2011 @riotJobTaRender2026 @lightspeedJobTa2026 @vividJobTa2026 @weltenbauerJobVfx2026
  - Post-Processing @riotJobTaRender2026 @techlandJobTa2026 @vividJobTa2026 @weltenbauerJobVfx2026
  - dynamische Echtzeit-Beleuchtung (z. B. Lumen und MegaLights in Unreal Engine 5, Raytracing) @rockfishJobTa2026 @cgchannel2025ue57 @siggraph2025advances
- Texturing @chadwick2009 @gdcParks2011 @twoKJobShader2026 @lightspeedJobTa2026
  - Substance 3D Painter / Designer @riotJobTaRender2026 @riotJobTaManager2026 @twoKJobShader2026 @lightspeedJobTa2026
  - Physically Based Rendering (PBR) @twoKJobShader2026 @lightspeedJobTa2026
  - Baking @twoKJobShader2026 @vividJobTa2026
- Effekte und Partikel-Systeme @chadwick2009 @riotJobTaRender2026 @lightspeedJobTa2026 @techlandJobTa2026 @vividJobTa2026 @weltenbauerJobVfx2026
  - z. B. Niagara (Unreal Engine), VFX Graph (Unity) oder EmberGen @riotJobTaRender2026 @weltenbauerJobVfx2026 @unity2024unity6
- 3D Modelierung @gdcParks2011 @gdcGrimes2011 @twoKJobShader2026 @lightspeedJobTa2026 @vividJobTa2026
  - Charaktäre @chadwick2009
  - Props @chadwick2009
  - Umgebungen @chadwick2009
- UI/UX @chadwick2009 @riotJob @riotJobTaRender2026 @massiveJobUi2026 @vividJobTa2026
- 2D/3D-Animation @gdcParks2011 @rockstarJobTaAnimation @riotJobTaAnim2026 @lightspeedJobMotion2025
  - Motion Capture und Retargeting @insomniacJobFacial2026 @lightspeedJobMotion2025
- UV-Unwrapping @chadwick2009 @gdcParks2011 @lightspeedJobTa2026 @vividJobTa2026
- Anatomie @gdcGrimes2011 @twoKJobRigger2026 @insomniacJobFacial2026 @eaJobRigging2026
- Farbtheorie @indeed2024 @gdcGrimes2011 @riotJobTaRender2026
- Konzeption, Designen, Prototypisieren und Blockout @chadwick2009 @massiveJobUi2026
- Photogrammetrie und Verarbeitung von Scan-Daten @rockstarJobProcedural2026 @insomniacJobFacial2026
- Formenlehre @indeed2024
- Bild-Komposition @gdcGrimes2011


=== Technical Artist spezifische Skills
Diese Skills sind notwendig, um die künstlerische und technische Seite des Berufes zusammenzuführen.

==== Hard
- Verständnis des kompletten Asset-Erstellungs-Workflows bzw. existierenden Pipelines um Engpässe zu erkennen, Tools zu entwickeln und zu erweitern @chadwick2009 @gdcHanna2011 @gdcAkesson2011 @gdcLindqvist2011 @gdcNielsen2011 @gdcPletcher2011 @gdcGibson2011 @gdcGoodman2011 @gdcFerguson2011 @robinson2018 @unrealJob  @rockstarJobTaAnimation @riotJob @riotJobTaManager2026 @epicJobLeadTa2026 @rockstarJobProcedural2026 @avalancheJobProfiling2026 @eaJobRigging2026 @vividJobTa2026 @rockfishJobTa2026 @weltenbauerJobVfx2026 @lv2026amos
- Wissen über Game-Engines und deren internen Systeme @unrealJob  @microsoftJob @rockstarJobTaAnimation
  - Unreal Engine 5 @riotJobTaAnim2026 @riotJobTaRender2026 @riotJobTaManager2026 @twoKJobShader2026 @epicJobLeadTa2026 @epicJobTechAnim2026 @lightspeedJobTa2026 @lightspeedJobMotion2025 @techlandJobTa2026 @rockfishJobTa2026 @welevelJobTa2026 @weltenbauerJobVfx2026 \
    (12 der 19 Stellen der Stichprobe. Laut #cite(<gdc2026state>, form: "prose") nutzen 42 % der befragten Entwickler:innen primär Unreal, 30 % Unity und 19 % eine proprietäre Engine. Bei AA- und AAA-Studios liegt Unreal mit 59 % bzw. 47 % deutlich vorne. Der Bericht weist selbst darauf hin, dass unklar ist, ob dies eine tatsächliche Verschiebung oder eine Folge der geänderten Befragtengruppe ist.)
    - aktuelle Systeme wie Nanite, Lumen, das PCG-Framework und Substrate @rockfishJobTa2026 @cgchannel2025ue57
  - Unity (z. B. URP / HDRP, Shader Graph, VFX Graph) @insomniacJobFacial2026 @epicJobLeadTa2026 @vividJobTa2026 @unity2024unity6
  - proprietäre Engines (z. B. Snowdrop bei Massive) @epicJobLeadTa2026 @massiveJobUi2026 @avalancheJobProfiling2026
- Render-Optimierung @chadwick2009 @robinson2018 @riotJobTaRender2026 @twoKJobShader2026 @insomniacJobFacial2026 @epicJobLeadTa2026 @techlandJobTa2026 @avalancheJobProfiling2026 @vividJobTa2026 @rockfishJobTa2026 @welevelJobTa2026 @weltenbauerJobVfx2026
  - Performance-Budgets (CPU, GPU, Speicher) definieren und einhalten @epicJobLeadTa2026 @avalancheJobProfiling2026
  - Optimierung für verschiedene Zielplattformen (PC, Konsole, Mobile) @twoKJobShader2026 @techlandJobTa2026 @vividJobTa2026
- Tiefer Einblick in den Renderingprozess @gdcGoodman2011 @robinson2018 @riotJobTaRender2026 @epicJobLeadTa2026 @techlandJobTa2026 @avalancheJobProfiling2026 @rockfishJobTa2026 @welevelJobTa2026 @weltenbauerJobVfx2026
- Prozedurale Content-Generierung @robinson2018 @twoKJobShader2026 @epicJobLeadTa2026 @rockstarJobProcedural2026 @eaJobRigging2026
  - z. B. mit Houdini (Digital Assets, PDG) @epicJobLeadTa2026 @lightspeedJobTa2026 @rockstarJobProcedural2026 @sidefx2026embark @lv2026houdiniBridge
  - z. B. mit dem PCG-Framework der Unreal Engine @cgchannel2025ue57
- Entwicklung und Verwendung von Reporting-Systemen, um die Performance von Spielen im Auge zu behalten @chadwick2009 @robinson2018 @avalancheJobProfiling2026
  - Profiling-Tools wie RenderDoc, PIX, Unreal Insights oder der Unity Profiler @riotJobTaRender2026 @epicJobLeadTa2026 @avalancheJobProfiling2026 @vividJobTa2026 @rockfishJobTa2026 @lv2026amos
- Pipeline-Infrastruktur
  - Versionskontrolle (z. B. Perforce, Git) @twoKJobRigger2026 @lightspeedJobMotion2025 @lv2026amos @perforce2025report
  - Build- und Automatisierungssysteme (z. B. Jenkins, Airflow) sowie Paketverwaltung (z. B. Rez, PyPI) @rockstarJobProcedural2026 @lv2026amos
  - automatische Asset-Validierung @rockfishJobTa2026
- Physiksimulation @chadwick2009 @gdcLindqvist2011 @riotJobTaAnim2026 @twoKJobRigger2026 @epicJobTechAnim2026
  - bekannte Engines und deren Verwendung bekannt (wie z. B. Havok) @chadwick2009( in aktuellen Ausschreibungen werden keine eigenständigen Physik-Engines mehr genannt)
  - Wissen über effiziente Physik-Setups @chadwick2009
  - Fehler / Performance-Engpässe in der Physik-Umgebung identifizieren und reparieren können
  - Charakter-Physik und sekundäre Bewegung (z. B. Jiggle Joints) @riotJobTaAnim2026 @twoKJobRigger2026 @epicJobTechAnim2026
- KI und Machine Learning in der Pipeline \
  (in 3 der 19 Stellen der Stichprobe genannt, jeweils als Zusatzqualifikation oder Spezialthema)
  - KI-gestützte Workflow-Verbesserungen @riotJobTaManager2026
  - ML-basierte Deformation (Unreal ML Deformer) @lightspeedJobMotion2025
  - ML-basierte Photogrammetrie (Gaussian Splats, NeRFs) @rockstarJobProcedural2026
  - Laut #cite(<gdc2026state>, form: "prose") nutzen 36 % der Befragten generative KI-Tools im Job, gleichzeitig sehen 52 % einen negativen Einfluss auf die Branche, im Bereich Visual und Technical Arts sogar 64 %.
- Dokumentation @chadwick2009 @microsoftJob @rockstarJobTaDevOps @rockstarJobProcedural2026

==== Soft
- gute Kommunikationsfähigkeiten (da @TA:pl zwischen den Artists und den Programmierern stehen und vermitteln müssen) @indeed2024 @gdcGibson2011 @gdcGoodman2011 @gdcHash2011 @gdcButterworth2011 @gdcDecker2011 @robinson2018 @rockstarJobTaDevOps @riotJobTaAnim2026 @riotJobTaRender2026 @riotJobTaManager2026 @twoKJobShader2026 @twoKJobRigger2026 @insomniacJobFacial2026 @epicJobLeadTa2026 @epicJobTechAnim2026 @lightspeedJobTa2026 @lightspeedJobMotion2025 @massiveJobUi2026 @techlandJobTa2026 @avalancheJobProfiling2026 @eaJobRigging2026 @vividJobTa2026 @rockfishJobTa2026 @welevelJobTa2026 @weltenbauerJobVfx2026 \
  (in 18 der 19 Stellen der Stichprobe als Anforderung oder Aufgabe genannt)
- Fehlersuche- / Problemlösungsfähigkeiten @chadwick2009 @gdcCloward2011 @gdcGoodman2011 @gdcHash2011 @gdcButterworth2011 @gdcDecker2011 @gdcGood2011 @rockstarJobTaAnimation @rockstarJobTaDevOps @twoKJobRigger2026 @epicJobLeadTa2026 @epicJobTechAnim2026 @rockstarJobProcedural2026 @avalancheJobProfiling2026 @vividJobTa2026 @rockfishJobTa2026 @welevelJobTa2026 @weltenbauerJobVfx2026
- Interesse am Feld, Trieb zur Eigenrecherche und die Fähigkeit selbstständig zu lernen. @gdcParks2011 @gdcAkesson2011 @gdcLindqvist2011 @gdcGrimes2011 @gdcNielsen2011 @gdcGalanakis2011 @gdcPletcher2011 @gdcCloward2011 @gdcLong2011 @gdcGoodman2011 @gdcFerguson2011 @gdcHash2011 @gdcButterworth2011 @gdcDecker2011 @robinson2018 @rockstarJobProcedural2026 Dieser Skill wir sehr häufig genannt, da die benötigte Kombination aus Skills meist nie im Ganzen in Bildungseinrichtungen beigebracht wird und die verwendeten Technologien sich ständig wandeln.
- Fähigkeit anderen Dinge beizubringen (z. B. das Beibringen von effizienteren Wegen Assets zu erstellen oder wie selbst entwickelte Tools zu nutzen sind) @chadwick2009 @gdcLindqvist2011 @gdcHash2011 @gdcDecker2011 @riotJobTaManager2026 @insomniacJobFacial2026 @epicJobLeadTa2026 @epicJobTechAnim2026 @massiveJobUi2026 @rockfishJobTa2026
  - in Senior- und Lead-Rollen zusätzlich Mentoring und Führung anderer @TA:pl @riotJobTaManager2026 @epicJobLeadTa2026 @epicJobTechAnim2026 @massiveJobUi2026

== Weitere Ressourcen
=== Portfolios bekannter Technical Artists
/ Freya Holmér @acegikmo2025: ist Hauptentwicklerin von Shapes, einem Unity-Asset zum programmatischen Generieren von Vektorgrafiken und besitzt einen YouTube-Kanal mit Tutorials für Grafikprogrammierung
/ Ben Cloward @clowardPort2025: ein @TA bei Unity, der auch einen YouTube-Kanal besitzt und dort Tutorials für Shaderprogrammierung veröffentlicht @cloward2025
/ Bronwen Grimes @grimes2012: ist eine @TA bei Valve
/ Wolf van Veen @wolf2025: ist ein @TA der an Mortal Kombat 1 und Multiversus gearbeitet hat

=== Zertifikate
- generelle Unity-Zertifikate für Artists und Programmierer @unityCerts2024
- Unity-Zertifikate @unityCertsTA2025 explizit für @TA:pl (welche aber aktuell noch in einer Beta-Phase sind): 
  - Technical Artist - Shading & Effects
  - Technical Artist - Rigging & Animation
=== Misc
- #cite(<klos2023>, form: "author") und #cite(<hawes2025>, form: "author") fassen Portfolio-Tipps & generelle Karriere-Tipps für @TA:pl zusammen

== Karriereplan
Mein Ziel ist es, das Praxis-Semester als Junior @TA bei einem Game-Studio durchzuführen. Dazu brauche ich Skills, die ich über Kurse in den folgenden Semestern erwerben werde. Im Folgenden werden die für einen @TA relevanten Kurse aufgelistet und eine kurze Beschreibung meiner Ziele in diesem Semester gegeben. Konkrete Kursentscheidungen werde ich zu einem späteren Zeitpunkt treffen.

=== 1. & 2. Semester (2025/2026)
In den ersten beiden Semestern werde ich mich über Zuständigkeiten eines @TA:pl informieren und aktiv nach Studios suchen, in welchen ich mich zum @TA hocharbeiten könnte. Hierzu werde ich nach Ausschreibungen für Praktikantenplätze suchen, die spezifisch nach Artists oder Programmierern fragen. Damit ich sinnvoll auf die späteren Praktika vorbereitet bin, werde ich dann auf die konkreten Studios zugehen und fragen, was ich lernen müsste und wie mein Portfolio auszusehen hätte, um bei ihnen im Bereich der Tech-Art arbeiten zu können.

Mein Ziel ist es, mindestens 3 Firmen (wenn möglich auch im Ausland) zu haben, bei denen ich mich mit meinem Portfolio im #link(<internship>)[\6. Semester] bewerben kann. Außerdem weiß ich, welche Skills sie konkret von mir verlangen würden.

=== 3. Semester (2026)
Relevante Kurse, die in diesem Semester angeboten werden:
  - [Art] 2D Object Design
  - [Art] 3D Object Design
  - [Programming] Applied Mathematics for Game
Nach diesem Semester möchte ich die Basics von Asset Design (2D oder 3D) erlernt haben. Die grundlegenden mathematischen Kenntnisse, die ich als @TA benötige, will ich hier auch erwerben. Hierzu werde ich eine der beiden Object Design Vorlesungen besuchen und das gelernte in kleinen Beispielprojekten unabhängig von Hochschulprojekten und -abgaben umsetzen. Konkret möchte ich mindestens einen Shader für mein Portfolio geschrieben haben und diesen über die Anwendung an einem simplen Subjekt zeigen. Die Ergebnisse werde ich, wenn zeitlich möglich auf meiner Website hochladen und einen kleinen erklärenden Blogartikel schreiben.\ 
Welche der beiden Auslegungen (2D oder 3D) ich besuche, werde ich noch entscheiden. Nach diesem Semester möchte ich wissen, auf welchen der beiden Bereiche ich mich vorerst spezialisieren möchte.

=== 4. Semester (2026/2027)
Relevante Kurse, die in diesem Semester angeboten werden:
  - [Art] 2D Environment & Level Design
  - [Art] 3D Environment & Level Design
  - [Programming] Game Dev Disciplines & Technology
  - [Game Design] Level & Systems Design
In diesem Semester will ich das Wissen aus dem 3. Semester vertiefen. Hier will ich vor allem die technische Einbindung der erstellten Assets in die Spiele erlernen. Konkret habe ich das Ziel ein Tool zu entwickeln, welches das Einbinden von Assets in ein Spiel vereinfacht und für eines der Game-Projekte in diesem Semester verwendet werden kann. Was genau dieses Tool macht, werde ich davon abhängig machen, auf welche Richtung (2D oder 3D) ich mich zu diesem Zeitpunkt fokussiert habe.\
Mein Erlerntes möchte ich erneut in jeweils einem kleinen hochschulunabhängigen Portfolio-Projekt anwenden.

=== 5. Semester (2027)
Relevante Kurse, die in diesem Semester angeboten werden:
  - [Art] 2D Character & Creature Design
  - [Art] 3D Character & Creature Design
  - [Programming] Interface & UX for Games
  - [Programming] Data Design for Game
In diesem Semester habe ich vor allem die Tool-Entwicklung im Blick, da gerade bei Character-Rigging Tools eine große Menge an Zeit sparen können. Vor allem möchte ich mich hier auf Usability und Performance des Tools fokussieren. Die Lektionen, die im UI/UX-Design- oder Data-Design-Kurs gelernt wurden, werde ich dabei gut einsetzen können.

=== 6. Semester (2027/2028) <internship>
- Mein Ziel ist es, ein Praktikum bei einem etablierten Studio zu absolvieren und dabei praktische Skills in Richtung der Integration von Art in Games zu sammeln und zu verbessern. Konkret möchte ich hier vor allem entweder eine Stelle mit Fokus auf die Programmierung oder auf die Art und Asset-Erstellung ergattern.
- Hierzu werde ich, wie oben erwähnt, bereits im Vorhinein Anfragen verschicken und Studios fragen, was ich in den nächsten 2 Jahren lernen und im Portfolio haben sollte, um bei ihnen ein Praktikum absolvieren zu können.

==== Interessante Studios in Deutschland

/ Chasing Carrots @chasingCarrots2025: Dieses Studio würde mich interessieren, da es in der näheren Umgebung ist. Da es sich hier um ein kleineres Team handelt und dort auch konkret ein @TA angestellt ist, habe ich die Hoffnung mich mit diesem konkret über den Beruf eines @TA:pl austauschen zu können und die Tätigkeiten eines @TA:pl ausüben zu können.
/ Kalypso Studios @kalypso2025: Bei Kalypso verspreche ich mir vor allem die Arbeit mit großen Mengen an Assets, da ihr Portfolio hauptsächlich aus verschiedenen Management-Games besteht. Hier werde ich aber höchstwahrscheinlich entweder als Programmierer oder Artist einsteigen müssen.
/ InnoGames @innogames2025: InnoGames ist ein größeres Studio (350+ Angestellte) in dem ich die Arbeit in größeren Teams erlernen könnte.  


==== Interessante Studios in Schweden
/ Massive Entertainment  @massive2025: Ein Studio mit einem Portfolio von grafisch und technisch beeindruckenden Spielen wie #quote[Star Wars Outlaws], #quote[Avatar: Frontiers of Pandora] und #quote[Tom lancy's The Division 2]. Hier erhoffe ich mir zu lernen, wie ein @TA hochdetailierte Assets in Spiele integriert, ohne dabei die Performance leide zu lassen.
/ DICE Studios @dice2025: DICE sind Macher von einigen Battlefield Teilen, #quote[Battlefront] und #quote[Mirror's Edge]. Hier erhoffe ich mir, mit massiven Asset-Mengen in großen Teams zu arbeiten und zu erlernen, wie große Studios die Pipelines für solche Assets managen.
/ Arrow Head Games Studios @arrowheadInternship: Dieses Studio besitzt im Moment noch kein Praktikumsprogramm, arbeitet aber aktiv daran, eines anzubieten. Sie sind die Macher von #quote[Helldivers 2], einem grafisch hochwertigen Spiel mit gigantischen Massen an Gegner und visuellen Effekten. Wenn das Praktikantenprogramm rechtzeitig zum 6. Semester angeboten wird, kann ich mir gut vorstellen, dass ich dort viele Skills erlernen könnte, die ich als Technical Artist benötige.
/ Axolot Games @axolot2024: Die Macher von #quote[Raft] und #quote[Scrap Mechanic], beides Survival-Base-Builder-Games. Bei Axolot Games würde ich mir erhoffen zu lernen wie mit dynamischen Assets (Player gebaute Basen und Mechanismen) umzugehen ist und wie Systeme dahinter aussehen, die Konsistenz in Verhalten und Physik kontrollieren.

=== 7. Semester (2028)
  - Projekt: Game Project in der Rolle eines @TA und Programmierers
  - Bachelorarbeit
In diesem Semester werde ich das ganze gelernte fokussiert anwenden. Bestenfalls ist das Thema meiner Bachelorarbeit auch auf einen Themenbereich fokussiert, der für mich als @TA relevant ist.

=== Portfolio-Aufbauen (2028)
- Existierende Projekte, die sich für mein Portfolio eignen, aufbereiten und in Form einer Website an einem Platz zur Einsicht bereitstellen. Am besten sollten alle Projekte direkt im Browser ausgeführt werden können oder einsehbar sein.
- Kleinprojekte, die meine Skills in verschiedenen Bereichen zeigen, umsetzen
- mindestens ein kleines Spiel auf Itch.io oder Steam veröffentlichen, damit ich den Release-Prozess mindestens einmal komplett durchlaufen habe

=== Erster Job (2029)
- Junior-Stelle als Game-Programmierer bei einem AA oder AAA-Unternehmen

== Nebenprojekte und generelles herangehen
- In freien Minuten möchte ich kleinere Projekte realisieren, die ich entweder in meinem Portfolio präsentieren kann oder die mir relevante Skills beibringen. Nach aktuellem Plan habe ich folgende Mini-Projekte geplant:
  - Das Nachbauen von Spielmechaniken aus bekannten Spielen, mit gutem Game-Feel (z. B. das Movement aus Celeste) und schönen Effekte (z. B. das Gras aus Ghost of Tsushima), um die konkrete Arbeit mit Game-Engines zu erlenen. Hier habe ich eine konkrete Messlatte (die kopierten Spiele) an der ich meine Implementierung messen kann.
  - Motion Tracking mit Protokollanbindungen wie VRCFace, VMC und Ultraleap, um Rigging und Data-Streaming zu lernen
  - Dynamisches Level of Detail und Chunk-Loading für große Spiel-Welten, um mich konkret mit Performance und großen Datenmengen auseinanderzusetzen
- Kontakte mit anderen Technical-Artists zu knüpfen. Hierzu werde ich entsprechenden Online-Communities beitreten und regelmäßig (mindestens einmal pro Jahr) auf relevante Konferenzen und Messen gehen. Hierzu würde sich zum Beispiel die devcom anbieten.
- Ich muss mich auch aktiv selbst weiterbilden in den Bereichen, in denen das Studium keine Möglichkeiten bietet. Dafür habe ich bereits einige Bücher, die tiefer auf die technischen Details des Renderings eingehen. Das Besuchen von Kursen und das Teilnehmen an verschiedenen Programmier- und Kunst-Challenges  wird mir aber auch weiterhelfen. Konkret hätte ich hier Inktober und Swordtember zum Start angepeilt.
- Da sich die Technologie stetig weiterentwickelt, muss ich auch aktiv den Neuigkeiten über Engines und Entwicklerstudios folgen, damit meine Skills nicht veralten. Hierzu werde ich relevante E-Mail-Newsletter und RSS-Feeds abonnieren und lesen.

== Jobs <jobs>
Im Folgenden sind die für diese Analyse ausgewerteten Stellenausschreibungen aufgeführt: zuerst die 19 aktuellen Ausschreibungen (Stand 05.10.2026), danach die Ausschreibungen aus der ursprünglichen Analyse (2024/2025), die inzwischen nicht mehr online sind.

#figure(
  image("job-images/riotJobTaAnim2026.png", width: 100%, height: 22cm, fit: "contain"),
  caption: [Jobangebot als Senior Technical Artist mit Fokus auf Animation bei Riot Games (Shanghai) @riotJobTaAnim2026],
)

#figure(
  image("job-images/riotJobTaRender2026.png", width: 100%, height: 22cm, fit: "contain"),
  caption: [Jobangebot als Rendering Technical Artist bei Riot Games (Shanghai) @riotJobTaRender2026],
)

#figure(
  image("job-images/riotJobTaManager2026.png", width: 100%, height: 22cm, fit: "contain"),
  caption: [Jobangebot als Technical Art Manager bei Riot Games (Sydney) @riotJobTaManager2026],
)

#figure(
  image("job-images/twoKJobShader2026.png", width: 100%, height: 22cm, fit: "contain"),
  caption: [Jobangebot als Senior Shader Technical Artist bei 2K (San Mateo) @twoKJobShader2026],
)

#figure(
  image("job-images/twoKJobRigger2026.png", width: 100%, height: 22cm, fit: "contain"),
  caption: [Jobangebot als Senior Technical Artist (Rigger) bei Visual Concepts / 2K (Kalifornien) @twoKJobRigger2026],
)

#figure(
  image("job-images/insomniacJobFacial2026.png", width: 100%, height: 22cm, fit: "contain"),
  caption: [Jobangebot als Senior Facial Character TD bei Insomniac Games (Remote USA) @insomniacJobFacial2026],
)

#figure(
  image("job-images/epicJobLeadTa2026.png", width: 100%, height: 22cm, fit: "contain"),
  caption: [Jobangebot als Lead Technical Artist bei Epic Games (Cary); Ausschreibungstext aus der Greenhouse-API, da die Webseite nicht automatisiert abrufbar war @epicJobLeadTa2026],
)

#figure(
  image("job-images/epicJobTechAnim2026.png", width: 100%, height: 22cm, fit: "contain"),
  caption: [Jobangebot als Lead Technical Animator bei Epic Games (Cary); Ausschreibungstext aus der Greenhouse-API, da die Webseite nicht automatisiert abrufbar war @epicJobTechAnim2026],
)

#figure(
  image("job-images/lightspeedJobTa2026.png", width: 100%, height: 22cm, fit: "contain"),
  caption: [Jobangebot als Senior Technical Artist bei Tencent LightSpeed Studios (Irvine) @lightspeedJobTa2026],
)

#figure(
  image("job-images/lightspeedJobMotion2025.png", width: 100%, height: 22cm, fit: "contain"),
  caption: [Jobangebot als Motion Technical Artist bei Tencent LightSpeed Studios (Osaka / Tokio) @lightspeedJobMotion2025],
)

#figure(
  image("job-images/rockstarJobProcedural2026.png", width: 100%, height: 22cm, fit: "contain"),
  caption: [Jobangebot als Senior Technical Artist mit Fokus auf prozedurale Art bei Rockstar Games (Leeds) @rockstarJobProcedural2026],
)

#figure(
  image("job-images/massiveJobUi2026.png", width: 100%, height: 22cm, fit: "contain"),
  caption: [Jobangebot als Senior UI Technical Artist bei Ubisoft Massive Entertainment (Malmö) @massiveJobUi2026],
)

#figure(
  image("job-images/techlandJobTa2026.png", width: 100%, height: 22cm, fit: "contain"),
  caption: [Jobangebot als Technical Artist mit Fokus auf Rendering bei Techland (Breslau / Warschau); am 05.10.2026 bereits geschlossen @techlandJobTa2026],
)

#figure(
  image("job-images/avalancheJobProfiling2026.png", width: 100%, height: 22cm, fit: "contain"),
  caption: [Jobangebot als Senior Technical Artist mit Fokus auf Profiling bei Avalanche Studios Group (Stockholm) @avalancheJobProfiling2026],
)

#figure(
  image("job-images/eaJobRigging2026.png", width: 100%, height: 22cm, fit: "contain"),
  caption: [Jobangebot als Technical Artist mit Fokus auf Rigging und Animation bei Electronic Arts / Codemasters (Großbritannien) @eaJobRigging2026],
)

#figure(
  image("job-images/vividJobTa2026.png", width: 100%, height: 22cm, fit: "contain"),
  caption: [Jobangebot als Senior Technical Artist bei Vivid Games (Bydgoszcz / Remote) @vividJobTa2026],
)

#figure(
  image("job-images/rockfishJobTa2026.png", width: 100%, height: 22cm, fit: "contain"),
  caption: [Jobangebot als Technical Artist bei ROCKFISH Games (Hamburg) @rockfishJobTa2026],
)

#figure(
  image("job-images/welevelJobTa2026.png", width: 100%, height: 22cm, fit: "contain"),
  caption: [Jobangebot als Senior Unreal Technical Artist bei welevel (München) @welevelJobTa2026],
)

#figure(
  image("job-images/weltenbauerJobVfx2026.png", width: 100%, height: 22cm, fit: "contain"),
  caption: [Jobangebot als Tech Artist VFX bei weltenbauer (Wiesbaden / Remote) @weltenbauerJobVfx2026],
)

#figure(
  image("job-images/unreal-engine-tech-artist.png"),
  caption: [Jobangebot als Technical Artist im Unreal Engine Team @unrealJob],
)

#figure(
  image("job-images/principal-technical-artist-rockstar.png", height: 24cm),
  caption: [Jobangebot als Principal Technical Artist bei Rockstar mit Fokus auf Animation @rockstarJobTaAnimation]
)

#figure(
  image("job-images/techincal-artist-devops-rockstar.png", height: 24cm),
  caption: [Jobangebot als Technical Artist bei Rockstar mit Fokus auf DevOps @rockstarJobTaDevOps]
)

#figure(
  image("job-images/technical-artist-microsoft.png"),
  caption: [Jobangebot als Technical Artist bei Microsoft @microsoftJob]
)

#figure(
  image("job-images/senior-technical-artist-rendering-riot.png",height: 23cm),
  caption: [Jobangebot als Technical Artist bei Riot mit Fokus auf Rendering und UI/UX @riotJob],
)
#bibliography("sources.yml", style: "apa") 