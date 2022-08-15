Instance: File13Document
InstanceOf: Bundle
Title: "ตัวอย่าง แฟ้มที่ 13: ICF"
Description: "ข้อมูลการประเมินสภาวะสุขภาพ ความสามารถ และปัจจัยอื่น ๆ กลุ่มเป้าหมายที่มารับบริการในโรงพยาบาล ประกอบด้วย Patient, Encounter และ Condition resource"
Usage: #example
* identifier.system = $ID_documentId
* identifier.value = "642b21b0-7cc8-46b7-9310-376135d551b3"
* type = #document
* timestamp = "2022-07-29T12:30:02+07:00"
* entry[0]
  * fullUrl = "http://example.org/Composition/File13Composition"
  * resource = File13Composition
* entry[+]
  * fullUrl = "http://example.org/Patient/Patient3"
  * resource = Patient3
* entry[+]
  * fullUrl = "http://example.org/Encounter/FunctionalEncounter"
  * resource = FunctionalEncounter
* entry[+]
  * fullUrl = "http://example.org/Condition/DisabilityCondition1"
  * resource = DisabilityCondition1
* entry[+]
  * fullUrl = "http://example.org/Organization/OrganizationMain"
  * resource = OrganizationMain


Instance: File13Composition
InstanceOf: Composition
Title: "ตัวอย่าง Composition แฟ้มที่ 13: ICF"
Description: "Composition ของแฟ้มที่ 13"
Usage: #example
* status = #final
* type
  * coding[0] = $LNC#75619-7 "National Health Care Surveys report"
  * coding[+] = $CS_THCC_43fileType#13 "ICF"
* subject = Reference(Patient/Patient3)
* date = "2022-07-29T12:30:02+07:00"
* author[0] = Reference(Organization/OrganizationMain)
  * insert GeneralReference($ID_Hcode, "XXXXX", "โรงพยาบาลตัวอย่าง")
* title = "แฟ้มที่ 13 ICF: ข้อมูลการประเมินสภาวะสุขภาพ ความสามารถ และปัจจัยอื่น ๆ กลุ่มเป้าหมายที่มารับบริการในโรงพยาบาล"
* section[0]
  * title = "ข้อมูลผู้ป่วย"
  * entry[0] = Reference(Patient/Patient3)
* section[+]
  * title = "การตรวจประเมินความบกพร่องทางสุขภาพ"
  * entry[0] = Reference(Encounter/FunctionalEncounter)
  * entry[+] = Reference(Condition/DisabilityCondition1)
