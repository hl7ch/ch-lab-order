# Projekt Laborverordnung oder ch-lab-order

Das Projekt betrifft den gerichteten Informationsaustausch zwischen Institutionen wie Arztpraxen, Spitälern und Teststellen mit Medizinisch Chemischen Laboren, Anfordern von früheren Testergebnissen usw. Solche Anfragen und Verordnungen werden meist mittels strukturierter Formulare erstellt. Formulare für diese Zwecke sind in der Regel proprietäre Konstrukte der Labore und eignen sich nur selten für die maschinelle Weiterverarbeitung. Darüber hinaus sind solche Formulare mehr oder weniger hartkodiert und betroffene Systeme lassen sich möglicherweise nicht ohne weiteres für neue Anwendungsfälle aktualisieren.

Das Projekt verwendet den HL7 Standard FHIR (darum werden die entsprechenden englischen Bezeichnungen erwähnt) und behandelt zwei Szenarien:

1. Eine Gesundheitsbehörde, z.B. BAG, eine Expertengremium, z.B. Fachgesellschaft für Labormedizin, erstellt einen Satz von Formularen (hier Questionnaires genannt) für genau definierte Anwendungsfälle, die dann in einem bestimmten Unternehmen des Gesundheitswesens, einer bestimmten Domäne, oder sogar landesweit eingesetzt werden.

2. Neue Anwendungsfälle oder Änderungen von Anwendungsfällen können einfach durch Modifikation bestehender oder neuer Formulare bearbeitet werden.

Anbieter, die ch-lab-order umsetzen, profitieren von einem hohen Wiederverwendungspotenzial der Formulare, die für verschiedene Einstellungen des gerichteten Informationsaustauschs verwendet werden können. Die spezifischen Bedürfnisse eines bestimmten Anwendungsfalles werden durch eine angemessene Gestaltung des Formulares und der verwendeten Wertesätze (hier Value-Sets genannt) abgedeckt.

Das Projekt hat folgenden Anwendungsfall vor Augen: Ein Mensch füllt einen Fragebogen für eine bestimmte Anfrage aus und sendet diesen Fragebogen an einen Empfänger. Dort liest ein Mensch den Fragebogen mit seinem Inhalt. Eine entsprechende Antwort funktioniert auf die gleiche Weise. Möglicherweise ist mit dem Fragebogen einer zusätzlichen Nutzlast verbunden: Einer Anfrage können Ergebnisse vorangegangener Labor-Untersuchungen beigefügt werden; die Antwort kann ein diagnostisches Ergebnis (hier observation genannt) sein.

Das primäre Ziel von ch-lab-order ist eine konsistente Darstellung der Fragebögen sowohl auf der Ausfüll- als auch auf der Empfangsseite. Es besteht jedoch die Notwendigkeit einer maschinellen Verarbeitung: am Ausfüllort im Sinne einer Vorbefüllung der Attribute mit Inhalten aus anderen Anwendungen (z.B. demographische Daten eines Patienten), während der Empfänger den Inhalt des Formulars für die weitere Verarbeitung in seinen eigenen Prozessen bereit haben möchte. Offensichtlich sind die beiden Ziele - semantische Interoperabilität und Flexibilität bei der Definition von Fragebögen - widersprüchlich. Das ch-lab-order Projekt löst dieses Problem durch einen Satz von obligatorischen vorgegebenen Elementen und Codes mit definierter Bedeutung, die Bestandteil jedes Fragebogens sind. Es obliegt einem Formular-Designer für strukturierte Datenerfassung, Fragebögen mit zusätzlichen anwendungsfallbezogenen Elementen zu erstellen.

Anwendungen, welche Konformität mit dem ch-lab-order Projekt beanspruchen, müssen folgende Kriterien erfüllen:

* Sie müssen alle Elemente des Fragebogens in einer Benutzerschnittstelle (Bildschirm, Papier-Fragebogen) darstellen können, sowie auch die Gruppierung und die Reihenfolge der Elemente innerhalb des Formulares entsprechend wiedergeben können.

* alle Codes, die sich auf zwingend vorgegebene Elemente des Formulares beziehen, weiterverarbeiten können.

Anbietern von Anwendungen mit Fragebogen auf beiden Seiten des Kommunikationsprozesses wird dringend empfohlen, für alle Daten in den obligatorisch vorgegebenen Elementen Schnittstellen zu anderen Anwendungen (wie KIS und PACS) zu implementieren. Anwendungen, die auf diese Weise konzipiert sind, bieten Out-of-the-box Verbindungsfähigkeit für obligatorische gegebene Elemente sowie Out-of-the-box Interoperabilität für alle Fragebögen, soweit es sich um Benutzerschnittstellen seitens Ausfüller und Empfänger handelt.

Nichts spricht gegen Schnittstellen für Daten im anwendungsfallspezifischen Teil eines bestimmten Fragebogens. Man muss jedoch bedenken, dass solche Schnittstellen an einen bestimmten Fragebogen gebunden sind. Besitztum oder andere Mittel, die Änderungen des Fragebogens regeln, sind daher ratsam. Wir haben vorgesehen, eine solche Schnittstelle zum [LOINC FHIR Terminology Server](https://loinc.org/fhir/) zu verwenden.

Das ch-lab-order Projekt befasst sich mit Transport, Workflow und Inhalt. Er basiert auf den Ressourcen von HL7 FHIR und insbesondere auf der Ressource FHIR-Fragebogen (questionnaire). FHIR spezifiziert RESTful Web Services als Transportmittel.  Eine Implementierung auf Basis von RESTful Web Services wird dringend empfohlen, ist aber nicht zwingend erforderlich. Der Workflow wird durch den Geltungsbereich des ch-lab-order Projekts angesprochen, der den gerichteten Informationsaustausch mit Anfrage und Antwort behandelt. Der Inhalt wird durch eine Reihe von obligatorisch vorgegebenen Elementen und Codes und die Möglichkeit, beides je nach Bedarf der angesprochenen Anwendungsfälle zu erweitern, definiert.

## Transaktionen und Content Modules

Das Projekt ch-lab-order beruht dem [ch-orf Implementation Guide](http://fhir.ch/ig/ch-orf/index.html), welcher wiederum auf dem [SDC Implementation Guide](http://www.hl7.org/fhir/uv/sdc/history.cfml) basiert.

Fragebögen und Formulare sind im Gesundheitswesen allgegenwärtig. Sie werden zur Erfassung von Verwaltungsdaten, Antragsdaten, klinischen Informationen, Forschungsinformationen, für die Berichterstattung über die öffentliche Gesundheit verwendet - jede Art von Daten, die von den Gesundheitssystemen manipuliert werden. Sie bieten einen benutzerfreundlichen Mechanismus zur konsistenten Erfassung von Daten. In FHIR werden Formulare durch die Ressource  (Questionnaire) und ausgefüllte Formulare durch die Ressource QuestionnaireResponse dargestellt. Die Basisspezifikation von FHIR definiert diese Ressourcen, gibt jedoch keine Hinweise darauf, wie sie zu verwenden sind, und setzt auch keine minimalen Erwartungen an die Interoperation. Der SDC-Implementierungsleitfaden bietet eine Reihe von Anleitungen für die Verwendung von Questionnaire und QuestionnaireResponse.

## Workflow

### Auftragsformulare

Die laborspezifischen Auftragsformulare werden in 3 Schritten erstellt:

1. ORF Formular als Ausgangspunkt

2. Davon abgeleitet das generische Labor- und Pathologie-Auftragsformular

3. Von den Laboren durch die ValueSets ihrer Kataloge und evtl. durch das Logo ergänzte Fragebogen

#### ORF Formular (generisches Auftragsformular)

Ein generisches Auftrags- und Überweisungsformular ist der Ausgangspunkt. Dieses Formular beinhaltet alle Daten, die für Auftragsempfänger nützlich sind, die sich aber für verschiedene Domänen verwenden lassen: Radiologie, Pathologie, Medizinisch-Chemische Labore, Spitaleinweisung etc. Es erfüllt die Anfoderungen des ORF Implementationsguides.

* Auftrags-ID

* Daten des Auftraggebers (Practitioner, Organisation)

* Patientendaten (Personen- und Administrationsdaten): subject

* Klinische Daten: Anamnese, Befunde, Diagnose, Fragestellung

* Auftragsempfänger: Organisation, Medizinisch-chemisches Labor

#### Das generische Labor- und Pathologie-Auftragsformular (ch-lab-order)

Das Labor- und Pathologie-Auftragsformular enthält zusätzlich zu den Daten des generischen Auftragsformulares noch weitere Datenfelder und erfüllt die Anforderungen des ch-lab-order Implementationsguides:

* Die Proben-ID (specimen-ID), welche für Labor- und Pathologie-Untersuchungen benötigt wird, ist ein wichtiger Bestandteil des Auftrages. Durch sie wird auf die dazugehörige Probe eindeutig referenziert. Der Auftraggeber erhält die Proben-ID erst als letzten Schritt im Arbeitsablauf zur Erstellung des Auftrages, damit sichergestellt ist, dass keine Probe ohne dazugehörigen Auftrag im Labor ankommt. Die Probe (Serum, Urin, Vollblut, Gewebeteil etc.) wird mit der Proben-ID in Form einer ausgedruckten Klebe-Etikette versehen. Das Labor muss zu diesem Zweck einen Service einrichten, der dem Auftraggeber die Probem-ID zukommen lässt, in dem Moment, in dem er den digitalen Auftrag erhält.

* Fachrichtungs-ID, gestützt auf die [LOINC Laboratory Order Panels](https://loinc.org/panels/category/laboratory-order-panels/), aktuell 22 Panels, die LOINC speziell für den Laborauftrag zur Verfügung stellt. Alternativ könnten auch die Kategorien der [Laboratory studies (set)](https://loinc.org/26436-6/), die sich über den loinc [Terminologie Server](https://fhir.loinc.org/CodeSystem/$lookup?system=http://loinc.org&code=26436-6) auffinden lassen, verwendet werden. Spezifische Fragebogen der Laborfachrichtung lassen sich hier einbauen (3. Schritt)

#### Laborspezifische Auftragsformulare

Die ch-lab-order Formulare sind von einem Form Repository öffentlich abrufbar. Das Repository liefert eine Liste der fachspezifischen Labor-Auftragsformularen (aktuell 22 Einträge, ensprechend den 22 Laboratory Order Panels). Aus der Liste können dann die benötigten Auftragsformulare ausgewählt und geholt werden. Diese enthalten noch keinerlei Value-Sets von Labor-Tests.

Damit ein Laborbeauftragter generische Labor- und Pathologie-Auftragsformulare für seine eigene Organisation sichtbar zur Verfügung stellen kann, hat er die Möglichkeit, das Formular mit einem eigenen Logo zu versehen versehen (Branding), z.B. als PDF Template oder angehängte Bilddatei. Da der Implementationsguide nur auf JSON- bzw. XML Files ausgerichtet ist, wird sich das Branding ausserhalb seines Aufgabenbereichs befinden.

1. Anschliessend kann er sie mit den spezifischen Value-Sets der verschiedenen Labor-Fachrichtungen in Form von Fragebogen (Questionnaires) ausstatten (Fragebogen finden). Die Fragebogen lassen die Auswahl der gewünschten Analysen zu. Es ist vorgesehen, die Auftragsformulare direkt durch Abfrage der LOINC Laboratory Order Panels zu erstellen. Da die Labore nur ein Subset aller möglichen Analysen (sogenannter Labor-Katalog) anbieten, muss der Laborbeauftragte die gebrandeten Labor-Auftrtagsformulare entsprechend einschränken, sodass sie nur die vom Labor angebotenen Analysen beinhalten.

2. Erweiterte Formular Darstellung: Analysen können sinnvoll gruppiert werden; sie können auch zwecks besserer Übersichtlichkeit zusammenklappbar vorkommen, Bsp. Leberwerte/ALAT, ASAT, GPT, Bilirubin

3. Formular-Verhalten: Das Verhalten kann bei Bedarf gesteuert werden. So muss z.B. bei der Anforderung der Kreatinin-Clearance sichergestellt werden, dass das Urinvolumen/24h abgefragt wird.

4. Adaptive Formulare: Es besteht auch die Möglichkeit, Auftrags-Formulare direkt aus generischen Formularen mittels Import von Laboratory Order Panels zu erstellen und mit spezifischen Fragen zu ergänzen.

5. Vorausgefüllte Formulare: Selbstverständlich müssen die Daten des ORF Formulars schon vorausgefüllt werden. Bei Vorhandensein vorausgefüllt sind Anamnese, Status, Diagnose, aktuelle Medikation, und Fragestellung, jeweils fallbezogen.

6. Weiterverwendung von Formulardaten: Die ausgefüllten Formulare werden mit den vorausgefüllten Daten in Form eines Bündels (FHIR: bundle) vom Typ Dokument (FHIR: typ Document) in elektronischer Form End-zu-End verschlüsselt übermittelt (FHIR: Transaction).

### Weiterverarbeitung im Labor

Das Labor hat bei der Ankunft der Proben den entsprechenden Auftrag schon im Laborsystem erhalten und muss ihn mittels Proben-ID diesem zuordnen. Bei komplizierteren Analysen oder überraschenden Befunden kann der Facharzt für Labormedizin oder für die entsprechende Subspezialität allfällig nötige Rückfragen machen oder Ergänzungsaufträge vorschlagen. Nachdem alle Fragen geklärt sind, kann die Analyse der Proben erfolgen, z.B. in Form von vollautomatisierten Vorgängen in einem Analyzer. Dieser liefert dann die Resultate an den Auftraggeber.
