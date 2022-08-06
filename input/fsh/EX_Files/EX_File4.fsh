Instance: File4Document
InstanceOf: Bundle
Title: "ตัวอย่าง แฟ้มที่ 4: CHRONIC"
Description: "ข้อมูลผู้ป่วยโรคเรื้อรัง ทุกคนที่อาศัยอยู่ในเขตรับผิดชอบ หรือผู้ป่วยนอกเขตที่มารับบริการในสถานพยาบาล ประกอบด้วย Patient, Encounter, EpisodeOfCare และ Observation resource"
Usage: #example
* identifier.system = $ID_documentId
* identifier.value = "642b21b0-7cc8-46b7-9310-376135d551b3"
* type = #document
* timestamp = "2022-07-29T12:30:02+07:00"
* entry[0]
  * fullUrl = "http://example.org/Composition/File4Composition"
  * resource = File4Composition
* entry[+]
  * fullUrl = "http://example.org/Patient/Patient4"
  * resource = Patient4
* entry[+]
  * fullUrl = "http://example.org/EpisodeOfCare/ChronicEpisode1"
  * resource = ChronicEpisode1
* entry[+]
  * fullUrl = "http://example.org/Condition/ChronicCondition1"
  * resource = ChronicCondition1
* entry[+]
  * fullUrl = "http://example.org/Encounter/ChronicEncounter1"
  * resource = ChronicEncounter1
* entry[+]
  * fullUrl = "http://example.org/Encounter/ChronicEncounter2"
  * resource = ChronicEncounter2
* entry[+]
  * fullUrl = "http://example.org/Observation/RiskBehavior1"
  * resource = RiskBehavior1
* entry[+]
  * fullUrl = "http://example.org/Organization/OrganizationMain"
  * resource = OrganizationMain


Instance: File4Composition
InstanceOf: Composition
Title: "Composition แฟ้มที่ 4: CHRONIC"
Description: "Composition ของแฟ้มที่ 4"
Usage: #example
* status = #final
* type
  * coding[0] = $LNC#75619-7 "National Health Care Surveys report"
  * coding[+] = $CS_THCC_43fileType#4 "CHRONIC"
* subject = Reference(Patient/Patient4)
* date = "2022-07-29T12:30:02+07:00"
* author[0] = Reference(Organization/OrganizationMain)
  * insert GeneralReference($ID_Hcode, "XXXXX", "โรงพยาบาลตัวอย่าง")
* title = "แฟ้มที่ 4 CHRONIC: ข้อมูลผู้ป่วยโรคเรื้อรัง ทุกคนที่อาศัยอยู่ในเขตรับผิดชอบ หรือผู้ป่วยนอกเขตที่มารับบริการในสถานพยาบาล"
* section[0]
  * title = "ข้อมูลผู้ป่วย"
  * entry[0] = Reference(Patient/Patient4)
* section[+]
  * title = "การตรวจที่เกี่ยวข้อง"
  * entry[0] = Reference(EpisodeOfCare/ChronicEpisode1)
  * entry[+] = Reference(Condition/ChronicCondition1)
  * entry[+] = Reference(Encounter/ChronicEncounter1)
  * entry[+] = Reference(Encounter/ChronicEncounter2)
  * entry[+] = Reference(Observation/RiskBehavior1)