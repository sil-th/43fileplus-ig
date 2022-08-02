

Instance: Patient1Home
InstanceOf: Location
Title: "ข้อมูลบ้านของผู้ป่วยรายที่ 1"
Description: "Under construction"
* name = "บ้าน"


Instance: OrganizationMain
InstanceOf: Organization
Title: "สถานพยาบาลหลักที่บันทึกข้อมูล"
Description: "Under construction"
* identifier[0].use = #official
* identifier[=].system = "urn:oid:2.16.528.1"
* identifier[=].value = "91654"
* identifier[+].use = #usual
* identifier[=].system = "urn:oid:2.16.840.1.113883.2.4.6.1"
* identifier[=].value = "17-0112278"
* type.coding[0] = urn:oid:2.16.840.1.113883.2.4.15.1060#V6 "University Medical Hospital"
* type.coding[+] = http://terminology.hl7.org/CodeSystem/organization-type#prov "Healthcare Provider"
* name = "Burgers University Medical Center"
* telecom.system = #phone
* telecom.value = "022-655 2300"
* telecom.use = #work
* address[0].use = #work
* address[=].line = "Galapagosweg 91"
* address[=].city = "Den Burg"
* address[=].postalCode = "9105 PZ"
* address[=].country = "NLD"
* address[+].use = #work
* address[=].line = "PO Box 2311"
* address[=].city = "Den Burg"
* address[=].postalCode = "9100 AA"
* address[=].country = "NLD"
* contact[0].purpose = http://terminology.hl7.org/CodeSystem/contactentity-type#PRESS
* contact[=].telecom.system = #phone
* contact[=].telecom.value = "022-655 2334"
* contact[+].purpose = http://terminology.hl7.org/CodeSystem/contactentity-type#PATINF
* contact[=].telecom.system = #phone
* contact[=].telecom.value = "022-655 2335"


Instance: PractitionerDoctor1
InstanceOf: Practitioner
Title: "แพทย์ประจำสถานพยาบาล รายที่ 1"
Description: "Under construction"
Usage: #example
* name[0]
  * extension
    * url = "http://hl7.org/fhir/StructureDefinition/language"
    * valueCode = #th
  * text = "พญ. สมหญิง จริงใจ"
  * family = "จริงใจ"
  * given = "สมหญิง"
  * prefix = "พญ."

