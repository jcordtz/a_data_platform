![microsoft](../images/microsoft.png)

# Eine Datenplattform - Sicherheit

[![en](https://img.shields.io/badge/lang-en-blue.svg)](Security.md)
[![dk](https://img.shields.io/badge/lang-da-red.svg)](Security-da.md)
[![de](https://img.shields.io/badge/lang-de-yellow.svg)](Security-de.md)
[![main](https://img.shields.io/badge/main-document-green.svg)](../README.md)

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

Zusammenfassend lässt sich sagen, dass die Datensicherheit für die Wahrung der Vertraulichkeit, Integrität und Verfügbarkeit der Daten eines Unternehmens unerlässlich ist. Es hilft, wertvolle Vermögenswerte zu schützen und Compliance zu erfüllen Anforderungen zu erfüllen und das Vertrauen der Kunden zu erhalten.

## Ausstiegsstrategie und Risikobewertung

Einer der "Mechanismen", der im Zusammenhang mit der Datensicherheit angesprochen werden sollte, ist die Fähigkeit zum "Ausstieg", d.h. die Etablierung und Aufrechterhaltung einer Exit-Strategie.
Diese Exit-Strategie kann dann auch als "Ankerpunkt" für eine Risikobewertung der zu implementierenden Datenplattform verwendet werden.

Diese 2 Themen werden in diesem [Abschnitt](Exit-and-risc-strategies-de.md) weiter diskutiert.

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

Der logische Mechanismus deckt Elemente ab, die mit dem Prozess zu tun haben, den wir einrichten müssen, um sicherzustellen, dass wir die angeforderten/erforderlichen Sicherheitsstufen unterstützen können.

1) Wir müssen in der Lage sein, die Daten zu entdecken – das bedeutet, dass wir in der Lage sein müssen, ihren Standort zu erkennen, wem sie gehören, welche Struktur sie haben, zu welchen Umgebungen sie gehören (z. B. dev, non-prod, prod) usw.
2) Wir müssen auch herausfinden, ob es Elemente wie Konfigurationsdateien, Skripte (z.B. IaC-Programme usw.) usw. gibt, die dokumentiert werden müssen und einen Einfluss auf unsere Daten haben (könnten).
3) Erkennen Sie, wie Benutzer mit Daten interagieren, und identifizieren Sie potenzielle Insider-Risiken.
4) Richten Sie Verarbeitungen ein, die sicherstellen können, dass die Daten vor Datenlecks und Datenexfiltrationsaktivitäten geschützt bleiben.
5) Richten Sie Prozesse ein, die sicherstellen, dass wir alle möglicherweise kompromittierten Daten wiederherstellen können. Und dass wir Prozesse haben, die regelmäßig testen, ob diese Wiederherstellung funktioniert.

Bei solchen Prozessen müssen wir auch über einen Mechanismus verfügen, der uns helfen kann, die Art der betreffenden Daten zu verstehen.

Ein solcher Mechanismus wird im nächsten Abschnitt beschrieben.

## Markieren von Daten

Um sicherzustellen, dass wir wissen, welche Art die Daten haben, die wir betrachten, z. B. ob es sich um Produktionsdaten oder Nicht-Produktionsdaten handelt oder ob es sich um Daten handelt, die außerhalb unseres Unternehmens geteilt werden können, müssen wir
in der Lage, Daten zu markieren.

### Empfindlichkeit

Wir müssen in der Lage sein, Daten in unserer Organisation zu klassifizieren, damit wir wissen, welche Art von Sensibilität sie darstellen - d.h. wie sie verwendet werden dürfen. Diese Empfindlichkeiten helfen bei der Bestimmung
Elemente wie z. B. wer Zugriff auf diese Daten hat, wie lange Daten aufbewahrt werden müssen/müssen und ob wir sie vorläufig löschen können.

Oft sehen wir Sensibilitätsstufen wie: persönlich, öffentlich, allgemein, vertraulich und streng vertraulich. Hinweis: Hierbei handelt es sich um Office365-Standardstufen.

1) Persönlich - Nicht geschäftliche Daten, nur für den persönlichen Gebrauch - wie persönliche Bilder und ein Telefon.
2) Öffentlich - Geschäftsdaten, die speziell für die öffentliche Nutzung aufbereitet und genehmigt wurden - wie eine Pressemitteilung.
3) Allgemein - Geschäftsdaten, die nicht für den öffentlichen Gebrauch bestimmt sind. Dies kann jedoch bei Bedarf mit externen Partnern geteilt werden. Beispiele hierfür sind das interne Telefonbuch eines Unternehmens, Organigramme, interne Standards und die meiste interne Kommunikation.
4) Vertraulich - Sensible Geschäftsdaten, die dem Unternehmen Schaden zufügen könnten, wenn sie an Unbefugte weitergegeben werden. Beispiele hierfür sind Verträge, Sicherheitsberichte, Prognosezusammenfassungen und Verkaufskontodaten.
5) Streng vertraulich - Sehr sensible Geschäftsdaten, die dem Unternehmen Schaden zufügen würden, wenn sie an Unbefugte weitergegeben würden. Beispiele hierfür sind Mitarbeiter- und Kundeninformationen, Passwörter, Quellcode und vorab angekündigte Finanzberichte.

### Gemeinsame Frameworks

Viele Frameworks und gesetzliche Vorschriften haben spezifische Anforderungen, die Organisationen dazu ermutigen, Daten zu klassifizieren. 
Beispiele für solche Regelungen sind wie Flows:

1) SOC 2: Die SOC 2 Trust Services Criteria verlangen, dass Serviceorganisationen, die die Vertraulichkeitskategorie in ihr Audit einbeziehen, nachweisen, dass sie vertrauliche Informationen identifizieren und aufbewahren, um die Ziele des Unternehmens in Bezug auf die Vertraulichkeit zu erreichen.
2) HIPAA: PHI gelten als Hochrisikodaten. Daher verlangt die HIPAA-Sicherheitsregel, dass alle betroffenen Unternehmen und Geschäftspartner administrative Sicherheitsvorkehrungen treffen, die die Vertraulichkeit, Integrität und Verfügbarkeit von PHI gewährleisten. Darüber hinaus schränkt die HIPAA-Datenschutzregel die Verwendung und Offenlegung von PHI ein und zwingt betroffene Unternehmen und Geschäftspartner gleichermaßen, Verfahren zur Klassifizierung der von ihnen gesammelten, verwendeten, gespeicherten oder übertragenen Daten festzulegen.
3) PCI: Um die PCI DSS-Anforderung 9.6.1 zu erfüllen, müssen Unternehmen "Daten klassifizieren, damit die Vertraulichkeit der Daten bestimmt werden kann".
4) DSGVO: Organisationen, die mit den personenbezogenen Daten von EU-Datensubjekten umgehen, müssen die Arten von Daten, die sie sammeln, klassifizieren, um das Gesetz einzuhalten. Darüber hinaus stuft die DSGVO bestimmte Daten – Rasse, ethnische Herkunft, politische Meinungen, biometrische Daten und Gesundheitsdaten – als "besonders" ein und unterliegt daher einem zusätzlichen Schutz. Das bedeutet nicht nur, dass Unternehmen wissen müssen, welche Arten von Daten sie besitzen, sondern dass sie auch in der Lage sein müssen, solche Daten zu kennzeichnen.

### Klassifizierung

Klassifizierungen sind Ausdrücke oder Muster, mit deren Hilfe identifiziert werden kann, welche Art von Daten in einer Datei oder Spalte in einer Tabelle zu finden sind.
Beispiele für solche Klassifizierungen sind die Sozialversicherungsnummer, die Führerscheinnummer, die Bankkontonummer usw.

Eine Kombination von Klassifizierungen hilft oft, die richtige Empfindlichkeit für einen bestimmten *Daten* oder *Datensatz* einzustellen  - entweder manuell oder während eines Scanvorgangs.

### Richtlinien

Policies hilft bei der Durchsetzung organisatorischer Standards und bei der Bewertung der Compliance und stützt sich sehr oft auf ein Framework wie ISO27xxx, NIST oder CIS18. 

Häufige Anwendungsfälle für solche Richtlinien sind die Implementierung von Governance für Datenkonsistenz, Einhaltung gesetzlicher Vorschriften, Sicherheit und Verwaltung. 

In einer Azure-Umgebung sind bereits Richtliniendefinitionen für gängige Anwendungsfälle wie integrierte Funktionen verfügbar, um Ihnen den Einstieg zu erleichtern.

Einige nützliche Governanceaktionen, die Sie mithilfe von Azure Policy erzwingen können, sind:

1) Stellen Sie sicher, dass Ihr Team Azure-Ressourcen nur in zulässigen Regionen bereitstellt, und stellen Sie daher sicher, dass Daten nur an zulässigen Azure-Standorten gespeichert werden.
2) Erzwingen Sie die konsistente Anwendung taxonomischer Tags.
3) Anfordern von Ressourcen zum Senden von Diagnoseprotokollen an einen Log Analytics-Arbeitsbereich.

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

[![en](https://img.shields.io/badge/lang-en-blue.svg)](Security.md)
[![dk](https://img.shields.io/badge/lang-da-red.svg)](Security-da.md)
[![de](https://img.shields.io/badge/lang-de-yellow.svg)](Security-de.md)
[![main](https://img.shields.io/badge/main-document-green.svg)](../README.md)