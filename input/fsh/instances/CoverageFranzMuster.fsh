Instance: CoverageFranzMuster
InstanceOf: CHCoreCoverage
Title: "Coverage: FranzMuster"
Description: "Example for Insurance Coverage"
Usage: #example
* meta.source = "https://www.ti.bfh.ch/de/bachelor/medizininformatik.html"
* contained = Sanitas
* identifier.system = "urn:oid:2.16.756.5.30.1.123.100.1.1.1"
* identifier.value = "80756015090002640000"
* status = #active
* beneficiary = Reference(Patient/FranzMuster)
* payor = Reference(Organization/Sanitas)