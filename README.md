# HL7 Swiss FHIR Implementation Guide for generic laboratory order forms

This is HL7 Swiss FHIR implementation guide.
The implementation guide is based on CH_ORF (v0.9.1 STU Draft)
Order & Referral by Form - Implementation Guide (CH:ORF) <http://fhir.ch/ig/ch-orf/index.html>

## Example resource and structure definition

* Franz Muster is an example of the patient **resource**: examples\patient\FranzMuster.xml
* The corresponding **structure definition** example is here: resources\structuredefinition\ch-name-patient.xml
* [TODO] Pipette Lab is an example of a Lab Organisation
* The corresponding **structure definition** example is here: resources\structuredefinition\ch-name-organisation.xml
* These two resources are referenced in resources\implementationguide\ch.fhir.ig.name.xml

## Swiss Laboratory professional societies

* FAMH --The medical Laboratories of Switzerland <https://www.famh.ch/>
* SULM SULM Swiss Union of Laboratory Medicine <https://sulm.ch/d/>
* SSAI Swiss Society for Allergologie and Immunology <https://ssai.ch/>
* SSCC Swiss Society for Clinical Chemistry <http://www.sscc.ch/>
* SGH-SSH Swiss Society of Hematologie <https://www.sgh-ssh.ch/>
* SGM-SSM Swiss Society for Microbiology <https://www.swissmicrobiology.ch/>

## Prerequisites

* Oracle JDK: <https://fedoraproject.org/wiki/JDK_on_Fedora>
* IG Publisher: <https://fhir.github.io/latest-ig-publisher/org.hl7.fhir.publisher.jar>

### Installation of JDK Oracle for Fedora 31

$ cat /etc/fedora-release   or $ cat /usr/lib/os-release
Fedora release 31 (Thirty One)

$ java -version
java version "1.8.0_231"
Java(TM) SE Runtime Environment (build 1.8.0_231-b11)
Java HotSpot(TM) 64-Bit Server VM (build 25.231-b11, mixed mode)

### IG Publisher

Look at <https://confluence.hl7.org/display/FHIR/IG+Publisher+Documentation>

Running in workspace/ch-lab-order/ in command line mode:

$ java -jar input-cache/org.hl7.fhir.publisher.jar -ig ig.ini

if Terminology server not available:

$ java -jar input-cache/org.hl7.fhir.publisher.jar -ig ig.ini -tx n/a

Checks folders, installs hl7.fhir.r4.core#4.0.1, builds IG

### Visit your static pages powered by jekyll

#### web

<http://build.fhir.org/ig/hl7ch/ch-lab-order/branches/master/index.html>

#### local

* navigate to the root directory 'ch-lab-order'

after running IG publisher:

* cd output (This directory is build by IG Publisher and doesn't exist in the repository)

* open a new Gemfile (e.g. 'vi Gemfile')

* add the following two lines:

  source 'https://rubygems.org'

  gem 'github-pages', group: :jekyll_plugins

* run 'bundle install' and 'bundle exec jekyll serve'

* visite in your browser '127.0.0.1:4000/index.html'

## further procedure

look at 'https://fhirblog.com/clinicians-on-fhir-workshop/'

1. Description of Problem (use cases from CDA-CH)

2. Build Information models based on use cases

3. Build 'Resources model' and References Graph'

4. Build all FHIR Artifacts:

   * Profiles on resources (extenstions and constraints)

   * ValueSets and CodeSystem resources

   * Documentation

   * Other possible Resources

### Installation of environment on mac

1. Install Homebrew
```
$ /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
```

2. Install ruby for current user (do not install globally)
3. And add it to your bash profile
```
$ brew install ruby

$ echo 'export PATH="/usr/local/opt/ruby/bin:$PATH"' >> ~/.bash_profile
```

3. Relaunch terminal and check install path and version
```
$ which ruby

$ ruby -v
```

4. Install Jeykll and add your path file
```
$ gem install --user-install bundler jekyll

$ echo 'export PATH="$HOME/.gem/ruby/X.X.0/bin:$PATH"' >> ~/.bash_profile
```
_Important:_ X.X are the first two Numbers of the version checked previously in step 3.

5. Check if gem path point to correct directory
```
$ gem env
```

6. Download IG Publisher
7. Copy .jar file into main directory of your project
8. Execute .jar file with
```
$ java -jar publisher.jar -ig ig.ini
```

9. Let the pages be generated ♺

## Useful Links

### LOINC for in vitro Diagnostics (LLIVD)

DSTU2 U.S. Data Access Framework (DAF) DiagnosticOrder Profile
'https://www.hl7.org/fhir/dstu2/daf/diagnosticorder-daf.html'

Digital Format for Publication of LOINC to Vendor IVD Test Results by IICC:

'http://ivdconnectivity.org/wp-content/uploads/delightful-downloads/2017/06/IICC_LIVD_Digital_Format_2017_06_01_R2.pdf'

LIVD example bundle

'http://hl7.org/fhir/uv/livd/2019Sep/livd-example.html'

Roche qualitative LIVD example bundle 'http://hl7.org/fhir/uv/livd/2019Sep/livd-example-roche-qual.html#root'  

### Structured data capture

'https://wiki.ihe.net/index.php/Retrieve_Form_for_Data_Capture'

ITI QRPH Supplement – Structured Data Capture:
'https://ihe.net/uploadedFiles/Documents/QRPH/IHE_QRPH_Suppl_SDC.pdf'

HL7 FHIR Implementation guide: 'http://hl7.org/fhir/uv/sdc/2018Sep/index.html'

Request for diagnostic report 'http://hl7.org/fhir/servicerequest.html'

### Order and Referral by Form (ORF)

'http://build.fhir.org/ig/ahdis/ch-orf/'
