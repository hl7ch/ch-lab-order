Instance: HealthInsuranceCard
InstanceOf: ChOrfCoverage
Title: "Covarage HealthInsuranceCard Franz Muster"
Description: "Example for Insurance"
Usage: #example
* identifier.type = $coverage-identifiertype#VeKa
* identifier.system = "http://ehic.com/insurer/123456789/member"
* identifier.value = "A123456780"
* status = #active
* type = $coverage-type#KVG "According to KVG"
* subscriber = Reference(Patient/FranzMuster)
* beneficiary = Reference(Patient/FranzMuster)
* period.start = "2024-01-01"
* period.end = "2024-12-31"
* payor.identifier.system = "http://ehic.com/insurer"
* payor.identifier.value = "123456789"