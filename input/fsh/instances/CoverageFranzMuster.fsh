Instance: CoverageFranzMuster
InstanceOf: CHCoreCoverage
Title: "CoverageFranzMuster"
Description: "Example for Insurance Coverage"
Usage: #definition
* meta.source = "https://www.ti.bfh.ch/de/bachelor/medizininformatik.html"
* contained = Sanitas
* identifier.system = "urn:oid:2.16.756.5.30.1.123.100.1.1.1"
* identifier.value = "80756015090002640000"
* status = #active
* beneficiary = Reference(FranzMuster)
* payor = Reference(Sanitas)