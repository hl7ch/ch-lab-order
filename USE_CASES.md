# Use Cases [TODO replace CDA Expl. by FHIR Expl.]

## UC 1: Befund im herkömmlichen Sinne

Die herkömmlichen Aufträge und deren Befunde wurden in den vorhergehenden Kapiteln erläutert. Es handelt sich dabei um einen Use Case, in welchem der Auftraggeber (z.B. Arzt) beim Labor verschiedene Untersuchungen bestellt. Dabei sendet der Auftraggeber Probenmaterial an das Labor und das Labor sendet Befunde an den Auftraggeber zurück. Diese Befunde können auch gestaffelt als Teilresultate zu verschiedenen Zeitpunkten erfolgen.

Umsetzung der daraus entstehenden Anforderungen in der normativen Spezifikation:

* Angaben zum Probenmaterial: Specimen Collection und Participant (Body, specimen collection)
* Angaben zum Probeneingang beim Labor: Specimen Received
* Umgang mit Teilresultaten: Laboratory Report Data Processing Entry - statusCode:
  * completed: alle erwarteten Ergebnisse sind vorhanden und endgültig.
  * active: die Untersuchungen laufen noch. Einige Resultate sind noch ausstehend.
  * aborted: die Untersuchungen mussten abgebrochen werden. Einige Resultate können vorhanden sein.
* Endgültiger Befund: Ein Befund ist endgültig, wenn er kein Laboratory Report Data Processing Entry mit statusCode='active' enthält.

## UC 2: Auftrag mit externer Phlebotomie Station

Dieser Use Case unterscheidet sich vom vorhergehenden Use Case dadurch, dass das Probenmaterial nicht beim Auftraggeber sondern bei einer externen Phlebotomie Station bereitgestellt wird (z.B. Blutentnahme).

Umsetzung der daraus entstehenden Anforderungen in der normativen Spezifikation:

* Blutentnahme in Phlebotomie Station: Specimen Collection - performer: Damit kann angegeben werden, wer die Probe entnommen hat.
  
## UC 3: Anfordern von Befundkopien

Wenn zu einer bestimmten Fragestellung eines bestimmten Patienten bereits Untersuchungen vorliegen, kommt es nicht selten vor, dass die Resultate / Befunde auch von nachbehandelnden Ärzten angefordert werden. Dazu ist das Einverständnis des Patienten notwendig. Der Auftraggeber erstellt in diesem Fall keinen herkömmlichen Auftrag und es wird auch kein Probenmaterial an das Labor gesendet. Der Auftraggeber bestellt lediglich die Befunde zu einem früheren Auftrag.
Beispiel: Der Hausarzt bestellt Befunde, zu einem Auftrag, der vom Spital in Auftrag gegeben worden ist, weil der Spitalaustrittsbericht noch nicht vorliegt und der Patient bereits beim Hausarzt in Nachbehandlung ist. Dieser Use Case löst im Labor einen administrativen Prozess aus.
Umsetzung der daraus entstehenden Anforderungen in der normativen Spezifikation:

* Befundkopie: Wird im eLaborbefund nicht gekennzeichnet. Der nachbehandelnde Arzt erhält das gleiche, unveränderte Dokument so wie es ursprünglich ausgeliefert worden ist.
* Einverständnis des Patienten: Das Einholen des Einverständnisses ist nicht Bestandteil des eLaborbefunds. Wenn gewünscht, kann das Einverständnis aber im eLaborbefund im Header mit dem Element Authorization angegeben werden.
* Kein herkömmlicher/früherer Auftrag: Das Auftragsverfahren ist nicht Bestandteil des eLaborbefunds. Im Laborbefund wird mit \<CDA-CH-ORDR\> auf den Original-Auftrag verwiesen.
* Kein Probenmaterial: Specimen Collection / Specimen Received sind optional und werden hier weggelassen.
  
## UC 4: Anfordern von Teilresultaten

Oft werden zu erteilten Laboraufträgen Teilresultate bestellt. Dies kann im Voraus erfolgen, wenn der Auftraggeber bereits weiss, dass er einzelne Teile des Auftrags früher als Befund erhalten möchte als andere Teile des Auftrags. Es kann aber auch geschehen, dass die Erfüllung des Auftrags länger dauert als angenommen und dass in einem solchen Fall der Auftraggeber diejenigen Befunde erhalten möchte, zu denen der Befund resp. das Resultat bereits vorliegt. Dieser Use Case löst im Labor einen administrativen Prozess aus. So muss allenfalls eine noch nicht erfolgte Validierung im Labor per sofort initialisiert werden.

Umsetzung der daraus entstehenden Anforderungen in der normativen Spezifikation: siehe UC1.

## UC 5: Befunde mit Grafiken

Einzelne Laborresultate werden als Grafik zurückgeliefert (z.B. Reiberdiagramm oder Elektrophorese). Der elektronische Befund muss also auch die Integration oder Referenzierung von Multimediadateien unterstützen.

Umsetzung der daraus entstehenden Anforderungen in der normativen Spezifikation:

* Multimediadateien: [Multimedia Embedded Content](http://e-health-wiki.ch/index.php/Ehscda:CDA-CH-LREP_(specification)#Multimedia_Embedded_Content)
* Externe Dokumente: [External Document](http://e-health-wiki.ch/index.php/Ehscda:CDA-CH-LREP_(specification)#External_document)

## UC 6: Befunde mit weiteren Daten zum Gesundheitszustand des Patienten

Wenn dies für die Interpretation der, im Laborbefund genannten Laborresultate von besonderem Interesse ist, müssen weitere Daten zum Gesundheitszustand des Patienten im Laborbefund aufgenommen werden können. Insbesondere Körpertemperatur, Grösse, Gewicht und Gestationsalter.

Umsetzung der daraus entstehenden Anforderungen in der normativen Spezifikation:

* Körpertemperatur, Grösse, Gewicht: Können als Vitalzeichen in der Coded Vital Signs Section dokumentiert werden.
* Gestationsalter: Kann in der Coded Results Section dokumentiert werden.

Hinweis: Diese Kapitel werden von anderen Spezifikationen (CDA-CH und CDA-CH-VACD) gepflegt und im vorliegenden Austauschformat nicht weiter spezifiziert.

## UC 7: Befunde mit zusätzlichen Angaben zur Probe

Bei gewissen Untersuchungen reichen Auftrag und Probe alleine nicht aus, um das Laborresultat zu bestimmen. In solchen Fällen müssen Beobachtungen zur Probenentnahme an das Labor geliefert werden. Als Beispiel sei hier der 24-Stunden-Urintest erwähnt. Dazu muss dem Labor die, während einer bestimmten Zeitdauer gesammelte Urinmenge bekannt sein. Das Labor dokumentiert die, bei Testdurchführung bekannten Werte im Laborbefund, um dem Empfänger eine korrekte Interpretation des Laborresultats ermöglichen zu können.
Umsetzung der daraus entstehenden Anforderungen in der normativen Spezifikation:

* Bestimmte Zeitdauer: Specimen Collection - effectiveTime (als Intervall mit low und high) angeben oder mit einer entryRelationship eine entsprechende observation (13362-9 - Collection duration of Urine) angeben.
* Gesammelte Urinmenge: Specimen Collection - mit einer entryRelationship eine entsprechende observation (19153-6 - Volume in Urine collected for unspecified duration) angeben.

## UC 8: Befunde mit genauen Angaben zu Test-Kit und Analyzer

In gewissen Situationen ist es wichtig, dass der Empfänger weiss, mit welchem Test-Kit von welchem Hersteller und auf welchem Analyzer die Untersuchung durchgeführt wurde. Dies ist insbesondere dann von Bedeutung, wenn Verläufe von Laborresultaten über eine Zeitperiode analysiert werden müssen. Die einzelnen Laborresultate sind nur direkt vergleichbar, wenn diese mit dem gleichen Test-Kit auf dem gleichen Analyzer durchgeführt wurden. Bei unterschiedlichen Test-Kits/Analyzern entstehen Abweichungen.
Umsetzung der daraus entstehenden Anforderungen in der normativen Spezifikation:

* Test-Kit: Participant (Body, laboratory device) - scopingEntity: Nummer, Art und Hersteller des Test-Kits
* Analyzer: Participant (Body, laboratory device) - playingDevice: Name und Model des Analyzers

## UC 9: Sammelaufträge

Bei Sammelaufträgen (z.B. [Fallbeispiel 5: Sammelauftrag „Biologisches Monitoring SUVA](http://e-health-wiki.ch/index.php/Ehscda:CDA-CH-LREP_(specification)#Fallbeispiel_5:_Sammelauftrag_.E2.80.9EBiologisches_Monitoring_SUVA.E2.80.9C)) werden Arbeitslisten abgearbeitet, welche über eine längere Zeit (Tage/Wochen) andauern. In der Regel werden bestimmte Untersuchungen zu mehreren Patienten angefordert. Beispiele dazu sind:

* Suva Arbeitsmedizin: Bestellung von Laboruntersuchungen zu mehreren Patienten
* Lebensmittelindustrie: Untersuchung zu Mitarbeiterhygiene (z.B. Salmonellen-Kontaminierung)
* Polizeiliche Untersuchungen

Dabei muss insbesondere die Problematik der Mitarbeiterfluktuationen gelöst werden:

* Personen, für welche Tests angefordert sind arbeiten nicht mehr beim Auftraggeber
* Es sind Proben zu Personen eingetroffen, die nicht im Auftrag sind (neue Mitarbeiter)
Umsetzung der daraus entstehenden Anforderungen in der normativen Spezifikation:

* Untersuchungen zu mehreren Patienten: ein eLaborbefund enthält Informationen zum Gesundheitszustand genau eines Patienten. Bei Sammelaufträgen wird für jeden Patienten ein eigener eLaborbefund erstellt. Alle eLaborbefund verweisen aber mit \<CDA-CH-ORDR\> auf den gleichen (Sammel-)Auftrag.
* Problematik der Mitarbeiterfluktuationen: Ist nicht Bestandteil des eLaborbefunds. Für Personen, die nicht mehr beim Auftraggeber arbeiten wird kein eLaborbefund erstellt. Für neue Mitarbeiter werden eLaborbefunde erstellt.
