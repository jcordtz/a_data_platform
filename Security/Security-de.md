# Eine Datenplattform - Sicherheit "Under construction"

[![en](https://img.shields.io/badge/lang-en-red.svg)](README.md)
[![dk](https://img.shields.io/badge/lang-dk-green.svg)](README-da.md)
[![de](https://img.shields.io/badge/lang-de-yellow.svg)](README-de.md)

![security](../images/tiger.jpg) ![microsoft](../images/microsoft.png)

## Einführung

This section focuses on the "mere" security aspect on how to handle data. It covers the challenges that need to be addressed as well as some thoughts on how to handle those.

This part is also a lot about processes and hence highlighting that you cannot solve data security by "just clicking some boxes in you IT systems".


## Daten und Sicherheit

Datensicherheit ist ein kritisches Element des Betriebs eines jeden Unternehmens. Es befasst sich mit dem Schutz von Daten vor unrechtmäßigem Zugriff, Verschlechterung oder Diebstahl über die gesamte Lebensdauer der Daten. Mit der Einführung robuster Datensicherheitsmaßnahmen können Unternehmen ihre kritischen Ressourcen sichern, Compliance erreichen und das Vertrauen der Kunden in den Umgang mit Daten erhalten.

Datensicherheit ist von entscheidender Bedeutung, da sie Unternehmen vor Cyberangriffen, Insider-Bedrohungen und menschlichem Versagen schützt, die zu Datenschutzverletzungen führen können. Zu den wesentlichen Faktoren für die Datensicherheit gehören Vertraulichkeit, Integrität, Verfügbarkeit und Compliance. Angesichts wachsender Bedrohungen für Daten müssen Unternehmen ihre Daten an der Quelle schützen, um die Datensicherheit aufrechtzuerhalten und Daten aus einem Angriff schnell wiederherzustellen. Der Zweck der Datensicherheit besteht darin, Daten vor allen Formen des Missbrauchs, einschließlich Cyberangriffen und menschlichem Versagen, zu schützen.

Zusammenfassend lässt sich sagen, dass die Wahrung der Vertraulichkeit, Integrität und Verfügbarkeit der Informationen eines Unternehmens für die Datensicherheit unerlässlich ist. Es unterstützt den Schutz kritischer Ressourcen, hilft bei der Erfüllung der Compliance-Anforderungen bestimmter Standards und erhält das Vertrauen der Kunden.

Abbildung 4 zeigt verschiedene Datenschutzmethoden, die in Azure verfügbar sind. Allgemeine Themen wie Netzwerksicherheit oder Multi-Faktor-Authentifizierung werden jedoch nicht behandelt, da davon ausgegangen wird, dass diese bereits implementiert sind.

![Abbildung 4](images/german/Slide8.JPG)

*Abbildung 4*

**Anwendungsbasierte Zugriffskontrolle** - deckt die Tatsache ab, dass eine Anwendung wie SAP, Snowflake, Fabric, Dynamics usw. eine Anmeldung erfordert und somit den korrekten Zugriff auf die zugrunde liegenden Daten ermöglicht, die in der Anwendung verwendet werden. Häufig ist der zugrunde liegende Datenspeicher eine (relationale) Datenbank, auf die von der Anwendung aus über ein Dienstkonto zugegriffen werden kann. 
Rollenbasierte Zugriffskontrolle – auch bekannt als RBAC. Dies steuert den Zugriff auf eine bestimmte Ressource und wie sie verwendet werden kann. Also in populären Begriffen - können Sie auf das Speicherkonto zugreifen?

Die **Attributbasierte Zugriffskontrolle** – auch bekannt als ABAC – bietet oft einen zusätzlichen Mechanismus, um Zugriff zu gewähren, um eine "Suche" in einem anderen System durchzuführen. Beispielsweise kann man auf ein Speicherkonto zugreifen, aber es kann sich um einen Ordner handeln, für den man Teil eines bestimmten Projekts sein muss. In diesem Fall können Sie einen ABAC-"Lookup" durchführen, der dies überprüft, bevor Sie den Zugriff gewähren - abhängig von diesem Ergebnis.

**Identitätsbasierte Zugriffskontrolle** – umfasst die Möglichkeit, einer bestimmten Ressource eine Identität zuzuweisen ("ein Mensch" zu werden). Und dann stellen Sie sicher, dass nur diesem "Menschen" Zugriff auf ein bestimmtes Speicherkonto gewährt wird, und daher müssen Sie diese Anwendung verwenden, um an die Daten zu gelangen.

**Verschlüsselungsbasierte Zugriffskontrolle** - Dies ist keine wirkliche Zugriffskontrolle, da der Datenspeicher verfügbar ist, man die Daten jedoch nur lesen/verwenden kann, wenn man den Schlüssel zur Entschlüsselung hat. Es kann (sollte) also Teil Ihrer Verteidigung sein.

**Löschbasierte Zugriffssteuerung** – dieser Ansatz ist nur im bereich **Veröffentlichen** verfügbar. Dieser Ansatz nutzt den Aspekt des **Veröffentlihen** bereichs, dass ein *Datensetz* nur "so lange lebt, wie es genutzt wird", in diesem Fall "... richtig verwendet wird". Da dieser Ansatz die Fähigkeit erfordert, einen bestimmten Datenspeicher neu erstellen zu können, kann dies auch als Verteidigungsmechanismus verwendet werden. Wenn es also zu einem Angriff kommt, besteht der einfachste Weg, dies zu stoppen, darin, die Ressource während des Angriffs einfach zu entfernen, wenn die Gefahr eines Datenverlusts besteht.

## Datensicherheitsoperationen

Laut Wikipedia ist DataOps eine Sammlung von Praktiken, Prozessen und Technologien, die eine ganzheitliche und prozessorientierte Sicht auf Daten mit Automatisierung und Methoden aus dem agilen Software-Engineering kombiniert, um Qualität, Geschwindigkeit und Zusammenarbeit zu verbessern und eine Kultur der kontinuierlichen Verbesserung rund um die Datenanalyse zu fördern.

Während DataOps als eine Reihe von Best Practices begann, hat es sich inzwischen zu einem neuen und eigenständigen Ansatz für die Datenanalyse entwickelt. DataOps deckt den gesamten Datenlebenszyklus von der Datenaufbereitung bis zur Berichterstattung ab und erkennt die gegenseitige Abhängigkeit des Datenanalyseteams und der IT-Abläufe an.

In der Softwareentwicklung legt DevOps den Schwerpunkt auf Continuous Delivery durch den Einsatz von On-Demand-IT-Ressourcen und durch die Automatisierung von Test und Bereitstellung von Software. Diese Art der Softwareentwicklung und des IT-Betriebs hat die Geschwindigkeit, Qualität, Vorhersagbarkeit und den Umfang der Softwareentwicklung und -bereitstellung verbessert.

DataOps greift Methoden von DevOps auf und zielt darauf ab, dieselben Verbesserungen in die Datenanalyse zu bringen. DataOps sollten nicht mit einer bestimmten Technologie, Architektur, einem Tool, einer Sprache oder einem Framework verknüpft werden.