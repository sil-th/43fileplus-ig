Instance: File1Document
InstanceOf: Bundle
Title: "ตัวอย่าง แฟ้มที่ 1: PERSON"
Description: "ข้อมูลทั่วไปของประชาชนในเขตรับผิดชอบ และผู้ที่มาใช้บริการ ประกอบด้วย Patient, RelatedPerson และ Observation resource"
Usage: #example
* identifier.system = $ID_documentId
* identifier.value = "642b21b0-7cc8-46b7-9310-376135d551b3"
* type = #document
* timestamp = "2022-07-29T12:30:02+07:00"
* entry[0]
  * fullUrl = "http://example.org/Composition/File1Composition"
  * resource = File1Composition
* entry[+]
  * fullUrl = "http://example.org/Patient/Patient1"
  * resource = Patient1
* entry[+]
  * fullUrl = "http://example.org/Observation/BloodGroup"
  * resource = BloodGroup
* entry[+]
  * fullUrl = "http://example.org/Observation/BloodGroupABO"
  * resource = BloodGroupABO
* entry[+]
  * fullUrl = "http://example.org/Observation/BloodGroupRh"
  * resource = BloodGroupRh
* entry[+]
  * fullUrl = "http://example.org/Observation/RoleInHouse"
  * resource = RoleInHouse
* entry[+]
  * fullUrl = "http://example.org/Observation/RoleInVillage"
  * resource = RoleInVillage
* entry[+]
  * fullUrl = "http://example.org/Observation/Occupation"
  * resource = Occupation
* entry[+]
  * fullUrl = "http://example.org/Organization/OrganizationMain"
  * resource = OrganizationMain


Instance: File1Composition
InstanceOf: Composition
Title: "ตัวอย่าง Composition แฟ้มที่ 1: PERSON"
Description: "Composition ของแฟ้มที่ 1"
Usage: #example
* status = #final
* type
  * coding[0] = $LNC#75619-7 "National Health Care Surveys report"
  * coding[1] = $CS_THCC_43fileType#1 "PERSON"
* subject = Reference(Patient/Patient1)
* date = "2022-07-29T12:30:02+07:00"
* author[0] = Reference(Organization/OrganizationMain)
  * insert GeneralReference($ID_Hcode, "XXXXX", "โรงพยาบาลตัวอย่าง")
* title = "แฟ้มที่ 1 PERSON: ข้อมูลทั่วไปของประชาชนในเขตรับผิดชอบ และผู้ที่มาใช้บริการ"
* section[0]
  * title = "ข้อมูลทั่วไป"
  * entry[0] = Reference(Patient/Patient1)
* section[+]
  * title = "หมู่เลือด"
  * entry[0] = Reference(Observation/BloodGroup)
  * entry[+] = Reference(Observation/BloodGroupABO)
  * entry[+] = Reference(Observation/BloodGroupRh)
* section[+]
  * title = "ประวัติทางสังคม"
  * entry[0] = Reference(Observation/RoleInHouse)
  * entry[+] = Reference(Observation/RoleInVillage)
  * entry[+] = Reference(Observation/Occupation)


