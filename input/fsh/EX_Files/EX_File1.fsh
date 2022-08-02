Instance: File1Document
InstanceOf: Bundle
Title: "ตัวอย่าง แฟ้มที่ 1: PERSON"
Description: "ข้อมูลทั่วไปของประชาชนในเขตรับผิดชอบ และผู้ที่มาใช้บริการ ประกอบด้วย Patient, RelatedPerson และ Observation resource"
Usage: #example
* identifier.system = $ID_documentId
* identifier.value = "642b21b0-7cc8-46b7-9310-376135d551b3"
* type = #document
* entry[+].fullUrl = "http://example.org/fhir/file-1-composition"
* entry[=].resource = File1Composition
* entry[+].fullUrl = "http://example.org/fhir/patient-1"
* entry[=].resource = Patient1
* entry[+].fullUrl = "http://example.org/fhir/bloodgroup"
* entry[=].resource = BloodGroup
* entry[+].fullUrl = "http://example.org/fhir/bloodgroup-abo"
* entry[=].resource = BloodGroupABO
* entry[+].fullUrl = "http://example.org/fhir/bloodgroup-rh"
* entry[=].resource = BloodGroupRh
* entry[+].fullUrl = "http://example.org/fhir/fstatus"
* entry[=].resource = RoleInHouse
* entry[+].fullUrl = "http://example.org/fhir/vstatus"
* entry[=].resource = RoleInVillage
* entry[+].fullUrl = "http://example.org/fhir/fstatus"
* entry[=].resource = Occupation


Instance: File1Composition
InstanceOf: Composition
Title: "Composition แฟ้มที่ 1: PERSON"
Description: "Composition ของแฟ้มที่ 1"
Usage: #example
* status = #final
* type
  * coding[0] = $LNC#75619-7 "National Health Care Surveys report"
  * coding[1] = $CS_THCC_43fileType#1 "PERSON"
* subject = Reference(Patient1)
* date = "2022-07-29T12:30:02+07:00"
* author = Reference(OrganizationMain)
  * insert GeneralReference($ID_Hcode, "XXXXX", "โรงพยาบาลตัวอย่าง")
* title = "แฟ้มที่ 1 PERSON: ข้อมูลทั่วไปของประชาชนในเขตรับผิดชอบ และผู้ที่มาใช้บริการ"
* section[0]
  * title = "ข้อมูลทั่วไป"
  * entry[0] = Reference(Patient1)
* section[+]
  * title = "หมู่เลือด"
  * entry[0] = Reference(BloodGroup)
  * entry[+] = Reference(BloodGroupABO)
  * entry[+] = Reference(BloodGroupRh)
* section[+]
  * title = "ประวัติทางสังคม"
  * entry[0] = Reference(RoleInHouse)
  * entry[+] = Reference(RoleInVillage)
  * entry[+] = Reference(Occupation)


