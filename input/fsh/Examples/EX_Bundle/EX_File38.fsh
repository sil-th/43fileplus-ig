Instance: bundle-file38-document
InstanceOf: Bundle
Title: "ตัวอย่าง Bundle - แฟ้มที่ 38: NEWBORNCARE"
Description: "ข้อมูลการดูแลทารกหลังคลอดของหญิงตั้งครรภ์ ในเขตรับผิดชอบ ประกอบด้วย Patient, Encounter, Observation, และ Appointment resource"
Usage: #example
* identifier.system = $ID_documentId
* identifier.value = "642b21b0-7cc8-46b7-9310-376135d551b3"
* type = #document
* timestamp = "2022-07-29T12:30:02+07:00"
* entry[0]
  * fullUrl = "http://example.org/Composition/composition-file-38"
  * resource = composition-file-38
* entry[+]
  * fullUrl = "http://example.org/Patient/patient-patient7"
  * resource = patient-patient7
* entry[+]
  * fullUrl = "http://example.org/Encounter/encounter-newborn1"
  * resource = encounter-newborn1
* entry[+]
  * fullUrl = "http://example.org/Observation/observation-newborncare-umbilical-hygiene"
  * resource = observation-newborncare-umbilical-hygiene
* entry[+]
  * fullUrl = "http://example.org/Observation/observation-newborncare-skin-hygiene"
  * resource = observation-newborncare-skin-hygiene
* entry[+]
  * fullUrl = "http://example.org/Observation/observation-newborncare-urination"
  * resource = observation-newborncare-urination
* entry[+]
  * fullUrl = "http://example.org/Observation/observation-newborncare-defecation"
  * resource = observation-newborncare-defecation
* entry[+]
  * fullUrl = "http://example.org/Observation/observation-newborncare-general-health"
  * resource = observation-newborncare-general-health
* entry[+]
  * fullUrl = "http://example.org/Observation/observation-newborncare-overall-condition"
  * resource = observation-newborncare-overall-condition
* entry[+]
  * fullUrl = "http://example.org/Observation/observation-newborncare-food"
  * resource = observation-newborncare-food
* entry[+]
  * fullUrl = "http://example.org/Appointment/appointment-newborn1"
  * resource = appointment-newborn1
* entry[+]
  * fullUrl = "http://example.org/Organization/organization-main"
  * resource = organization-main


Instance: composition-file-38
InstanceOf: Composition
Title: "ตัวอย่าง Composition แฟ้มที่ 38: NEWBORNCARE"
Description: "Composition ของแฟ้มที่ 38"
Usage: #example
* status = #final
* type
  * coding[0] = $LNC#75619-7 "National Health Care Surveys report"
  * coding[+] = $CS_TH_FileList#38 "NEWBORNCARE"
* subject = Reference(Patient/patient-patient7) "ด.ช. สมมิตร ใจดี"
* date = "2022-07-29T12:30:02+07:00"
* author[0] = Reference(Organization/organization-main)
  * insert GeneralReference($ID_Hcode, "XXXXX", "โรงพยาบาลตัวอย่าง")
* title = "แฟ้มที่ 38 NEWBORNCARE: ข้อมูลการดูแลทารกหลังคลอดของหญิงตั้งครรภ์ ในเขตรับผิดชอบ"
* section[0]
  * title = "ข้อมูลทารก"
  * entry[0] = Reference(Patient/patient-patient7) "ด.ช. สมมิตร ใจดี"
* section[+]
  * title = "ข้อมูลการตรวจ"
  * entry[+] = Reference(Encounter/encounter-newborn1)
  * entry[+] = Reference(Observation/observation-newborncare-umbilical-hygiene)
  * entry[+] = Reference(Observation/observation-newborncare-skin-hygiene)
  * entry[+] = Reference(Observation/observation-newborncare-urination)
  * entry[+] = Reference(Observation/observation-newborncare-defecation)
  * entry[+] = Reference(Observation/observation-newborncare-general-health)
  * entry[+] = Reference(Observation/observation-newborncare-overall-condition)
  * entry[+] = Reference(Observation/observation-newborncare-food)
* section[+]
  * title = "ข้อมูลการนัด"
  * entry[0] = Reference(Appointment/appointment-newborn1)


