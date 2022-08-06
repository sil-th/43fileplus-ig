Instance: File12Document
InstanceOf: Bundle
Title: "ตัวอย่าง แฟ้มที่ 12: FUNCTIONAL"
Description: "ข้อมูลการตรวจประเมินความบกพร่องทางสุขภาพ ประกอบด้วย Patien, Encounter และ Observation resource"
Usage: #example
* identifier.system = $ID_documentId
* identifier.value = "642b21b0-7cc8-46b7-9310-376135d551b3"
* type = #document
* timestamp = "2022-07-29T12:30:02+07:00"
* entry[0]
  * fullUrl = "http://example.org/Composition/File12Composition"
  * resource = File12Composition
* entry[+]
  * fullUrl = "http://example.org/Patient/Patient3"
  * resource = Patient3
* entry[+]
  * fullUrl = "http://example.org/Encounter/FunctionalEncounter"
  * resource = FunctionalEncounter
* entry[+]
  * fullUrl = "http://example.org/Observation/FunctionalTest"
  * resource = FunctionalTest
* entry[+]
  * fullUrl = "http://example.org/Observation/FunctionalConclusion"
  * resource = FunctionalConclusion
* entry[+]
  * fullUrl = "http://example.org/Organization/OrganizationMain"
  * resource = OrganizationMain

Instance: File12Composition
InstanceOf: Composition
Title: "Composition แฟ้มที่ 12: FUNCTIONAL"
Description: "Composition ของแฟ้มที่ 12"
Usage: #example
* status = #final
* type
  * coding[0] = $LNC#75619-7 "National Health Care Surveys report"
  * coding[+] = $CS_THCC_43fileType#12 "FUNCTIONAL"
* subject = Reference(Patient/Patient3)
* date = "2022-07-29T12:30:02+07:00"
* author[0] = Reference(Organization/OrganizationMain)
  * insert GeneralReference($ID_Hcode, "XXXXX", "โรงพยาบาลตัวอย่าง")
* title = "แฟ้มที่ 12 FUNCTIONAL: ข้อมูลการตรวจประเมินความบกพร่องทางสุขภาพ"
* section[0]
  * title = "ข้อมูลหญิงผู้ป่วย"
  * entry[0] = Reference(Patient/Patient3)
* section[+]
  * title = "การตรวจประเมินความบกพร่องทางสุขภาพ"
  * entry[+] = Reference(Encounter/FunctionalEncounter)
  * entry[+] = Reference(Observation/FunctionalTest)
  * entry[+] = Reference(Observation/FunctionalConclusion)