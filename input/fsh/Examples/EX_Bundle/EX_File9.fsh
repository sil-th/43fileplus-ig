Instance: bundle-file09-document
InstanceOf: Bundle
Title: "ตัวอย่าง Bundle - แฟ้มที่ 9: PROVIDER"
Description: "ข้อมูลผู้ให้บริการของสถานพยาบาล ประกอบด้วย Practitioner และ PractitionerRole resource"
Usage: #example
* identifier.system = $ID_documentId
* identifier.value = "642b21b0-7cc8-46b7-9310-376135d551b3"
* type = #document
* timestamp = "2022-07-29T12:30:02+07:00"
* entry[0]
  * fullUrl = "http://example.org/Composition/composition-file-09"
  * resource = composition-file-09
* entry[+]
  * fullUrl = "http://example.org/Practitioner/practitioner-doctor1"
  * resource = practitioner-doctor1
* entry[+]
  * fullUrl = "http://example.org/PractitionerRole/practitionerrole-doctor1"
  * resource = practitionerrole-doctor1
* entry[+]
  * fullUrl = "http://example.org/Organization/organization-main"
  * resource = organization-main

Instance: composition-file-09
InstanceOf: Composition
Title: "ตัวอย่าง Composition แฟ้มที่ 9: PROVIDER"
Description: "Composition ของแฟ้มที่ 9"
Usage: #example
* status = #final
* type
  * coding[0] = $LNC#75619-7 "National Health Care Surveys report"
  * coding[+] = $CS_TH_FileList#9 "PROVIDER"
* subject = Reference(Practitioner/practitioner-doctor1)
* date = "2022-07-29T12:30:02+07:00"
* author[0] = Reference(Organization/organization-main)
  * insert GeneralReference($ID_Hcode, "XXXXX", "โรงพยาบาลตัวอย่าง")
* title = "แฟ้มที่ 9 PROVIDER: ข้อมูลผู้ให้บริการของสถานพยาบาล"
* section[0]
  * title = "ข้อมูลผู้ให้บริการ"
  * entry[0] = Reference(Practitioner/practitioner-doctor1)
* section[+]
  * title = "ข้อมูลบทบาทผู้ให้บริการ"
  * entry[0] = Reference(PractitionerRole/practitionerrole-doctor1)
