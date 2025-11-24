Instance: HealthInsuranceCardFranzMuster
InstanceOf: CHCoreCoverage
Usage: #inline
* identifier[insuranceCardNumber].system = "urn:oid:2.16.756.5.30.1.123.100.1.1.1"
* identifier[insuranceCardNumber].value = "80756011110123400000"
* status = #active
* type = $coverage-type#1 "Krankenversicherung (obligat.)"
* subscriber = Reference(Patient/FranzMuster)
* beneficiary = Reference(Patient/FranzMuster)
* period.start = "2024-01-01"
* period.end = "2024-12-31"
* payor.identifier.system = "http://example.org/insurer"
* payor.identifier.value = "12345678900"

Instance: HealthInsuranceCardHansGuggindieluft  // Is Template
InstanceOf: CHCoreCoverage
Usage: #inline
* identifier[insuranceCardNumber].system = "urn:oid:2.16.756.5.30.1.123.100.1.1.1"
* identifier[insuranceCardNumber].value = "80756011110123400009"
* status = #active
* type = $coverage-type#1 "Krankenversicherung (obligat.)"
* subscriber = Reference(Patient/FranzMuster)
* beneficiary = Reference(Patient/FranzMuster)
* period.start = "2024-01-01"
* period.end = "2024-12-31"
* payor.identifier.system = "http://example.org/insurer"
* payor.identifier.value = "12345678901"