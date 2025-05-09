![microsoft](../images/microsoft.png)

# Eine dattenplatform - Namensstandards

[![en](https://img.shields.io/badge/lang-en-blue.svg)](Naming-Standards.md)
[![dk](https://img.shields.io/badge/lang-da-red.svg)](Naming-Standards-da.md)
[![de](https://img.shields.io/badge/lang-de-yellow.svg)](Naming-Standards-de.md)
[![main](https://img.shields.io/badge/main-document-green.svg)](../README.md)

In der geschäftigen Welt der Daten, in der riesige Mengen an Informationen gespeichert und verwaltet werden, spielen Benennungsstandards eine entscheidende Rolle. Stellen Sie sich eine große Bibliothek vor, in der jedes Buch akribisch katalogisiert und in Regale gestellt wird. Ohne ein klares System wäre es eine entmutigende Aufgabe, ein bestimmtes Buch zu finden. In ähnlicher Weise stellen Benennungsstandards auf der Datenplattform sicher, dass Daten organisiert, zugänglich und verständlich sind.

## Die Bedeutung von Benennungsstandards

Benennungsstandards in der Datenplattform sind wie das Dewey-Dezimalsystem in einer Bibliothek. Sie bieten einen konsistenten und logischen Rahmen, der jedem in der Organisation hilft, die Datenstruktur zu verstehen. Diese Konsistenz reduziert Verwirrung und Fehler und erleichtert Teams die Zusammenarbeit und den Austausch von Informationen.

Klare und aussagekräftige Namen sind unerlässlich. Sie fungieren als Wegweiser und leiten die Nutzer zu den Daten, die sie benötigen. Wenn die Namen intuitiv und leicht verständlich sind, können sich neue Teammitglieder schnell einarbeiten und erfahrene Analysten können effizienter arbeiten. Diese Klarheit ist besonders wichtig in großen Organisationen, in denen Daten von verschiedenen Abteilungen und Teams genutzt werden.

Effizienz ist ein weiterer wichtiger Vorteil der Benennung von Normen. Wenn Datenobjekte einheitlich benannt werden, wird das Abrufen und Analysieren von Daten optimiert. Analysten können die benötigten Daten schnell finden, wodurch der Zeitaufwand für die Suche reduziert und die Produktivität gesteigert wird. In einem schnelllebigen Geschäftsumfeld kann diese Effizienz einen erheblichen Wettbewerbsvorteil bieten.

## Best Practices für die Benennung von Standards

Um diese Vorteile zu erzielen, ist es wichtig, Best Practices für die Benennung von Standards zu befolgen. Beschreibende Namen sind ein Muss. Sie sollten den Inhalt und Zweck des Datenobjekts klar beschreiben. Vermeiden Sie vage oder zu technische Begriffe, die die Benutzer verwirren könnten. Anstatt einer Tabelle beispielsweise den Namen "cust_ord" zu geben, verwenden Sie "customer_orders". Dieser Name teilt dem Benutzer sofort mit, was die Tabelle enthält.

Abkürzungen und Akronyme sollten minimiert werden. Sie sparen zwar ein paar Tastenanschläge, können aber verwirrend sein, insbesondere für neue Benutzer. Auch Konsistenz ist entscheidend. Halten Sie sich an ein Standardformat für Tabellennamen, Spaltennamen und andere Datenelemente. Diese Einheitlichkeit hilft den Benutzern, die Struktur und den Zweck der Daten schnell zu verstehen.

Die Namen sollten anfängerfreundlich sein. Sie sollten für alle Benutzer leicht verständlich sein, nicht nur für erfahrene Analysten. Diese Inklusivität stellt sicher, dass jeder im Unternehmen effektiv mit den Daten arbeiten kann.

## Beispiele für Benennungsstandards

Schauen wir uns einige Beispiele an, um diese Prinzipien zu veranschaulichen. Verwenden Sie für Tabellen eindeutige und aussagekräftige Namen wie "customer_orders", "product_inventory" oder "sales_transactions". Diese Namen sind leicht verständlich und vermitteln sofort den Inhalt der Tabelle.

Benennen Sie die Spalten so, dass ihr Inhalt deutlich angegeben ist. Verwenden Sie z. B. "order_date", "customer_id" oder "product_name". Diese Namen geben einen klaren Hinweis darauf, was die einzelnen Spalten enthalten, und erleichtern den Benutzern die Arbeit mit den Daten.

Präfixe und Suffixe können ebenfalls nützlich sein. Sie können den Datentyp oder dessen Status angeben. Verwenden Sie beispielsweise "temp_" für temporäre Tabellen oder "_arch" für archivierte Daten. Diese Präfixe und Suffixe bieten zusätzlichen Kontext und helfen den Benutzern, den Zweck und den Status der Daten zu verstehen.

## Benennungsstandards in Cloud-Umgebungen

Da die Datenplattform in der Natur Cloud-born ist, werden wir hier auch kurz auf die Benennungsstandards eingehen. Eine umfassendere *Anleitung* findet sich
im [Microsoft Cloud Adoption Framework](<https://learn.microsoft.com/en-us/azure/cloud-adoption-framework/ready/azure-best-practices/naming-and-tagging>). Bitte beachten Sie, dass es selbstverständlich ist, dass Ihr Namensstandard zu Ihrer Organisation passt und nicht zu einem "allgemeinen" Dokument.

In Cloud-Umgebungen sind Benennungsstandards also ebenso wichtig. Sie tragen dazu bei, dass Cloud-Ressourcen leicht identifizierbar und verwaltbar sind. Fügen Sie eine Abkürzung ein, die den Typ der Cloud-Ressource darstellt, z. B. "vm" für virtuelle Maschinen oder "rg" für Ressourcengruppen. Geben Sie die Phase des Entwicklungslebenszyklus an, z. B. "prod" für die Produktion, "dev" für die Entwicklung oder "qa" für die Qualitätssicherung.

Geben Sie die Region an, in der die Ressource bereitgestellt wird, z. B. "westus", "eastus2" oder "westeu". Geben Sie den Namen des Projekts oder der Workload an, zu dem die Ressource gehört, z. B. "sharepoint", "hadoop" oder "navigator". Verwenden Sie ein Nummerierungssystem, um Instanzen derselben Ressource zu unterscheiden, z. B. "01", "001" oder "a".

### Beispiele in Cloud-Umgebungen

Im Folgenden finden Sie einige Beispiele für Benennungsstandards in Cloud-Umgebungen:

- **Virtuelle Maschine**: 'vm-prod-westus-sharepoint-01'
- **Ressourcengruppe**: 'rg-dev-eastus2-hadoop'
- **Speicherkonto**: 'stg-qa-westeu-navigator-001'

Diese Standards tragen dazu bei, dass Cloud-Ressourcen leicht identifizierbar und verwaltbar sind, was einen effizienten Betrieb und eine effiziente Governance unterstützt.

Zusammenfassend lässt sich sagen, dass Benennungsstandards sowohl in der Datenplattform als auch in den Cloud-Umgebungen unerlässlich sind, um Konsistenz, Klarheit und Effizienz zu wahren. Durch die Befolgung von Best Practices und die Verwendung beschreibender, konsistenter Namen können Unternehmen sicherstellen, dass ihre Daten organisiert, zugänglich und leicht verständlich sind. Dies wiederum unterstützt ein effektives Datenmanagement und eine effektive Datenanalyse und bietet eine solide Grundlage für eine fundierte Entscheidungsfindung und den Geschäftserfolg.

Lass mich wissen, wenn du weitere Änderungen oder zusätzliche Informationen benötigst!

[![en](https://img.shields.io/badge/lang-en-blue.svg)](Naming-Standards.md)
[![dk](https://img.shields.io/badge/lang-da-red.svg)](Naming-Standards-da.md)
[![de](https://img.shields.io/badge/lang-de-yellow.svg)](Naming-Standards-de.md)
[![main](https://img.shields.io/badge/main-document-green.svg)](../README.md)
