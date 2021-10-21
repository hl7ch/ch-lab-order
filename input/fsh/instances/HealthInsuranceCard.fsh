Instance: HealthInsuranceCard
InstanceOf: Coverage
Title: "HealthInsuranceCard"
Description: "Example for Insurance"
Usage: #definition
* identifier.system = "http://ehic.com/insurer/123456789/member"
* identifier.value = "A123456780"
* status = #active
* type = $v3-ActCode#EHCPOL "extended healthcare"
* subscriber = Reference(FranzMuster)
* beneficiary = Reference(FranzMuster)
* period.end = "2012-03-17"
* payor.identifier.system = "http://ehic.com/insurer"
* payor.identifier.value = "123456789"