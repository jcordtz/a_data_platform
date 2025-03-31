# Eine Datenplattform - Sicherheit "Im Aufbau"

[![en](https://img.shields.io/badge/lang-en-red.svg)](Security.md)
[![dk](https://img.shields.io/badge/lang-da--dk-green.svg)](Security-da.md)
[![de](https://img.shields.io/badge/lang-de-yellow.svg)](Security-de.md)
[![main](https://img.shields.io/badge/main-document-blue.svg)](../README.md)

![security](../images/security.png) ![microsoft](../images/microsoft.png)

## Einleitung

Dieser Abschnitt konzentriert sich auf den "nur" Sicherheitsaspekt beim Umgang mit Daten. Es behandelt die Herausforderungen, die angegangen werden müssen, sowie einige Gedanken, wie man damit umgehen kann.

In diesem Teil geht es auch viel um Prozesse und damit um die Hervorhebung, dass man die Datensicherheit nicht lösen kann, indem man "einfach ein paar Kästchen in seinen IT-Systemen anklickt".

In Bezug auf den Geltungsbereich steht dieser Abschnitt im Einklang mit dem gesamten Datenplattform-Dokument und beschreibt daher (noch) keine anderen Aspekte der Datensicherheit als die, die dies einmal unterstützen.

Ich denke, die meisten Mechanismen sind für andere Arten von Daten verwendbar - einschließlich auch der Dokumentenverarbeitung für "Endbenutzer" wie Microsoft OneDrive.

## Arten von Bedrohungen

Bevor wir uns damit befassen, wie Daten geschützt werden können, müssen wir verstehen, wovor wir uns schützen.

Im Folgenden finden Sie eine Liste gängiger Arten von Bedrohungen, die gegen unseren Datenbestand verwendet werden können. Diese Liste wird "in Überschriften kopiert" von
dieser Wikipedia-Artikel - <https://en.wikipedia.org/wiki/Computer_security>, wo viel detailliertere Informationen zu finden sind.

### Hintertür

Eine Hintertür in einem Computersystem, einem Kryptosystem oder einem Algorithmus ist jede geheime Methode, um die normale Authentifizierung oder Sicherheitskontrollen zu umgehen.

### Denial-of-Service-Angriff

Denial-of-Service-Angriffe (DoS) zielen darauf ab, dass ein Computer oder eine Netzwerkressource für die vorgesehenen Benutzer nicht verfügbar ist.

### Angriffe auf physischen Zugriff

Von einem Direktzugriffsangriff spricht man, wenn sich ein nicht autorisierter Benutzer (ein Angreifer) physischen Zugriff auf einen Computer verschafft und höchstwahrscheinlich direkt Daten von diesem kopiert
oder Informationen stehlen. Angreifer können auch die Sicherheit gefährden, indem sie Änderungen am Betriebssystem vornehmen, Software-Würmer, Keylogger,
verdeckte Abhörgeräte oder die Verwendung von drahtlosen Mikrofonen.

### Lauschen

Abhören ist der Akt des heimlichen Abhörens eines privaten Computergesprächs (Kommunikation), normalerweise zwischen Hosts in einem Netzwerk. Sie tritt in der Regel auf, wenn ein Benutzer eine Verbindung zu einem Netzwerk herstellt, in dem der Datenverkehr nicht gesichert oder verschlüsselt ist, und vertrauliche Geschäftsdaten an einen Kollegen sendet, die, wenn sie von einem Angreifer abgehört werden, ausgenutzt werden könnten.
Daten, die über ein offenes Netzwerk übertragen werden, ermöglichen es einem Angreifer, eine Schwachstelle auszunutzen und sie mit verschiedenen Methoden abzufangen.

### Schadsoftware

Bösartige Software (Malware) ist jeder Softwarecode oder jedes Computerprogramm, das "absichtlich geschrieben wurde, um einem Computersystem oder seinen Benutzern zu schaden".

### Man-in-the-Middle-Angriffe

Bei Man-in-the-Middle-Angriffen (MITM) versucht ein böswilliger Angreifer, die Kommunikation zwischen zwei Parteien abzufangen, zu überwachen oder zu modifizieren, indem er die Identitäten einer oder beider Parteien fälscht und sich dazwischen einschleust.

### Phishing

Phishing ist der Versuch, vertrauliche Informationen wie Benutzernamen, Passwörter und Kreditkartendaten direkt von Benutzern zu erhalten, indem die Benutzer getäuscht werden.

### Ausweitung von Berechtigungen

Privilegienausweitung beschreibt eine Situation, in der ein Angreifer mit einem gewissen Grad an eingeschränktem Zugriff in der Lage ist,
Erhöhen Sie ihre Berechtigungen oder Zugriffsebene.

### Seitenkanal-Angriff

Jedes Computersystem beeinflusst seine Umgebung in irgendeiner Form. Diese Wirkung, die es auf seine Umgebung hat, kann von elektromagnetischer Strahlung bis hin zu Restwirkungen reichen
auf RAM-Zellen, die in der Folge einen Cold-Boot-Angriff ermöglichen, bis hin zu Hardware-Implementierungsfehlern, die den Zugriff oder das Erraten anderer Werte ermöglichen, die
sollte normalerweise nicht zugänglich sein.

### Soziales Ingenieurwesen

Social Engineering zielt im Zusammenhang mit der Computersicherheit darauf ab, einen Benutzer davon zu überzeugen, Geheimnisse wie Passwörter, Kartennummern usw. preiszugeben oder physischen Zugang zu gewähren, indem er sich beispielsweise als leitender Angestellter, Bank, Auftragnehmer oder Kunde ausgibt. Dabei geht es in der Regel darum, das Vertrauen der Menschen auszunutzen und sich auf ihre kognitiven Verzerrungen zu verlassen. Ein häufiger Betrug sind E-Mails, die an Mitarbeiter der Buchhaltungs- und Finanzabteilung gesendet werden, sich als deren CEO ausgeben und dringend zum Handeln auffordern. Eine der Haupttechniken des Social Engineering sind Phishing-Angriffe.

### Spoofing

Spoofing ist ein Akt, bei dem durch die Fälschung von Daten (z. B. einer IP-Adresse oder eines Benutzernamens) vorgetäuscht wird, eine gültige Entität zu sein, um Zugang zu Informationen oder Ressourcen zu erhalten, die man sonst nicht erhalten kann. Spoofing ist eng mit Phishing verwandt.

### Manipulation

Unter Manipulation versteht man eine böswillige Modifikation oder Veränderung von Daten. Es handelt sich um eine vorsätzliche, aber nicht autorisierte Handlung, die zur Änderung eines Systems, von Systemkomponenten, seines beabsichtigten Verhaltens oder von Daten führt. Beispiele dafür sind die sogenannten Evil Maid-Angriffe und die Einschleusung von Überwachungsfunktionen durch Sicherheitsdienste in Router.

### HTML-Schmuggel

HTML-Schmuggel ermöglicht es einem Angreifer, einen bösartigen Code in eine bestimmte HTML-Datei oder Webseite einzuschleusen. HTML-Dateien können Payloads enthalten, die als gutartige, inerte Daten getarnt sind, um Inhaltsfilter zu umgehen. Diese Nutzlasten können auf der anderen Seite des Filters rekonstruiert werden.

## Daten und Sicherheit

Datensicherheit ist ein entscheidender Aspekt des Betriebs eines jeden Unternehmens. Dabei geht es darum, sensible Informationen während ihres gesamten Lebenszyklus vor unbefugtem Zugriff, Beschädigung oder Diebstahl zu schützen.
Durch die Implementierung starker *Daten *-Sicherheitsmaßnahmen können Unternehmen dazu beitragen, ihre wertvollen Ressourcen zu schützen, relevante Compliance-Anforderungen zu erfüllen und das Vertrauen der Kunden in die Nutzung von Daten zu erhalten.

Datensicherheit ist wichtig, weil sie Unternehmen hilft, sich vor Cyberangriffen, Insider-Bedrohungen und menschlichem Versagen zu schützen, die alle zu Datenschutzverletzungen führen können. Die vier Schlüsselfragen im Bereich der
Sicherheit sind Vertraulichkeit, Integrität, Verfügbarkeit und Compliance. Da Daten zunehmend zum Ziel von Angreifern werden, benötigen Unternehmen Sicherheit am Ort der *Daten*, um die Sicherheit und
in der Lage sein, es schneller wiederherzustellen. Das Ziel der Datensicherheit ist es, Ihre Daten so widerstandsfähig wie möglich gegen jede Art von Missbrauch zu machen, z. B. Angriffe, Fehler usw.

Zusammenfassend lässt sich sagen, dass die Datensicherheit für die Wahrung der Vertraulichkeit, Integrität und Verfügbarkeit der Daten eines Unternehmens unerlässlich ist. Es hilft, wertvolle Vermögenswerte zu schützen und Compliance zu erfüllen
Anforderungen zu erfüllen und das Vertrauen der Kunden zu erhalten.

## Gesetzgebung

Auf politischer/legislativer Ebene ist in den letzten Jahren (glaube ich) viel sehr gute Arbeit geleistet worden, um Anforderungen (Gesetze) zu skizzieren und festzulegen 
darüber, was wir tun müssen, um unsere Datenbestände zu schützen. Und damit unsere Kunden, Bürger und uns selbst als Individuen zu schützen.

In diesem Dokument werden die beiden EU-Richtlinien NIS2 und GDPR sowie die US-amerikanischen HIPAA-Regeln als Beispiele für die Umsetzung von Rechtsvorschriften verwendet.

1) Die DSGVO wird verwendet, weil sie beschreibt, was Sie mit personenbezogenen Daten tun können und wie Sie daher mit personenbezogenen wertvollen Daten (PII) umgehen sollten.
2) NIS2 wird verwendet, weil es sagt, was zu tun ist, wenn etwas schief geht und was zu beachten ist, um dies zu vermeiden.
3) HIPAA wird verwendet, weil es sich auf Gesundheitsinformationen konzentriert und eigentlich drei Gesetze in einem ist. Sie besteht aus der Privacy Rule, der Security Rule und der 
die Regel zur Benachrichtigung über Datenschutzverletzungen.
4) EU Artificial Intelligence Act (EU AI Act) ist eine Verordnung der Europäischen Union in Bezug auf künstliche Intelligenz.

### DSGVO

Diese Verordnung enthält Vorschriften zum Schutz * natürlicher Personen* bei der Verarbeitung von **personenbezogenen** Daten und
Vorschriften über den freien Verkehr personenbezogener Daten.

Diese Verordnung schützt die Grundrechte und Grundfreiheiten natürlicher Personen und insbesondere ihr Recht auf Schutz personenbezogener Daten.
Und die DSGVO besagt, dass der freie Verkehr personenbezogener Daten innerhalb der Europäischen Union aus Gründen weder eingeschränkt noch verboten werden darf
im Zusammenhang mit dem Schutz natürlicher Personen bei der Verarbeitung personenbezogener Daten.

Diese Richtlinie schützt also die Daten des Einzelnen vor Missbrauch. Eines der Hauptziele der DSGVO-Richtlinie ist, dass Daten **klassifiziert**werden müssen.

Artikel-Nr.: <https://gdpr-info.eu/art-1-gdpr>

### NIS2

Die NIS2-Richtlinie (Europäische Richtlinie 2022/2555) ist ein Rechtsrahmen zur Verbesserung der Cybersicherheit in der gesamten Europäischen Union durch 
Schaffung eines hohen gemeinsamen Sicherheitsniveaus für Netz- und Informationssysteme.

Sie baut auf der ursprünglichen NIS-Richtlinie auf, erweitert ihren Geltungsbereich und verschärft die Anforderungen, um den sich entwickelnden Cyberbedrohungen besser begegnen zu können.

Im Rahmen von NIS 2 müssen wesentliche und wichtige Stellen geeignete, verhältnismäßige technische, betriebliche und organisatorische Maßnahmen ergreifen, um 
Cybersicherheitsrisiken.

Diese Maßnahmen zielen darauf ab, Netzwerk- und Informationssysteme zu schützen sowie die Auswirkungen von Vorfällen auf den Dienst zu verhindern oder zu minimieren 
Empfänger und miteinander verbundene Dienste.

Die Richtlinie schreibt einen "All-Hazard"-Ansatz vor, was bedeutet, dass Unternehmen darauf vorbereitet sein müssen, ein breites Spektrum von Bedrohungen zu bewältigen, von Cyberbedrohungen 
Angriffe auf physische Störungen, um umfassenden Schutz und Ausfallsicherheit in ihrem Betrieb zu gewährleisten.

Diese Richtlinie regelt, was in Bezug auf die Verwendung von Daten zu beachten ist. Eines der Hauptziele besteht darin, dass Sie wissen müssen, wo **alle** Ihre Daten sind - wie im am häufigsten verwendeten Framework *hinter* NIS 2 beschrieben, CIS 18.

Artikel-Nr.: <https://www.nis-2-directive.com/>

### HIPAA

* Die Privacy Rule: Die HIPAA Privacy Rule legt nationale Standards zum Schutz der Krankenakten von Einzelpersonen und anderer individuell identifizierbarer Gesundheitsinformationen (zusammenfassend als "geschützte Gesundheitsinformationen" definiert) fest und gilt für Krankenversicherungen, Clearingstellen für das Gesundheitswesen und Gesundheitsdienstleister, die bestimmte Transaktionen im Gesundheitswesen elektronisch durchführen.
* Die Sicherheitsregel: Die HIPAA-Sicherheitsregel legt nationale Standards zum Schutz der elektronischen persönlichen Gesundheitsdaten von Einzelpersonen fest, die von einer abgedeckten Einrichtung erstellt, empfangen, verwendet oder gepflegt werden. Die Sicherheitsregel erfordert angemessene administrative, physische und technische Sicherheitsvorkehrungen, um die Vertraulichkeit, Integrität und Sicherheit elektronisch geschützter Gesundheitsinformationen zu gewährleisten. 
* Benachrichtigungen über Datenschutzverletzungen: Die Breach Notification Rule verlangt von betroffenen Unternehmen und Geschäftspartnern, betroffene Personen, das HHS und in einigen Fällen die Medien über einen Verstoß gegen ungesicherte PHI zu informieren.

HIPAA ist zusammen mit anderen Regeln/Gesetzen in Kraft, so dass Daten nach diesen verschiedenen Regeln leben und behandelt werden müssen.

Diese Regeln sind z. B. der Virginia Consumer Data Protection Act, der Biometric Information Privacy Act von Illinois usw.

Artikel-Nr.: <https://www.hhs.gov/hipaa/index.html>

### EU-Rechtsakt über künstliche Intelligenz

Der EU Artificial Intelligence Act (EU AI Act) ist eine Verordnung der Europäischen Union in Bezug auf künstliche Intelligenz (KI). Mit ihr wird eine gemeinsame 
und Rechtsrahmen für KI in der Europäischen Union. Es trat am 1. August 2024 in Kraft, mit Bestimmungen, die in den folgenden 6 bis 36 Monaten schrittweise in Kraft treten sollen.

Sie deckt alle Arten von KI in einem breiten Spektrum von Sektoren ab, mit Ausnahmen für KI-Systeme, die ausschließlich für militärische, nationale Sicherheits-, Forschungs- und nicht-berufliche Zwecke eingesetzt werden.

Als Teil der Produktregulierung verleiht sie dem Einzelnen keine Rechte, sondern reguliert die Anbieter von KI-Systemen und die Einrichtungen, die KI im beruflichen Kontext einsetzen.

Das Gesetz klassifiziert nicht ausgenommene KI-Anwendungen nach ihrem Risiko, Schaden anzurichten. Es gibt vier Stufen – inakzeptabel, hoch, begrenzt, minimal – plus eine zusätzliche Kategorie für Allzweck-KI.

* Anwendungen mit inakzeptablen Risiken sind verboten.
* Anwendungen mit hohem Risiko müssen Sicherheits-, Transparenz- und Qualitätsverpflichtungen erfüllen und Konformitätsbewertungen unterzogen werden.
* Für Anwendungen mit begrenztem Risiko gelten nur Transparenzpflichten.
* Anwendungen mit minimalem Risiko sind nicht reguliert.

Für Allzweck-KI werden Transparenzanforderungen auferlegt, mit reduzierten Anforderungen für Open-Source-Modelle und zusätzlichen Bewertungen für Modelle mit hoher Leistungsfähigkeit.

Artikel-Nr.: <https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:32024R1689>

## Bedrohungen

Wenn es um Sicherheit geht, ist es auch wichtig zu verstehen, wovor wir uns schützen wollen - was sind die Bedrohungen?

Es gibt einige offensichtliche Bedrohungen, die mit dem Begriff Cybersicherheit einhergehen. Wir müssen Daten vor Bedrohungen von außen schützen.
Diese Bedrohungen reichen von anderen, die unsere Daten für den eigenen Gebrauch stehlen wollen, über das "Hijacking" von Daten bis hin zu Terrorakten wie dem Löschen/Zerstören von Daten.

Eine weitere Bedrohung, die wir verstehen müssen, sind interne Bedrohungen.

## Logischer Mechanismus

Entdecken Sie Ihr wertvollstes Gut, Ihre Daten
Sichere Konfiguration zur Abwehr ausgeklügelter Angriffe
Erkennen Sie, wie Benutzer mit Daten interagieren, und identifizieren Sie Insider-Risiken
Stellen Sie sicher, dass Ihre Daten vor Datenlecks und Datenexfiltration geschützt bleiben

### Klassifizierung

### Beschriftung

### Richtlinien


## Technischer Mechanismus

In *Abbildung 1* finden Sie mehrere Möglichkeiten zum Schutz von Daten, die in Azure verfügbar sind. Dies befasst sich nicht mit den allgemeineren Dingen wie Netzwerksicherheit, Multi-Faktor-Authentifizierung usw., von denen angenommen wird, dass sie vorhanden sind.

! [Abbildung 1](.. /Bilder/Deutsch/Slide8.JPG)

*Abbildung 1*

**Anwendungsbasierte Zugriffskontrolle** – deckt ab, dass eine Anwendung wie SAP, Snowflake, Fabric, Dynamics usw. eine Anmeldung erfordert und somit den korrekten Zugriff auf die zugrunde liegenden Daten gewährt, die in der Anwendung verwendet werden. Häufig handelt es sich bei dem zugrunde liegenden Datenspeicher um eine (relationale) Datenbank, auf die von der Anwendung aus über ein Dienstkonto zugegriffen wird.

**Rollenbasierte Zugriffssteuerung** – auch bekannt als RBAC. Dies steuert den Zugriff auf eine bestimmte Ressource und wie sie verwendet werden kann. So populär gesagt – kann man an das Speicherkonto gelangen?

**Attribute Based Access Control** – auch bekannt als ABAC – bietet einen zusätzlichen Mechanismus zum Gewähren von Zugriffen, der eine "Suche" in einem anderen System durchführt. Angenommen, Sie können auf ein Speicherkonto zugreifen, aber es kann sich um ein Verzeichnis handeln, für das Sie Teil eines bestimmten Projekts sein müssen. In diesem Fall können Sie einen ABAC-"Lookup" durchführen, der dies prüft, bevor er Zugriff gewährt – abhängig von diesem Ergebnis.

**Identitätsbasierte Zugriffskontrolle** – deckt die Funktion ab, mit der einer bestimmten Ressource eine Identität zugewiesen werden kann (indem sie zu einem "Menschen" wird). Und dann stellen Sie sicher, dass der Zugriff auf ein bestimmtes Speicherkonto nur diesem "Menschen" gewährt wird, und daher müssen Sie diese Anwendung verwenden, um auf die Daten zuzugreifen.

**Verschlüsselungsbasierte Zugriffskontrolle** – dies ist keine wirkliche Zugriffskontrolle, da der *Daten*-Speicher zugänglich ist, ich aber die *Daten* nur lesen/verwenden kann,  wenn ich den Schlüssel zur Entschlüsselung habe. Es kann (sollte) also Teil Ihrer Verteidigung sein.

**Removal Based Access Control** – dieser Ansatz ist nur im **Veröffentlichungsbereich** möglich. Dieser Ansatz nutzt den Aspekt des **Veröffentlichungsbereichs**, dass ein Datensatzspeicher nur "so lange lebt, wie er verwendet wird", in diesem Fall "... richtig verwendet werden". Da dieser Ansatz die Fähigkeit erfordert, einen bestimmten *dataset*-Speicher neu erstellen zu können  , kann dies auch als Verteidigungsmechanismus verwendet werden. Wenn also ein Angriff realisiert wird, besteht der einfachste Weg, dies zu stoppen, darin, die angegriffene Ressource einfach zu entfernen, wenn das Risiko eines  *Datensatzes* Verlusts besteht.

## Datensicherheit

Laut Wikipedia ist DataOps eine Sammlung von Praktiken, Prozessen und Technologien, die eine ganzheitliche und prozessorientierte Sicht auf Daten mit Automatisierung und Methoden aus dem agilen Software-Engineering kombiniert, um Qualität, Geschwindigkeit und Zusammenarbeit zu verbessern und eine Kultur der kontinuierlichen Verbesserung rund um die Datenanalyse zu fördern.

Während DataOps als eine Reihe von Best Practices begann, hat es sich inzwischen zu einem neuen und eigenständigen Ansatz für die Datenanalyse entwickelt. DataOps deckt den gesamten Datenlebenszyklus von der Datenaufbereitung bis zur Berichterstattung ab und erkennt die gegenseitige Abhängigkeit des Datenanalyseteams und der IT-Abläufe an.

In der Softwareentwicklung legt DevOps den Schwerpunkt auf Continuous Delivery durch den Einsatz von On-Demand-IT-Ressourcen und durch die Automatisierung von Test und Bereitstellung von Software. Diese Art der Softwareentwicklung und des IT-Betriebs hat die Geschwindigkeit, Qualität, Vorhersagbarkeit und den Umfang der Softwareentwicklung und -bereitstellung verbessert.

DataOps greift Methoden von DevOps auf und zielt darauf ab, dieselben Verbesserungen in die Datenanalyse zu bringen. DataOps sollten nicht mit einer bestimmten Technologie, Architektur, einem Tool, einer Sprache oder einem Framework verknüpft werden.



[![en](https://img.shields.io/badge/lang-en-red.svg)](Security.md)
[![dk](https://img.shields.io/badge/lang-da--dk-green.svg)](Security-da.md)
[![de](https://img.shields.io/badge/lang-de-yellow.svg)](Security-de.md)
[![main](https://img.shields.io/badge/main-document-blue.svg)](../README.md)