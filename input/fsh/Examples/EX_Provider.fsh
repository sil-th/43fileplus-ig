

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


Instance: OrganizationSecond
InstanceOf: Organization
Title: "สถานพยาบาลรองที่บันทึกข้อมูล"
Description: "Under construction"
* name = "Sandwich University Medical Center"


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



Instance: OrganizationNHSO
InstanceOf: Organization
Title: "สำนักงานหลักประกันสุขภาพแห่งชาติ (สปสช.)"
Description: "สำนักงานหลักประกันสุขภาพแห่งชาติ (สปสช.)"
* active = true
* type = $CS_HL7_OrgType#pay "Payer"
* name = "สำนักงานหลักประกันสุขภาพแห่งชาติ (สปสช.)"
* telecom[0]
  * system = #phone
  * value = "1330"
* telecom[+]
  * system = #phone
  * value = "021414000"
* telecom[+]
  * system = #fax
  * value = "021439730-1"
* telecom[+]
  * system = #url
  * value = "https://www.nhso.go.th"
* address
  * text = "เลขที่ 120 หมู่ 3 ชั้น 2-4 อาคารรวมหน่วยงานราชการ (อาคาร B) ศูนย์ราชการเฉลิมพระเกียรติ 80 พรรษา 5 ธันวาคม 2550 ถนนแจ้งวัฒนะ แขวงทุ่งสองห้อง เขตหลักสี่ กรุงเทพมหานคร ฯ 10210"
  * line = "เลขที่ 120 หมู่ 3 ชั้น 2-4 อาคารรวมหน่วยงานราชการ (อาคาร B) ศูนย์ราชการเฉลิมพระเกียรติ 80 พรรษา 5 ธันวาคม 2550 ถนนแจ้งวัฒนะ"
  * city = "ทุ่งสองห้อง"
  * district = "หลักสี่"
  * state = "กรุงเทพมหานคร"
  * postalCode = "10210"
  * country = "TH"