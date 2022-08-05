Instance: File4Document
InstanceOf: Bundle
Title: "ตัวอย่าง แฟ้มที่ 4: CHRONIC"
Description: "ข้อมูลผู้ป่วยโรคเรื้อรัง ทุกคนที่อาศัยอยู่ในเขตรับผิดชอบ หรือผู้ป่วยนอกเขตที่มารับบริการในสถานพยาบาล ประกอบด้วย Patient, Encounter, EpisodeOfCare และ Observation resource"
Usage: #example
* identifier.system = $ID_documentId
* identifier.value = "642b21b0-7cc8-46b7-9310-376135d551b3"
* type = #document
* entry[0]
  * fullUrl = "http://example.org/fhir/file-4-composition"
  * resource = File4Composition
* entry[+]
  * fullUrl = "http://example.org/fhir/patient-4"
  * resource = Patient4
* entry[+]
  * fullUrl = "http://example.org/fhir/chronic-episode-1"
  * resource = ChronicEpisode1
* entry[+]
  * fullUrl = "http://example.org/fhir/chronic-condition-1"
  * resource = ChronicCondition1
* entry[+]
  * fullUrl = "http://example.org/fhir/chronic-encounter-1"
  * resource = ChronicEncounter1
* entry[+]
  * fullUrl = "http://example.org/fhir/chronic-encounter-2"
  * resource = ChronicEncounter2
* entry[+]
  * fullUrl = "http://example.org/fhir/risk-behavior-1"
  * resource = RiskBehavior1



Instance: File4Composition
InstanceOf: Composition
Title: "Composition แฟ้มที่ 4: CHRONIC"
Description: "Composition ของแฟ้มที่ 4"
Usage: #example
* status = #final
* type
  * coding[0] = $LNC#75619-7 "National Health Care Surveys report"
  * coding[+] = $CS_THCC_43fileType#4 "CHRONIC"
* subject = Reference(Patient1)
* date = "2022-07-29T12:30:02+07:00"
* author = Reference(OrganizationMain)
  * insert GeneralReference($ID_Hcode, "XXXXX", "โรงพยาบาลตัวอย่าง")
* author = Reference(PractitionerDoctor1)
  * insert GeneralReference($ID_LO_Provider, "XXXXX", "พญ. สมหญิง จริงใจ")
* title = "แฟ้มที่ 4 CHRONIC: ข้อมูลผู้ป่วยโรคเรื้อรัง ทุกคนที่อาศัยอยู่ในเขตรับผิดชอบ หรือผู้ป่วยนอกเขตที่มารับบริการในสถานพยาบาล"
* section[0]
  * title = "ข้อมูลผู้ป่วย"
  * entry[0] = Reference(Patient4)
* section[+]
  * title = "การตรวจที่เกี่ยวข้อง"
  * entry[0] = Reference(ChronicEpisode1)
  * entry[+] = Reference(ChronicCondition1)
  * entry[+] = Reference(ChronicEncounter1)
  * entry[+] = Reference(ChronicEncounter2)
  * entry[+] = Reference(RiskBehavior1)