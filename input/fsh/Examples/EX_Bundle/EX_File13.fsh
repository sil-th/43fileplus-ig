Instance: bundle-file13-document
InstanceOf: Bundle
Title: "ตัวอย่าง Bundle - แฟ้มที่ 13: ICF"
Description: "ข้อมูลการประเมินสภาวะสุขภาพ ความสามารถ และปัจจัยอื่น ๆ กลุ่มเป้าหมายที่มารับบริการในโรงพยาบาล ประกอบด้วย Patient, Encounter และ Condition resource"
Usage: #example
* identifier.system = $ID_documentId
* identifier.value = "642b21b0-7cc8-46b7-9310-376135d551b3"
* type = #document
* timestamp = "2022-07-29T12:30:02+07:00"
* entry[0]
  * fullUrl = "http://example.org/Composition/composition-file-13"
  * resource = composition-file-13
* entry[+]
  * fullUrl = "http://example.org/Patient/patient-patient3"
  * resource = patient-patient3
* entry[+]
  * fullUrl = "http://example.org/Encounter/encounter-functional1"
  * resource = encounter-functional1
* entry[+]
  * fullUrl = "http://example.org/Condition/condition-disability1"
  * resource = condition-disability1
* entry[+]
  * fullUrl = "http://example.org/Organization/organization-main"
  * resource = organization-main


Instance: composition-file-13
InstanceOf: Composition
Title: "ตัวอย่าง Composition แฟ้มที่ 13: ICF"
Description: "Composition ของแฟ้มที่ 13"
Usage: #example
* status = #final
* type
  * coding[0] = $LNC#75619-7 "National Health Care Surveys report"
  * coding[+] = $CS_TH_FileList#13 "ICF"
* subject = Reference(Patient/patient-patient3)
* date = "2022-07-29T12:30:02+07:00"
* author[0] = Reference(Organization/organization-main)
  * insert GeneralReference($ID_Hcode, "XXXXX", "โรงพยาบาลตัวอย่าง")
* title = "แฟ้มที่ 13 ICF: ข้อมูลการประเมินสภาวะสุขภาพ ความสามารถ และปัจจัยอื่น ๆ กลุ่มเป้าหมายที่มารับบริการในโรงพยาบาล"
* section[0]
  * title = "ข้อมูลผู้ป่วย"
  * entry[0] = Reference(Patient/patient-patient3)
* section[+]
  * title = "การตรวจประเมินความบกพร่องทางสุขภาพ"
  * entry[0] = Reference(Encounter/encounter-functional1)
  * entry[+] = Reference(Condition/condition-disability1)
