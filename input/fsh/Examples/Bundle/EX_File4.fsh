Instance: bundle-file04-document
InstanceOf: Bundle
Title: "ตัวอย่าง Bundle - แฟ้มที่ 4: CHRONIC"
Description: "ข้อมูลผู้ป่วยโรคเรื้อรัง ทุกคนที่อาศัยอยู่ในเขตรับผิดชอบ หรือผู้ป่วยนอกเขตที่มารับบริการในสถานพยาบาล ประกอบด้วย Patient, Encounter, EpisodeOfCare และ Observation resource"
Usage: #example
* identifier.system = $ID_documentId
* identifier.value = "642b21b0-7cc8-46b7-9310-376135d551b3"
* type = #document
* timestamp = "2022-07-29T12:30:02+07:00"
* entry[0]
  * fullUrl = "http://example.org/Composition/composition-file-04"
  * resource = composition-file-04
* entry[+]
  * fullUrl = "http://example.org/Patient/patient-patient4"
  * resource = patient-patient4
* entry[+]
  * fullUrl = "http://example.org/EpisodeOfCare/episodeofcare-chronic1"
  * resource = episodeofcare-chronic1
* entry[+]
  * fullUrl = "http://example.org/Condition/condition-chronic1"
  * resource = condition-chronic1
* entry[+]
  * fullUrl = "http://example.org/Encounter/encounter-chronic1"
  * resource = encounter-chronic1
* entry[+]
  * fullUrl = "http://example.org/Encounter/encounter-chronic2"
  * resource = encounter-chronic2
* entry[+]
  * fullUrl = "http://example.org/Observation/observation-risk-behavior1"
  * resource = observation-risk-behavior1
* entry[+]
  * fullUrl = "http://example.org/Organization/organization-main"
  * resource = organization-main


Instance: composition-file-04
InstanceOf: Composition
Title: "ตัวอย่าง Composition แฟ้มที่ 4: CHRONIC"
Description: "Composition ของแฟ้มที่ 4"
Usage: #example
* status = #final
* type
  * coding[0] = $LNC#75619-7 "National Health Care Surveys report"
  * coding[+] = $CS_THCC_43fileType#4 "CHRONIC"
* subject = Reference(Patient/patient-patient4)
* date = "2022-07-29T12:30:02+07:00"
* author[0] = Reference(Organization/organization-main)
  * insert GeneralReference($ID_Hcode, "XXXXX", "โรงพยาบาลตัวอย่าง")
* title = "แฟ้มที่ 4 CHRONIC: ข้อมูลผู้ป่วยโรคเรื้อรัง ทุกคนที่อาศัยอยู่ในเขตรับผิดชอบ หรือผู้ป่วยนอกเขตที่มารับบริการในสถานพยาบาล"
* section[0]
  * title = "ข้อมูลผู้ป่วย"
  * entry[0] = Reference(Patient/patient-patient4)
* section[+]
  * title = "การตรวจที่เกี่ยวข้อง"
  * entry[0] = Reference(EpisodeOfCare/episodeofcare-chronic1)
  * entry[+] = Reference(Condition/condition-chronic1)
  * entry[+] = Reference(Encounter/encounter-chronic1)
  * entry[+] = Reference(Encounter/encounter-chronic2)
  * entry[+] = Reference(Observation/observation-risk-behavior1)