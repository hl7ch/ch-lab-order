### Use Case 1: Auftrag im herkömmlichen Sinne  --TODO alle use cases durchgehen!!!

Es handelt sich dabei um einen Use Case, in welchem der Auftraggeber (z.B. Arzt) beim Labor verschiedene Untersuchungen bestellt . Dabei sendet der Auftraggeber den Auftrag und das Probenmaterial an das Labor, und dieses sendet die Resultate an den Auftraggeber zurück. Diese Resultate können auch gestaffelt als Teilresultate zu verschiedenen Zeitpunkten erfolgen.

Umsetzung der daraus entstehenden Anforderungen in der normativen Spezifikation:

* Angaben zum Probenmaterial: Specimen Collection und Participant (Body, specimen collection)
* Angaben zum Probeneingang beim Labor: Specimen Received
* Umgang mit Teilresultaten: Laboratory Report Data Processing Entry - statusCode:
  * completed: alle erwarteten Ergebnisse sind vorhanden und endgültig.
  * active: die Untersuchungen laufen noch. Einige Resultate sind noch ausstehend.
  * aborted: die Untersuchungen mussten abgebrochen werden. Einige Resultate können vorhanden sein.
* Endgültiger Befund: Ein Befund ist endgültig, wenn er kein Laboratory Report Data Processing Entry mit statusCode='active' enthält.

### Use Case 2: Auftrag mit externer Phlebotomie Station

Dieser Use Case unterscheidet sich vom vorhergehenden Use Case dadurch, dass das Probenmaterial nicht beim Auftraggeber sondern bei einer externen Phlebotomie Station bereitgestellt wird (z.B. Blutentnahme). [2-pertussis.xml](https://github.com/hl7ch/ch-lab-order/tree/master/input/examples/bundle/2-pertussis.xml)

Umsetzung der daraus entstehenden Anforderungen in der normativen Spezifikation:

* Blutentnahme in Phlebotomie Station: Specimen Collection - performer: Damit kann angegeben werden, wer die Probe entnommen hat.
  
### Use Case 3: Anfordern von Befundkopien

Wenn zu einer bestimmten Fragestellung eines bestimmten Patienten bereits Untersuchungen vorliegen, kommt es nicht selten vor, dass die Resultate / Befunde auch von nachbehandelnden Ärzten angefordert werden. Es kann der ursprüngliche Laborauftrag dazu verwendet werden. Nur ändert in diesem Zusammenhang die ServiceRequest.Category von "RequestForLabExam" zu "RequestForPrecedentReport". Ein allenfalls notwendiges Einverständnis des Patienten kann in ServiceRequest.supportingInfo hinterlegt werden. Es wird Auftraggeber erstellt in diesem Fall keinen herkömmlichen Auftrag und es in diesem Fall kein Probenmaterial an das Labor gesendet. Der Auftraggeber bestellt lediglich die Befunde zu einem früheren Auftrag.
Beispiel: Der Hausarzt bestellt Befunde, zu einem Auftrag, der vom Spital in Auftrag gegeben worden ist, weil der Spitalaustrittsbericht noch nicht vorliegt und der Patient bereits beim Hausarzt in Nachbehandlung ist. Dieser Use Case löst im Labor einen administrativen Prozess aus.
Umsetzung der daraus entstehenden Anforderungen in der normativen Spezifikation:

* Befundkopie: Wird im eLaborbefund nicht gekennzeichnet. Der nachbehandelnde Arzt erhält das gleiche, unveränderte Dokument so wie es ursprünglich ausgeliefert worden ist.
* Einverständnis des Patienten: Das Einholen des Einverständnisses ist  Bestandteil des ServiceRequest.consent und kann im Questionnaire abgefragt werden.
* Kein herkömmlicher/früherer Auftrag: Das Auftragsverfahren ist nicht Bestandteil des eLaborbefunds. Im Laborbefund wird mit \<CDA-CH-ORDR\> auf den Original-Auftrag verwiesen.
  
### Use Case 4: Anfordern von zusätzlichen Untersuchungen aus derselben Probe

Manchmal ergibt sich aus Testresultaten die Notwendigkeit, weitere Untersuchungen der schon im Labor vorhandenen Probe zu veranlassen.
ServiceRequest.categories - RequestForAdditionalExam

### Use Case 5: Anfordern von Bildern

Einzelne Laborresultate werden als Grafik zurückgeliefert (z.B. Blutbild, Pathologie-Slides, Serum-Elektrophorese). Die elektronische Befundanforderung muss also auch die Integration oder Referenzierung von Multimediadateien unterstützen.

* ServiceRequest.categories - RequestForPrecedentReportAndImages

### Use Case 6: Befunde mit weiteren Daten zum Gesundheitszustand des Patienten

ServiceRequest.reasonCode und ServiceRequest.reasonReference
Wenn dies für die Interpretation der, im Laborbefund genannten Laborresultate von besonderem Interesse ist, müssen weitere Daten zum Gesundheitszustand des Patienten im Laborbefund aufgenommen werden können. Insbesondere Körpertemperatur, Grösse, Gewicht und Gestationsalter.

* Körpertemperatur, Grösse, Gewicht: Können als Vitalzeichen in der Coded Vital Signs Section dokumentiert werden.
* Gestationsalter: Kann in der Coded Results Section dokumentiert werden.

Hinweis: Diese Kapitel werden von anderen Spezifikationen (CDA-CH und CDA-CH-VACD) gepflegt und im vorliegenden Austauschformat nicht weiter spezifiziert.

### Use Case 7: Befunde mit zusätzlichen Angaben zur Probe

Bei gewissen Untersuchungen reichen Auftrag und Probe alleine nicht aus, um das Laborresultat zu bestimmen. In solchen Fällen müssen Beobachtungen zur Probenentnahme an das Labor geliefert werden. Als Beispiel sei hier die Bestimmung der Creatinin-Clearance im 24 h Urin erwähnt. Dazu muss dem Labor die während einer bestimmten Zeitdauer gesammelte Urinmenge bekannt sein. Der Auftraggeben übermittelt dazu dem Labor das Urinvolumen, sowie eine Probe des Urins und des Serums.

* Gesammelte Urinmenge: Specimen.collection.quantity.

* Beginn und Ende der Urinsammlung: Specimen.collection.collected[collectedPeriod] - start - end

Ein weiteres Beispiel ist der Synacthen(ACTH) Funktionstest, bei dem eine basale Blutprobe am morgen nüchtern abgenommen wird, danach sofort das Synacthen gespritzt wird, und eine Stunde später eine zweite Blutprobe entnommen wird.

* Basale Serum-Probe nüchtern und Verabreichen von Synacthe: Specimen.collection.collected[collectedDateTime]

* Zweite Serum-Probe 60 Minuten später: Specimen.collection.collected[collectedDateTime]

### Use Case 8: Zusätzliche Angaben zum Kontext

Bei Blutgas-Analysen ist die dem Patienten verabreichte Sauerstoffmenge manchmal von Belang

* ServiceRequest.supportingInfo, z.Bsp. O2 4 Liter/Min.

### Use Case 9: Auftraggeber wählt die Analysen oder Analysen-Panel aus einem Katalog

Die Labore stellen ihren Kunden eine Auswahl von Laboruntersuchungen zu Verfügung, welche sie in einem Katalog vorhalten. Dabei kann es sich um Einzeluntersuchungen handeln, wie zum Beispiel Na Serum, oder um eine Kollektion von Untersuchungen, wie zum Beispiel Na, K und Cl im Serum handeln. Dazu möchte der Kunde auch wissen, welche Vorgaben zur Probe das Labor macht: Transport-Temperatur, minimale Probenmenge, Art des Transportgefässes etc.

* Composition - CatalogHeader profile

* PlanDefinition

  * SpecimenDefinition
  
  * ActivityDefinition - ObservationResultRequirement - ObservationDefinition

### Use Case 9: Sammelaufträge

Bei Sammelaufträgen (z.B. [5-biol-monit.xml](https://github.com/hl7ch/ch-lab-order/tree/master/input/examples/bundle/5-biol-monit.xml)) werden Arbeitslisten abgearbeitet, welche über eine längere Zeit (Tage/Wochen) andauern. In der Regel werden bestimmte Untersuchungen zu mehreren Patienten angefordert. Beispiele dazu sind:

* Suva Arbeitsmedizin: Bestellung von Laboruntersuchungen zu mehreren Patienten
* Lebensmittelindustrie: Untersuchung zu Mitarbeiterhygiene (z.B. Salmonellen-Kontaminierung)
* Polizeiliche Untersuchungen

Dabei muss insbesondere die Problematik der Mitarbeiterfluktuationen gelöst werden:

* Personen, für welche Tests angefordert sind arbeiten nicht mehr beim Auftraggeber
* Es sind Proben zu Personen eingetroffen, die nicht im Auftrag sind (neue Mitarbeiter)
Umsetzung der daraus entstehenden Anforderungen in der normativen Spezifikation:

* Untersuchungen zu mehreren Patienten: ein eLaborbefund enthält Informationen zum Gesundheitszustand genau eines Patienten. Bei Sammelaufträgen wird für jeden Patienten ein eigener eLaborbefund erstellt. Alle eLaborbefund verweisen aber mit \<CDA-CH-ORDR\> auf den gleichen (Sammel-)Auftrag.
* Problematik der Mitarbeiterfluktuationen: Ist nicht Bestandteil des eLaborbefunds. Für Personen, die nicht mehr beim Auftraggeber arbeiten wird kein eLaborbefund erstellt. Für neue Mitarbeiter werden eLaborbefunde erstellt.
