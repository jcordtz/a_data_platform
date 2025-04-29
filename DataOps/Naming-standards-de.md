![microsoft](../images/microsoft.png)

# Eine dattenplatform - Namensstandards

[![en](https://img.shields.io/badge/lang-en-red.svg)](Naming-Standards.md)
[![dk](https://img.shields.io/badge/lang-da--dk-green.svg)](Naming-Standards-da.md)
[![de](https://img.shields.io/badge/lang-de-yellow.svg)](Naming-Standards-de.md)
[![main](https://img.shields.io/badge/main-document-blue.svg)](../README.md)

Sure! Here’s the enhanced article translated to German:

## Bedeutung von Namensstandards

1. **Konsistenz**: Konsistente Namenskonventionen helfen sicherzustellen, dass jeder in der Organisation die Datenstruktur versteht, was Verwirrung und Fehler reduziert.
2. **Klarheit**: Klare und beschreibende Namen erleichtern es den Benutzern, den Zweck und den Inhalt von Datenobjekten zu verstehen, was besonders wichtig für neue Teammitglieder ist.
3. **Effizienz**: Gut definierte Namensstandards optimieren die Datenabfrage und -analyse, wodurch es Analysten leichter fällt, die benötigten Daten zu finden und zu nutzen.

### Beste Praktiken für Namensstandards

1. **Beschreibende Namen**: Verwenden Sie Namen, die den Inhalt und Zweck des Datenobjekts klar beschreiben. Vermeiden Sie vage oder übermäßig technische Begriffe.
2. **Vermeiden Sie Abkürzungen**: Minimieren Sie die Verwendung von Abkürzungen und Akronymen, da diese verwirrend sein können, insbesondere für neue Benutzer.
3. **Konsistenz**: Halten Sie sich an eine konsistente Namenskonvention für alle Datenobjekte. Dies umfasst die Verwendung eines Standardformats für Tabellennamen, Spaltennamen und andere Datenelemente.
4. **Anfängerfreundlich**: Stellen Sie sicher, dass Namen für alle Benutzer leicht verständlich sind, nicht nur für erfahrene Analysten.

### Beispiele

- **Tabellen**: Verwenden Sie klare und beschreibende Namen wie `customer_orders`, `product_inventory` oder `sales_transactions` anstelle von vagen Namen wie `cust_ord`, `prod_inv` oder `sales_txn`.
- **Spalten**: Benennen Sie Spalten so, dass ihr Inhalt klar erkennbar ist, wie z.B. `order_date`, `customer_id` oder `product_name`.
- **Präfixe und Suffixe**: Verwenden Sie Präfixe oder Suffixe, um den Typ der Daten oder deren Status anzugeben, wie z.B. `temp_` für temporäre Tabellen oder `_arch` für archivierte Daten.

## Namensstandards für Cloud-Umgebungen

1. **Ressourcentyp**: Fügen Sie eine Abkürzung hinzu, die den Typ der Cloud-Ressource darstellt, wie z.B. `vm` für virtuelle Maschinen oder `rg` für Ressourcengruppen.
2. **Umgebung**: Geben Sie das Stadium des Entwicklungszyklus an, wie z.B. `prod` für Produktion, `dev` für Entwicklung oder `qa` für Qualitätssicherung.
3. **Region**: Geben Sie die Region an, in der die Ressource bereitgestellt wird, wie z.B. `westus`, `eastus2` oder `westeu`.
4. **Projekt oder Arbeitslast**: Fügen Sie den Namen des Projekts oder der Arbeitslast hinzu, zu dem die Ressource gehört, wie z.B. `sharepoint`, `hadoop` oder `navigator`.
5. **Instanz**: Verwenden Sie ein Nummerierungssystem, um Instanzen derselben Ressource zu unterscheiden, wie z.B. `01`, `001` oder `a`.

## Beispiele in Cloud-Umgebungen

- **Virtuelle Maschine**: `vm-prod-westus-sharepoint-01`
- **Ressourcengruppe**: `rg-dev-eastus2-hadoop`
- **Speicherkonto**: `stg-qa-westeu-navigator-001`

Diese Standards helfen sicherzustellen, dass Cloud-Ressourcen leicht identifizierbar und verwaltbar sind, was eine effiziente Betriebsführung und Governance unterstützt.

Lass mich wissen, wenn du weitere Änderungen oder zusätzliche Informationen benötigst!
[![en](https://img.shields.io/badge/lang-en-red.svg)](Naming-Standards.md)
[![dk](https://img.shields.io/badge/lang-da--dk-green.svg)](Naming-Standards-da.md)
[![de](https://img.shields.io/badge/lang-de-yellow.svg)](Naming-Standards-de.md)
[![main](https://img.shields.io/badge/main-document-blue.svg)](../README.md)