Instance: File9Document
InstanceOf: Bundle
Title: "ตัวอย่าง แฟ้มที่ 9: PROVIDER"
Description: "ข้อมูลผู้ให้บริการของสถานพยาบาล ประกอบด้วย Practitioner และ PractitionerRole resource"
Usage: #example
* identifier.system = $ID_documentId
* identifier.value = "642b21b0-7cc8-46b7-9310-376135d551b3"
* type = #document
* timestamp = "2022-07-29T12:30:02+07:00"
* entry[0]
  * fullUrl = "http://example.org/Composition/File9Composition"
  * resource = File9Composition
* entry[+]
  * fullUrl = "http://example.org/Practitioner/PractitionerDoctor1"
  * resource = PractitionerDoctor1
* entry[+]
  * fullUrl = "http://example.org/PractitionerRole/PractitionerRoleDoctor1"
  * resource = PractitionerRoleDoctor1
* entry[+]
  * fullUrl = "http://example.org/Organization/OrganizationMain"
  * resource = OrganizationMain

Instance: File9Composition
InstanceOf: Composition
Title: "Composition แฟ้มที่ 9: PROVIDER"
Description: "Composition ของแฟ้มที่ 9"
Usage: #example
* status = #final
* type
  * coding[0] = $LNC#75619-7 "National Health Care Surveys report"
  * coding[+] = $CS_THCC_43fileType#9 "PROVIDER"
* subject = Reference(Practitioner/PractitionerDoctor1)
* date = "2022-07-29T12:30:02+07:00"
* author[0] = Reference(Organization/OrganizationMain)
  * insert GeneralReference($ID_Hcode, "XXXXX", "โรงพยาบาลตัวอย่าง")
* title = "แฟ้มที่ 9 PROVIDER: ข้อมูลผู้ให้บริการของสถานพยาบาล"
* section[0]
  * title = "ข้อมูลผู้ให้บริการ"
  * entry[0] = Reference(Practitioner/PractitionerDoctor1)
* section[+]
  * title = "ข้อมูลบทบาทผู้ให้บริการ"
  * entry[+] = Reference(PractitionerRole/PractitionerRoleDoctor1)
