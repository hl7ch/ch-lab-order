<!-- markdownlint-disable MD001 MD033 MD041 -->
<!--
╭───────────────────── UC -german ──────────────────────────╮
│  UC - english is original, this is a traduction           │
╰───────────────────────────────────────────────────────────╯
-->
### Use Case 1: Labor-Auftrag

Der Auftraggeber (zum Beispiel ein Arzt) benötigt verschiedene Laboruntersuchungen für weitere Diagnosen. Er erstellt ein Bestelldokument in seinem elektronischen Patientenakten (EMR)-System, das die administrativen Daten gemäß dem CH ORF Implementierungsleitfaden strukturiert enthält und dessen Inhalt im EMR verfügbar ist. Aus den Analysen, die vom LIS bereitgestellt werden, kann er diejenigen auswählen, die ihm bei seiner Fragestellung helfen, und er kann auch die Proben bestimmen, die den Analysen entsprechen. Zum Beispiel möchte er Glukose im Blut und Liquor analysieren lassen. Das Laborsystem kann die Informationen zu den erforderlichen Behältern und eventuellen Zusätzen im System speichern. Die präanalytischen Bedingungen sind festgelegt. Das Bestelldokument wird an das Laborinformationssystem (LIS) gesendet.

Er kann auch Informationen zum klinischen Kontext der Laborbestellung hinzufügen: Problemliste, aktuelle Medikamentenliste, Fragen zu den verordneten Analysen.

Beispielformular:
<a href='https://build.fhir.org/ig/hl7ch/ch-lab-order/branches/master/Bundle-0-best-practice-document.html'>best-practice</a>

### Use Case 2: Laborverordnung unter Verwendung von Questionnaire und QuestionnaireResponse

Der Auftraggeber (zum Beispiel ein Arzt) benötigt verschiedene Laboruntersuchungen für weitere Diagnosen. Hierfür erstellt er ein Bestelldokument in seinem Praxisinformationssystem mit den erforderlichen Informationen zum Patienten, Laboruntersuchung, Proben, etc. Das notwendige Probenmaterial (Serum, Urin, Liquor, etc.) wird in den entsprechenden Bestelldokumenten gespeichert. Das erforderliche Probenmaterial (Serum, Urin, Liquor) wird in geeigneten Behältern gesammelt und eindeutig dem Bestelldokument zugeordnet (Specimen.identifier, Specimen.container.identifier). Proben können im eigenen Labor untersucht werden, oder sie müssen per Post oder Kurier an das externe Labor geschickt werden. Dort weist das Laborinformationssystem ihnen eine eigene Kennung zu (Specimen.accessionIdentifier).

Dem Kunden wird ein Formular (Fragebogen) vorgelegt, das folgende Informationen enthält:

* Metadaten der Bestellung
* Informationen zur Bestellung
* Informationen zum Empfänger der Bestellung
* Informationen zum Patienten
* Informationen zum Besteller (Absender)
* Details zu Empfängern einer Kopie der Ergebnisse
* Details zur Laborspezialität
* Informationen zu den angeforderten Untersuchungen

* Informationen zum Probenmaterial, Specimen
  * Typ: z.B. Serum, Vollblut, Liquor
  * Subjekt: Verweis auf den Patienten
  * Sammlung: Informationen zur Sammlung, Sammelzeit, Menge, Methode, Sammelort (z.B. rechter Arm), Nüchternzeit
  * Behälter, Gefäß: Kennung, Typ und mehr

* Informationen zum angeforderten Service
  * Kategorie des Serviceantrags ist RequestForLabExam
  * Frage, Grund für die Untersuchung (ServiceRequest.reasonCode, ServiceRequest.reasonReference)
  * Zahlungspflichtiger (Krankenversicherung, Unfallversicherung, etc.) und mehr
  
Außerhalb dieses Anwendungsfalls: Die Ergebnisse werden dann dem Kunden zurückgemeldet.

Beispiel-Dokument:

<a href='https://build.fhir.org/ig/hl7ch/ch-lab-order/branches/master/Bundle-1-tvt-document-by-form.html'>tvt by Form</a>

### Use Case 3: Anfordern von zusätzlichen Untersuchungen der gleichen Probe

Nicht selten führen Resultate von Laboruntersuchungen dazu, dass noch weitere Test mit der gleichen Probe gewünscht werden. So kann im Beispiel 1-tvt eine venöse Thrombophilie vermutet werden, sodass weitere Laboruntersuchungen hereditäre Ursachen, wie Faktor-V-Leiden-Mutaion, Prothrombin-Genmutation, Antithrombinmangel usw. auffinden können.

* Angaben zum angeforderten Service
  * Im ValueSet Servicerequest.category wird RequestForAdditionalExam angewählt

### Use Case 4: Anfordern von vorhandenen Laborresultaten und Bildern (nicht behandelt)

Manchmal möchte der Arzt auch Informationen über frühere Laboruntersuchungen, z. B. zur Beurteilung des Trends des prostataspezifischen Antigens (PSA). Dies wird hier nicht behandelt.
  
### Use Case 5: Sammelauftrag für toxikologische Untersuchungen (biologisches Monitoring)

Dieser Use Case entspricht dem Beispiel 5-biol-monit. Um die Gefährdung von Arbeitern gegenüber chemischen Stoffen zu beurteilen werden Messungen am Arbeitsplatz ergänzt durch arbeitsmedizinische Vorsorgeuntersuchungen. Es können die toxischen Arbeitsstoffe selbst oder deren Metaboliten im Serum oder Urin bestimmt werden. Der Auftrag wird vom Arbeitsmediziner der Firma oder der Versicherung veranlasst. Dabei muss die Problematik der Mitarbeiterfluktuationen im Auge behalten werden.

Beispiele dazu sind:

* Arbeitsmedizin: Bestellung von Laboruntersuchungen zu einer Arbeitergruppe
  * ServiceRequest.subject referenziet auf eine Gruppe
  * ServiceRequest.specimen referenziert auf mehrere Proben (0 .. *)
* Lebensmittelindustrie: Untersuchung zu Mitarbeiterhygiene (z.B. Salmonellen-Kontaminierung)
* Polizeiliche Untersuchungen

Beispielformular: [CH LAB-Order 5-biol-monit](https://build.fhir.org/ig/hl7ch/ch-lab-order/branches/master/Bundle-5-biol-monit-document.html). Es werden Arbeitslisten abgearbeitet, welche über eine längere Zeit (Tage/Wochen) andauern. In der Regel werden bestimmte Untersuchungen zu mehreren Patienten angefordert.

### Use Case 6: Vorschlag von zusätzlichen oder alternativen Untersuchungen durch den Laborarzt (Auftragsempfänger, receiver)

Nach Erhalt des Laborauftrages und dessen Bearbeitung kann sich die Situation ergeben, dass der Laborarzt dem Author des Auftrages Vorschläge für weitere oder alternative Untersuchungen machen möchte. Er kann dazu das erhaltene Auftragsdokument verwenden, durch sein Informationssystem die Personendaten von Sender und Receiver austauschen, und mit den Vorschlägen zu weiteren oder alternativen Laboruntersuchungen zurückschicken.

* ServiceRequest.category: ProposalForAdditionalExam

Beispielformular für Mikrobiologie, Hämatologie und Klinische Chemie: [2-pertussis](http://fhir.ch/ig/ch-lab-order/Questionnaire-2-pertussis.html).
Beispielformular mit Vorschlag für zusätzliche Untersuchungen als Antwort

### Use Case 7: Befunde und weitere Daten zum Gesundheitszustand des Patienten

Wenn dies für die Interpretation der verordneten Untersuchung von besonderem Interesse ist, muss es möglich sein, weitere Daten zum Gesundheitszustand des Patienten in den Laborauftrag aufzunehmen. Dies sind vorhandene Befunde, medizinische Berichte und Dokumente.

* ServiceRequest.reasonCode ServiceRequest.reasonReference

### Use Case 8: Informationen über die Probe, Präanalytik

Bei bestimmten Tests reichen der Auftrag und die Probe allein nicht aus, um das Laborergebnis zu ermitteln. In solchen Fällen müssen dem Labor Beobachtungen zur Probenentnahme mitgeteilt werden. Ein Beispiel hierfür ist die Bestimmung der Kreatinin-Clearance im 24-Stunden-Urin. Hierfür muss das Labor die in einem bestimmten Zeitraum gesammelte Urinmenge kennen. Deshalb stellt der Auftraggeber dem Labor die Urinmenge sowie eine Urin- und Serumprobe zur Verfügung.

* Gesammelte Urinmenge: Specimen.collection.quantity.

* Beginn und Ende der Urinsammlung: Specimen.collection.collected[collectedPeriod] - start - end

Ein weiteres Beispiel ist der Synacthen(ACTH)-Funktionstest, bei dem morgens nüchtern eine Basalblutprobe entnommen wird, unmittelbar danach die Synacthen-Injektion erfolgt und eine Stunde später eine zweite Blutprobe entnommen wird.

* Basisserumprobe nüchtern und Verabreichung von Synacthen(ACTH): Specimen.collection.collected[collectedDateTime], eine zweite Probe wird 60 Minuten später entnommen: Specimen.collection.collected[collectedDateTime]

### Use Case 9: Zusätzliche Informationen über den Kontext der Probe

Bei Blutgasanalysen ist die Menge des dem Patienten verabreichten Sauerstoffs von Bedeutung

* ServiceRequest.reasonReference (Zustand | Beobachtung | DiagnosticReport)
* ServiceRequest.supportingInfo, z.B. O2 4 Liter/min.
