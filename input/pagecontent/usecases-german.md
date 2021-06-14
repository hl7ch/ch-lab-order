### Use Case 1: Auftrag im herkömmlichen Sinne

Der Auftraggeber (z.B. Arzt) benötigt für die weitere Diagnostik verschiedene Labor-Untersuchungen. Dazu erstellt er in seinem Praxisinformationssystem ein Auftragsdokument mit den nötigen Angaben zu Patient, Labor-Test, Proben usw. Das notwendige Probenmaterial (Serum, Urin, Liquor) wird in entsprechenden Behältern gesammelt und dem Auftragsdokument eindeutig zugeordnet (Specimen.identifier, Specimen.container.identifier). Proben können im eigenen Labor untersucht werden, oder sie müssen via Post oder Kurier ins externe Labor verschickt werden. Dort weist ihnen das Laborinformationssystem einen eigenen Identifier (Specimen.accessionIdentifier) zu.

Dem Auftraggeber wird ein Formular (Questionnaire) präsentiert, das folgende Angaben enthält:

* Metadaten des Auftrages
* Angaben zum Auftrag (order)
* Angaben zum zum Auftragsempfänger (receiver)
* Angaben zum Patienten
* Angaben zum Auftraggeber (sender)
* Angaben zu allfälligen Empfängern einer Resultate-Kopie (receiverCopies)
* Angaben zur Labor-Sparte (lab specialty)
* Angaben zu den verlangten Untersuchungen

* Angaben zum Probenmaterial,Specimen
  * Type: zum Beispiel Serum, Vollblut, Liquor
  * Subject:Verweis auf den Patienten
  * Collection: Angaben zur Entnahme, Entnahme-Zeitpunkt, Menge, Methode, Entnahmestelle (z.B. rechter Arm), Nüchternperiode
  * Behälter, Gefäss: Identifier, Type
  * und anderes mehr

* Angaben zum angeforderten Service
  * Servicerequest.category ist RequestForLabExam
  * Fragestellung, Untersuchungsgrund (ServiceRequest.reasonCode, ServiceRequest.reasonReference)
  * Kostenträger (Krankenkasse, Unfallversicherung usw.)
  * und anderes mehr

Ausserhalb dieses Use Cases: Die Resultate werden danach dem Auftraggeber zurückgemeldet.

### Use Case 2: Anfordern von zusätzlichen Unteresuchungen der gleichen Probe

Nicht selten führen Resultate von Laboruntersuchungen dazu, dass noch weitere Test mit der gleichen Probe gewünscht werden. So kann im Beispiel 1-tvt eine venöse Thrombophilie vermutet werden, sodass weitere Laboruntersuchungen hereditäre Ursachen, wie Faktor-V-Leiden-Mutaion, Prothrombin-Genmutation, Antithrombinmangel usw. auffinden können.

* Angaben zum angeforderten Service
  * Servicerequest.category ist RequestForAdditionalExam

### Use Case 3: Anfordern von vorhandenen Laborresultaten und Bildern

Manchmal möchte der Arzt auch Aufschluss über frühere Laboruntersuchungen, z.B. um den Verlauf von Prostata-spezifische Antigen (PSA) zu beurteilen.

* Angaben zum angeforderten Service
  * Servicerequest.category ist RequestForPrecedentReport beziehungsweise RequestForPrecedentReportAndImages
  
### Use Case 4: Sammelauftrag für toxikologische Untersuchungen (biologisches Monitoring)

Dieser Use Case entspricht dem Beispiel 5-biol-monit. Um die Gefährdung von Arbeitern gegenüber chemischen Stoffen zu beurteilen werden Messungen am Arbeitsplatz ergänzt durch arbeitsmedizinische Vorsorgeuntersuchungen. Es können die toxischen Arbeitsstoffe selbst oder deren Metaboliten im Serum oder Urin bestimmt werden. Der Auftrag wird vom Arbeitsmediziner der Firma oder der Versicherung veranlasst. Dabei muss die Problematik der Mitarbeiterfluktuationen im Auge behalten werden.

Beispiele dazu sind:

* Arbeitsmedizin: Bestellung von Laboruntersuchungen zu mehreren Patienten
* Lebensmittelindustrie: Untersuchung zu Mitarbeiterhygiene (z.B. Salmonellen-Kontaminierung)
* Polizeiliche Untersuchungen

Beispieldokument: [5-biol-monit.xml](https://github.com/hl7ch/ch-lab-order/tree/master/input/examples/bundle/5-biol-monit.xml). Es werden Arbeitslisten abgearbeitet, welche über eine längere Zeit (Tage/Wochen) andauern. In der Regel werden bestimmte Untersuchungen zu mehreren Patienten angefordert.

### Use Case 5: Vorschlag von zusätzlichen oder alternativen Untersuchungen durch den Laborarzt (Auftragsempfänger, receiver)

Nach Erhalt des Laborauftrages und dessen Bearbeitung kann sich die Situation ergeben, dass der Laborarzt dem Author des Auftrages Vorschläge für weitere oder alternative Untersuchungen machen möchte. Er kann dazu das erhaltene Auftragsdokument verwenden, durch sein Informationssystem die Personendaten von Sender und Receiver austauschen, und mit den Vorschlägen zu weiteren oder alternativen Laboruntersuchungen zurückschicken.

* ServiceRequest.category: ProposalForAdditionalExam

### Use Case 6: Befunde und weiteren Daten zum Gesundheitszustand des Patienten

Wenn dies für die Interpretation der verordneten Untersuchung von besonderem Interesse ist, müssen weitere Daten zum Gesundheitszustand des Patienten im Laborauftrag aufgenommen werden können. Es handelt sich dabei um vorhandene Befunde, medizische Berichte und Dokumente

* ServiceRequest.reasonCode ServiceRequest.reasonReference

### Use Case 7: Angaben zur Probe, Präanalytik

Bei gewissen Untersuchungen reichen Auftrag und Probe alleine nicht aus, um das Laborresultat zu bestimmen. In solchen Fällen müssen Beobachtungen zur Probenentnahme an das Labor geliefert werden. Als Beispiel sei hier die Bestimmung der Creatinin-Clearance im 24 h Urin erwähnt. Dazu muss dem Labor die während einer bestimmten Zeitdauer gesammelte Urinmenge bekannt sein. Der Auftraggeben übermittelt dazu dem Labor das Urinvolumen, sowie eine Probe des Urins und des Serums.

* Gesammelte Urinmenge: Specimen.collection.quantity.

* Beginn und Ende der Urinsammlung: Specimen.collection.collected[collectedPeriod] - start - end

Ein weiteres Beispiel ist der Synacthen(ACTH) Funktionstest, bei dem eine basale Blutprobe am morgen nüchtern abgenommen wird, danach sofort das Synacthen gespritzt wird, und eine Stunde später eine zweite Blutprobe entnommen wird.

* Basale Serum-Probe nüchtern und Verabreichen von Synacthe: Specimen.collection.collected[collectedDateTime]

* Zweite Serum-Probe 60 Minuten später: Specimen.collection.collected[collectedDateTime]

### Use Case 8: Zusätzliche Angaben zum Kontext der Probe

Bei Blutgas-Analysen ist die dem Patienten verabreichte Sauerstoffmenge manchmal von Belang

* ServiceRequest.supportingInfo, z.Bsp. O2 4 Liter/Min.

### Use Case 9: Anfordern von Monitoring-Untersuchungen

Labore bieten häufig die Möglichkeit an, Vitalfunktionen mit entsprechenden Medizingeräten zu überwachen, wie z.B. die 24 Stunden Blutdrucküberwachung, EKG Langzeitüberwachung, oder schlafmedizinisches Monitoring. Dazu wird das Medizingerät entweder dem Auftraggeber zugeschickt, oder der Patient holt es sich selber im Labor ab.

* ServiceRequest.category RequestForMonit24hBP, RequestForMonit24hECG, RequestForMonit7dECG, RequestForMonitPO, RequestForMonitPG

### Use Case 10: Auftraggeber wählt die Analysen oder Analysen-Panel aus einem Katalog

Dieser Use Case bewegt sich ausserhalb des Bereiches dieses Implementationsguides, obschon er ein wesentlicher Bestandteil von jeder Laborverordnunbg darstellt. Auftraggeber brauchen die Auswahl der Laboruntersuchungen, die das Labor auch wirklich zur Verfügung stellen kann. Ausserdem brauchen sie Orientierung in der Vielzahl von möglichen Untersuchungen in den verschiedenen Sparten, sowie Vorgaben für das präanalytische Vorgehen, Vorgaben für die richtigen Gefässe und Transportmedien, für die Minimalvolumen der Proben usw. Eine zukünftigen Version sollte diese Möglichkeit bieten.

Die Labore stellen dazu ihren Kunden einen Katalog von derjenigen Laboruntersuchungen zu Verfügung, welche sie zur Verfügung stellen können. Dabei kann es sich um Einzeluntersuchungen handeln, wie zum Beispiel Natriumkonzentration im Serum, oder um eine Kollektion von Untersuchungen, wie zum Beispiel Na, K und Cl im Serum handeln. Häufig in Form eines Laborhandbuches machen sie die Vorgaben zu Transport-Temperatur, minimale Probenmenge, Art des Transportgefässes usw. zugänglich.

Es wird dazu verschiedene Typen von Katalogeinträgen (CatalogEntries) geben: Einzel-Analysen, Mehrfach-Analysen (panels), Proben-Gefässe, präanalytische Vorbedingungen.
Der einzelne Datensatz einer Laboruntersuchung oder einer Probe lässt sich als mittels der Resource CatalogEntry abbilden. Eine Composition mit einem Profile for Catalog ist dann das Document, das den Katalog darstellt und repräsentiert die Gesamtheit der enthaltenen CatalogEntries. Dabei ist wichtig, dass der Catalog immer den aktuellen Gegebenheiten des Labors entspricht, und beispielsweise sofort neue Laboruntersuchungen oder veränderte Vorgaben der Präanalytik aufnehmen kann.

[StructureDefinition:Catalog] <http://hl7.org/fhir/catalog.html>
