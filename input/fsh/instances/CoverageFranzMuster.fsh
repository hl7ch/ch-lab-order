Instance: CoverageFranzMuster
InstanceOf: CHCoreCoverage
Usage: #inline
* contained = Sanitas
* identifier[insuranceCardNumber].system = "urn:oid:2.16.756.5.30.1.123.100.1.1.1"
* identifier[insuranceCardNumber].value = "80756011110123400000"
* status = #active
* beneficiary = Reference(Patient/FranzMuster)
* payor = Reference(Organization/Sanitas)