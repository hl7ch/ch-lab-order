<!-- markdownlint-disable MD001 MD033 MD041 -->
<!--
╭───────────────────── UC-german  ──────────────────────────╮
│  UC-english is original, german and french are dependent  │
╰───────────────────────────────────────────────────────────╯
-->
### Anwendungsfall 1: Einen Laborauftragsdokument generieren

{% include img.html img="LabOrderWorkflow.svg" caption="Fig. 1: Arbeitsablauf bei Laboraufträgen und Tests" width="60%" %}

Dieser Implementierungsleitfaden definiert die Struktur und den Inhalt von Laborauftragsdokumenten unter Verwendung von FHIR-Bundle-Ressourcen vom Typ 'document'. Die tatsächlichen Austauschmechanismen zwischen Placer (z.B. EMR-Systeme) und Filler (z.B. Laborinformationssysteme) sind implementierungsspezifisch und hängen von der lokalen Infrastruktur und den Anforderungen ab. CH ORF definiert die Submit Bundle [[CH ORF-1]](https://fhir.ch/ig/ch-orf/index.html#submit-bundle-ch-orf-1) Transaktion, die als Austauschmechanismus verwendet werden kann.

#### Laborauftragsdokument mit Serviceanforderung

Der Auftraggeber (z.B. ein Arzt) benötigt zur Ergänzung der Diagnostik verschiedene Laboruntersuchungen. Er erstellt in seinem Electronic Medical Records (EMR)-System ein Auftragsdokument, das die administrativen Daten enthält, die nach dem CH Core Implementation Guide strukturiert sind und deren Inhalte im EMR verfügbar sind. Aus den vom LIS bereitgestellten Analysen kann er diejenigen auswählen, die ihm bei seiner Fragestellung weiterhelfen, und er kann auch die den Analysen entsprechenden Stichproben bestimmen. Er möchte zum Beispiel die Glukose im Blut und im Liquor analysieren lassen. Das Laborsystem kann die Informationen über die benötigten Probengefässe und eventuelle Zusatzstoffe im System hinterlegen. Die präanalytischen Bedingungen sind festgelegt.

Er kann dem Laborauftrag auch Informationen über den klinischen Kontext hinzufügen: Problemliste, aktuelle Medikamentenliste, Fragen zu den verordneten Analysen.

Das Auftragsdokument wird an das Laborinformationssystem (LIS) gesendet.

Beispiel Auftragsdokument per ServiceRequest: [CH LAB-Order 0-best-practice](Bundle-0-best-practice-document-with-sr.html)

#### Laborauftragsdokument mit Serviceanforderung und Formular

Der Auftraggeber (z.B. Arzt) benötigt zur weiteren Diagnostik verschiedene Laboruntersuchungen. Dazu erstellt er in seinem Praxisinformationssystem ein Auftragsdokument mit den notwendigen Angaben zu Patient, Laboruntersuchung, Proben usw. Das benötigte Probenmaterial (Serum, Urin, Liquor, etc.) wird in den entsprechenden Auftragsdokumenten hinterlegt. Das benötigte Probenmaterial (Serum, Urin, Liquor) wird in entsprechenden Behältnissen gesammelt und dem Auftragsdokument eindeutig zugeordnet (Specimen.identifier, Specimen.container.identifier). Die Proben können im eigenen Labor untersucht werden, oder sie müssen per Post oder Kurier an das externe Labor geschickt werden. Dort werden sie vom Laborinformationssystem mit einem eigenen Identifikator (Specimen.accessionIdentifier) versehen.

Dem Auftraggeber wird ein Formular (Fragebogen) vorgelegt, das die folgenden Informationen enthält:

* Metadaten des Auftrags
* Informationen über die Bestellung
* Informationen über den Empfänger der Bestellung (Receiver)
* Informationen über den Patienten
* Informationen über den Auftraggeber (Absender)
* Angaben zu eventuellen Empfängern einer Kopie der Ergebnisse (receiverCopies)
* Angaben zum Laborfachgebiet
* Angaben zu den angeforderten Untersuchungen

* Informationen über das Probenmaterial, Probe
  * Art: z. B. Serum, Vollblut, Liquor cerebrospinalis
  * Thema: Bezug auf den Patienten
  * Entnahme: Informationen zur Entnahme, Entnahmezeit, Menge, Methode, Entnahmestelle (z. B. rechter Arm), Nüchternzeit
  * Behälter, Gefäss: Kennung, Typ
  * und andere mehr

* Informationen über die angeforderte Dienstleistung
  * Service request.category ist RequestForLabExam
  * Frage, Grund der Untersuchung (ServiceRequest.reasonCode, ServiceRequest.reasonReference)
  * Kostenträger (Krankenkasse, Unfallversicherung, etc.)
  * und mehr

Beispiel Auftragsdokument per Formular: [CH LAB-Order 1-tvt by Form](Bundle-1-tvt-document-with-sr-and-form.html)

### Anwendungsfall 2: Anforderung zusätzlicher Tests für dieselbe Probe

Es ist nicht ungewöhnlich, dass die Ergebnisse von Laboruntersuchungen dazu führen, dass weitere Untersuchungen an derselben Probe angefordert werden. Oder die internen Laboranalysen werden durch weitere Tests ergänzt, die nur in einem externen Labor durchgeführt werden können.

Im Beispiel des 2-pertussis Falles werden die internen Labortests (automatisiertes Blutbild, CRP) durch die Suche nach Bordetella pertussis- und parapertussis-DNA im Rachenabstrich ergänzt, die von einem externen Vertragslabor durchgeführt wird, um Keuchhusten auszuschliessen.

Wenn das placer System zusätzliche Tests für die vorhandenen Proben anfordert, kopiert es die ursprüngliche ServiceAnforderung, fügt die erforderlichen Labortests und einen Auftragskontrollcode 'RP' hinzu, was eine Auftrags-/Leistungsersetzungsanforderung bedeutet. Eine spezielle Invarianzregel 'sr-1' sorgt dafür, dass ein Verweis auf die ursprüngliche ServiceAnforderung hergestellt wird.

Die Order Control Codes können auch zum Stornieren, Halten oder Freigeben von gehaltenen Bestellanforderungen verwendet werden. Auch in diesen Fällen muss der Verweis auf die ursprüngliche Bestellung hergestellt werden.

* Der 2-pertussis-ServiceRequest wird ersetzt durch den
* 2-Pertussis-ServiceRequestAddTest, der die Untersuchung des Rachenabstrichs auf Pertussis- oder Parapertussis-DNA anfordert

Beispiel für eine referenzierte Serviceanfrage: [CH LAB-Order 2-pertussis](ServiceRequest-2-pertussis-ServiceRequest.html), der Code im Element 'orderDetail' wäre 'NW' für "Neue Bestellung/Leistung", oder das Element könnte ganz weggelassen werden.

Beispiel Service Replace Request: [CH LAB-Order 2-pertussis Zusatztest](ServiceRequest-2-pertussis-ServiceRequestAddTest.html)
Der Replace Request enthält einen Verweis auf den vorherigen ServiceRequest und ein Element 'orderDetail', das den Order Control Code aus dem Code System v2-0119 trägt: 'RP' für "Order/service replace request", 'CA' für "Cancel order/service request", 'HD' für "Hold order request", und 'RL' für "Release previous hold"

### Anwendungsfall 3: Sammelauftrag für toxikologische Tests (biologische Überwachung)

Dieser Anwendungsfall entspricht dem Beispiel 5-biol-monit. Um die Exposition von Arbeitnehmern gegenüber chemischen Stoffen zu beurteilen, werden die Messungen am Arbeitsplatz durch arbeitsmedizinische Untersuchungen ergänzt. Dabei können die toxischen Substanzen selbst oder deren Metaboliten im Serum oder Urin bestimmt werden. Die Anordnung erfolgt durch den Arbeitsmediziner des Unternehmens oder die Versicherung. Die Problematik der Fluktuation der Mitarbeiter muss beachtet werden.

Beispiele sind:

* Arbeitsmedizin: Bestellung von Laboruntersuchungen bei einer Gruppe von Arbeitnehmern
  * ServiceRequest.subject bezieht sich auf eine Gruppe
  * ServiceRequest.specimen bezieht sich auf mehrere Proben (0 .. *)
* Lebensmittelindustrie: Untersuchung der Mitarbeiterhygiene (z. B. Salmonellenkontamination)
* Polizeiliche Ermittlungen

Es werden Arbeitslisten bearbeitet, die sich über einen längeren Zeitraum (Tage/Wochen) erstrecken. In der Regel werden bestimmte Untersuchungen bei mehreren Patienten angefordert.

Beispiel Auftragsdokument mit ServiceRequest: [CH LAB-Auftrag 5-biol-monit](Bundle-5-biol-monit-document-with-sr.html).

Beispiel Auftragsdokument mit ServiceRequest und Formular: [CH LAB-Order 5-biol-monit-form](Bundle-5-biol-monit-document-with-sr-and-form.html).

### Anwendungsfall 4: Vorschlag von Zusatz- oder Alternativuntersuchungen durch den Laborarzt (Auftragsempfänger, Empfänger)

Nach Eingang und Bearbeitung des Laborauftrags kann die Situation eintreten, dass der Laborarzt dem Auftragsverfasser Vorschläge für zusätzliche oder alternative Untersuchungen machen möchte. Dazu kann er das empfangene Auftragsdokument verwenden, die persönlichen Daten von Absender und Empfänger über sein Informationssystem austauschen und mit den Vorschlägen für weitere oder alternative Laboruntersuchungen zurücksenden.

* ServiceRequest.category: ProposalForAdditionalExam