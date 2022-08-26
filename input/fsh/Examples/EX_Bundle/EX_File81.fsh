Instance: bundle-file81-document
InstanceOf: Bundle
Title: "ตัวอย่าง Bundle - แฟ้มที่ 81: CANCER"
Description: "ข้อมูลการวินิจฉัยผู้ป่วยโรคมะเร็งในแต่ละครั้งที่เข้ารักษาในโรงพยาบาล หรือศูนย์/สถาบันมะเร็ง ประกอบด้วย Patient, Encounter, Condition และ Observation resource"
Usage: #example
* identifier.system = $ID_documentId
* identifier.value = "642b21b0-7cc8-46b7-9310-376135d551b3"
* type = #document
* timestamp = "2022-07-29T12:30:02+07:00"
* entry[0]
  * fullUrl = "http://example.org/Composition/composition-file-81"
  * resource = composition-file-81
* entry[+]
  * fullUrl = "http://example.org/Patient/patient-patient4"
  * resource = patient-patient4
* entry[+]
  * fullUrl = "http://example.org/Encounter/encounter-ipd2"
  * resource = encounter-ipd2
* entry[+]
  * fullUrl = "http://example.org/Condition/condition-ipd2-main"
  * resource = condition-ipd2-main
* entry[+]
  * fullUrl = "http://example.org/Observation/observation-cancer-grade"
  * resource = observation-cancer-grade
* entry[+]
  * fullUrl = "http://example.org/Organization/organization-main"
  * resource = organization-main


Instance: composition-file-81
InstanceOf: Composition
Title: "ตัวอย่าง Composition แฟ้มที่ 81: CANCER"
Description: "Composition ของแฟ้มที่ 81"
Usage: #example
* status = #final
* type
  * coding[0] = $LNC#75619-7 "National Health Care Surveys report"
  * coding[+] = $CS_THCC_43fileType#81 "CANCER"
* subject = Reference(Patient/patient-patient4) "นาง สมควร ใจดี"
* date = "2022-07-29T12:30:02+07:00"
* author[0] = Reference(Organization/organization-main)
  * insert GeneralReference($ID_Hcode, "XXXXX", "โรงพยาบาลตัวอย่าง")
* title = "แฟ้มที่ 81 CANCER: ข้อมูลการวินิจฉัยผู้ป่วยโรคมะเร็งในแต่ละครั้งที่เข้ารักษาในโรงพยาบาล หรือศูนย์/สถาบันมะเร็ง"
* section[0]
  * title = "ข้อมูลผู้ป่วย"
  * entry[0] = Reference(Patient/patient-patient4) "นาง สมควร ใจดี"
* section[+]
  * title = "ข้อมูลการรับบริการ"
  * entry[0] = Reference(Encounter/encounter-ipd2)
  * entry[+] = Reference(Condition/condition-ipd2-main)
  * entry[+] = Reference(Observation/observation-cancer-grade)