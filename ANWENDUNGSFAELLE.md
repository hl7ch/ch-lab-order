# Anwendungsfälle [TODO Replace CDA Expl. by FHIR Expl]

## Fallbeispiel 1: Verdacht auf tiefe Venenthrombose

Ein Patient erscheint am 09.03.2016 in der Arztpraxis bei Dr. med. Mustermann. Er identifiziert sich mündlich über seine Stammdaten als Hans Guggindieluft, 01.01.1981. Er berichtet über unklare Beinschmerzen im linken Unterschenkel sowie gleichzeitig aufgetretene atemabhängige Schmerzen und Husten. Der Arzt führt die Anamnese und körperliche Untersuchung durch und verordnet folgende Laborparameter:

* Blutbild inkl. Differenzierung
* CRP
* D-Dimer

Der Arzt führt selber das Blutbild und die CRP-Bestimmung mittels Point of care Diagnostik durch, die D-Dimer-Diagnostik wird als Quantitative Diagnostik in einem externen Einsendelabor verordnet. Zur Gewinnung der Probe wird eine Blutentnahme im Liegen durchgeführt (1 EDTA-Röhrchen, 1 Citrat-Röhrchen). Der Auftrag wird an das externe Labor übermittelt und die Probe wird mittels telefonisch geordertem Kurier in das externe Versandlabor geschickt. Die Resultate der internen Point of Care-Diagnostik (Blutbild und CRP) werden im Laborblatt des Patienten in der Arztpraxis-Software eingetragen (händisch oder über lokal installierte elektronische Schnittstellen). Es erfolgt daher eine Verordnung des Arztes an den Patienten zur Selbstverabreichung eines thrombosehemmenden Mittels.
Die Resultate des Einsendelabors treffen am gleichen Abend elektronisch beim Hausarzt ein und werden ebenfalls im Laborblatt des Patienten eingetragen. Durch den Einsatz des vorliegenden Austauschformats kann dieser Prozess vollautomatisch erfolgen. Nach telefonischer Rückfrage des Arztes beim Einsendelabor auf Grund eines grenzwertigen D-Dimer-Befundes erfolgt die Auskunft, dass mittels D-Dimer in dieser Situation eine tiefe Venenthrombose nicht ausgeschlossen werden kann und es erfolgt daher eine telefonische Wiedereinbestellung des Patienten am nächsten Tag zur Durchführung einer Sonographie der Beine.

Dazu passendes CDA Beispiel, welches dieser Spezifikation entspricht:
[CDA-CH-LREP-1_VerdachtAufTiefeVenenthrombose.xml](https://svn.code.sf.net/p/hl7ch/code/trunk/projects/eHealthSuisse/eLaborbefund/v1.0/CDA-CH-LREP-1_VerdachtAufTiefeVenenthrombose.xml)

## Fallbeispiel 2: Verdacht auf Keuchhusten

Fallbeispiel 2: Verdacht auf Keuchhusten
Zu diesem Fallbeispiel befinden sich im Whitepaper[1], Anhang 8.7 konkrete Beispieldokumente. Die « Abbildung 2 » im Whitepaper[1] zeigt das zu diesem Fallbeispiel gehörende Use Case Diagramm.

Eine Mutter sucht mit ihrem 6-jährigen Sohn Emil Kummer, geb. 5. Mai 2014, den Hausarzt auf, weil das Kind seit zwei Wochen zunehmend hustet, mit krampfartigen Hustenanfällen, und Fieber hat. Die MPA der Arztpraxis misst das Fieber, macht bereits eine Fingerkuppen-Blutentnahme beim Sohn, bestimmt das CRP und fertigt einen Blutausstrich an. Der Arzt vermutet einen viralen Infekt, möchte aber Keuchhusten ausschliessen, obwohl das Kind dagegen geimpft ist. Da er wegen eines Notfalles unter Zeitdruck ist, möchte er den dazu nötigen Rachenabstrich nicht selbst durchführen, sondern bittet die Mutter, das Kind ins nahegelegene Labor zu begleiten, um den Abstrich in Ruhe anfertigen zu lassen.
Er erstellt einen Laborauftrag zur Durchführung einer Pertussis-PCR im Rachenabstrich des Kindes und gibt den Auftrag der Mutter mit. Die Mutter selbst ist nicht sicher, ob sie selbst gegen Keuchhusten geimpft ist. Demzufolge nimmt der Hausarzt FamilienHausarzt die Pertussis-Impfung bei ihr gleich vor und empfiehlt, dasselbe beim Kindsvater und bei den Grosseltern durchzuführen. Die MPA hat inzwischen den Blutausstrich des Sohnes im Mikroskop angeschaut und findet ausgesprochen viele reaktive Lymphozyten, die ihr verdächtig erscheinen. Sie ist unsicher und fragt den Arzt, welcher den Auftrag gibt, die Blutausstriche des Kindes der Mutter mitzugeben und ebenfalls im Labor genauer untersuchen zu lassen.
Die Mutter findet sich mit ihrem Sohn im Labor ein, wo auf Grund des Untersuchungsauftrages des Arztes vorerst die Identität des Sohnes festgestellt wird. Anschliessend wird im Blutentnahmeraum des Labors beim Kind ein Rachenabstrich sowie eine Venenpunktion cubital rechts durchgeführt und zusammen mit den mitgebrachten Blutausstrichen und dem Untersuchungsauftrag des Arztes ins Labor weitergegeben.

Dazu passendes CDA Beispiel, welches dieser Spezifikation entspricht: [CDA-CH-LREP-2_VerdachtAufKeuchhusten.xml](https://svn.code.sf.net/p/hl7ch/code/trunk/projects/eHealthSuisse/eLaborbefund/v1.0/CDA-CH-LREP-2_VerdachtAufKeuchhusten.xml)

## Fallbeispiel 3: Gynäkologische Jahreskontrolle

Die MPA der Gynäkologie Praxis Dr. Peter Pap bereitet die Konsultationen des nächsten Tages vor. Da die Praxis nur ein minimales eigenes Labor betreibt, werden gewisse Patientinnen vor dem Besuchstermin ins nahe gelegene Ambulatorium des Labors Pipette geschickt, so auch die junge Patientin Frau Marina Rubella, geb. 8. 8. 1992. Die MPA verordnet in ihrer Praxis-Software für die Patientin Rubella die mit dem Labor vereinbarten Standard-Analysen für die gynäkologische 3-Jahreskontrolle. Dazu gehört auch die Blutentnahme für die Serothek für allfällige Nachverordnungen.
Das Labor übermittelt die Resultate spätestens 90 Minuten nach der Blutentnahme in die Praxis. Dr. Pap verordnet während der Konsultation folgende Aufträge:

* Gynäkologische Zervix Zytologie: Pap-Abstrich - falls indiziert soll auch der Nachweis und die Typisierung von HPV (Humane Papillomaviren) durchgeführt werden.
 Entnahmematerial gemäss Angaben des Labors.
 Die zytologische Untersuchung wird im Labor Pipette durchgeführt. Die allfällige Typisierung führt das Labor Pipette nicht selber durch.
* Urin-Teilstatus (Combur9 Test): Wird durch die MPA in der Praxis durchgeführt: folgende Parameter werden untersucht: ph, Leukozyten, Erythrozyten, Nitrit, Protein, Glucose, Ketone, Urobilinogen, Bilirubin (halbquantitative Untersuchungen, Resultate werden wahrscheinlich von Hand ins Praxis-Laborsystem eingetragen)
* Urin-Bakteriologie: Entnahmematerial gemäss Angaben des Labors
Allgemeine Bakt, inkl. Sprosspilze ans Labor Pipette
Die Übermittlung des Auftrags wird durch die MPA ausgelöst (Entnahmezeitpunkt)
* Nachverordnung "Screening vor Schwangerschaft": Alle Untersuchungen können aus den vorgängig im Ambulatorium entnommenen Materialien (Serum, EDTA-Blut) durchgeführt werden (Hepatitis-Bc Antikörper, HIV 1+2 (Ak+p24), Röteln IgG, Lues-/Syphilis-Suchtest)
* Mammographie: Auftrag für das Röntgeninstitut Dr. Curie.

Dazu passendes CDA Beispiel, welches dieser Spezifikation entspricht: [CDA-CH-LREP-3_GynaekologischeJahreskontrolle.xml](https://svn.code.sf.net/p/hl7ch/code/trunk/projects/eHealthSuisse/eLaborbefund/v1.0/CDA-CH-LREP-3_GynaekologischeJahreskontrolle.xml)

## Fallbeispiel 4: Verdacht auf eine Sepsis

Die Patientin Klebsiella Keller, geb. 12. 12. 1975, ist schon seit längerer Zeit im Regionalspital Zugersee. In der vergangenen Nacht hat sich ihr Allgemeinzustand massiv verschlechtert. Da ein Verdacht auf eine Sepsis besteht, wird der Patientin am Morgen Blut für eine Blutkultur entnommen. 30 Minuten später wird nochmals eine aerobe und eine anaerobe Blutkultur angelegt, sowie eine Urinprobe gewonnen.
Alle fünf Proben werden im externen Labor Pipette weiter bearbeitet. Dort werden in allen Materialien Keime nachgewiesen und dann mittels Massenspektrometrie identifiziert. In den vier Blutkulturflaschen konnten die Erreger „Klebsiella pneumoniae“ und „Escherichia coli“ nachgewiesen werden, in einer aeroben Flasche noch zusätzlich das Bakterium „Streptococcus mitis“. Der in der Urinprobe identifizierte Keim ist normalerweise nicht pathogen.
Von allen drei im Blut nachgewiesenen Erreger wird ein Antibiogramm erstellt. Dabei zeigt sich, dass die beiden Wirkstoffe “Amoxicillin+Clavulansäure“ und „Ceftriaxon“ bei allen drei Keimen wirksam sind. Der Mikrobiologe informiert den behandelnden Arzt regelmässig über die verschiedenen Teilresultate.

Dazu passendes CDA Beispiel, welches dieser Spezifikation entspricht: [CDA-CH-LREP-4_VerdachtAufSepsis.xml](https://svn.code.sf.net/p/hl7ch/code/trunk/projects/eHealthSuisse/eLaborbefund/v1.0/CDA-CH-LREP-4_VerdachtAufSepsis.xml)

## Fallbeispiel 5: Sammelauftrag „Biologisches Monitoring SUVA“

Betriebe, welche mit gesundheitsgefährdenden Stoffen arbeiten und in denen Arbeitnehmende speziellen Risiken ausgesetzt sind, werden von der SUVA der arbeitsmedizinischen Vorsorge unterstellt. Eine Kontrollmöglichkeit ist die Biologische Überwachung. Diese beurteilt die Exposition von Arbeitnehmenden gegenüber chemischen Arbeitsstoffen durch die Bestimmung der Arbeitsstoffe oder von Metaboliten (Umwandlungsprodukten) im biologischen Material (z.B. Urin).
Die Arbeitsmedizinische Vorsorge (AMV) der SUVA sendet dem Labor monatlich eine Liste mit folgenden Informationen pro Betrieb (Sammelauftrag):

* Betrieb (Name, Adresse, Betriebs-Nummer)
* Anzahl Arbeitnehmende für das Biologische Monitoring
* durchzuführende Untersuchungen (z.B. Arsen, Blei, Quecksilber, Mandelsäure)
Die Betriebe erhalten von der AMV eine Liste inkl. Etiketten mit den betroffenen Arbeitnehmenden. Hier nehmen wir als Beispiel für einen Arbeitnehmer Beat Borer, geb. 6. 6. 1986. Das Labor bedruckt die Auftragsformulare mit der Betriebsnummer und sendet den Betrieben die notwendige Anzahl Urinbecher und Auftragsformulare zu. Im Betrieb werden Auftragsformulare und Urinbecher mit den von der AMV gelieferten Etiketten versehen und an die Arbeitnehmenden abgegeben. Die Proben inkl. Auftragsformular werden vom Betrieb ans Labor gesendet.

[Biologisches Monitoring SUVA](https://www.suva.ch/de-CH/material/Factsheets/biologisches-monitoring-und-biologische-arbeitsstofftoleranzwerte)

Dazu passendes CDA Beispiel, welches dieser Spezifikation entspricht: [CDA-CH-LREP-5_BiologischesMonitoringSuva.xml](https://svn.code.sf.net/p/hl7ch/code/trunk/projects/eHealthSuisse/eLaborbefund/v1.0/CDA-CH-LREP-5_BiologischesMonitoringSuva.xml)