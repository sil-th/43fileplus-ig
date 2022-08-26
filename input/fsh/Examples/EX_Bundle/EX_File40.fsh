Instance: bundle-file40-document
InstanceOf: Bundle
Title: "ตัวอย่าง Bundle - แฟ้มที่ 40: NUTRITION"
Description: "ข้อมูลการตรวจวัดระดับโภชนาการและพัฒนาการ เด็กอายุ 0-5 ปี ประกอบด้วย Patient, Encounter, Appointment และ Observation resource"
Usage: #example
* identifier.system = $ID_documentId
* identifier.value = "642b21b0-7cc8-46b7-9310-376135d551b3"
* type = #document
* timestamp = "2022-07-29T12:30:02+07:00"
* entry[0]
  * fullUrl = "http://example.org/Composition/composition-file-40"
  * resource = composition-file-40
* entry[+]
  * fullUrl = "http://example.org/Patient/patient-patient7"
  * resource = patient-patient7
* entry[+]
  * fullUrl = "http://example.org/Encounter/encounter-nutrition1"
  * resource = encounter-nutrition1
* entry[+]
  * fullUrl = "http://example.org/Observation/observation-child-nutrition-weight"
  * resource = observation-child-nutrition-weight
* entry[+]
  * fullUrl = "http://example.org/Observation/observation-child-nutrition-height"
  * resource = observation-child-nutrition-height
* entry[+]
  * fullUrl = "http://example.org/Observation/observation-child-nutrition-headcircum"
  * resource = observation-child-nutrition-headcircum
* entry[+]
  * fullUrl = "http://example.org/Observation/observation-child-nutrition-development"
  * resource = observation-child-nutrition-development
* entry[+]
  * fullUrl = "http://example.org/Observation/observation-child-nutrition-food"
  * resource = observation-child-nutrition-food
* entry[+]
  * fullUrl = "http://example.org/Observation/observation-child-nutrition-bottle"
  * resource = observation-child-nutrition-bottle
* entry[+]
  * fullUrl = "http://example.org/Observation/observation-child-nutrition-new-teeth"
  * resource = observation-child-nutrition-new-teeth
* entry[+]
  * fullUrl = "http://example.org/Observation/observation-child-nutrition-caries-teeth"
  * resource = observation-child-nutrition-caries-teeth
* entry[+]
  * fullUrl = "http://example.org/Observation/observation-child-nutrition-umbilical-hygiene"
  * resource = observation-child-nutrition-umbilical-hygiene
* entry[+]
  * fullUrl = "http://example.org/Observation/observation-child-nutrition-ht-for-wt"
  * resource = observation-child-nutrition-ht-for-wt
* entry[+]
  * fullUrl = "http://example.org/Observation/observation-child-nutrition-wt-for-age"
  * resource = observation-child-nutrition-wt-for-age
* entry[+]
  * fullUrl = "http://example.org/Observation/observation-child-nutrition-wt-for-ht"
  * resource = observation-child-nutrition-wt-for-ht
* entry[+]
  * fullUrl = "http://example.org/Observation/observation-child-nutrition-remark"
  * resource = observation-child-nutrition-remark
* entry[+]
  * fullUrl = "http://example.org/Appointment/appointment-nutrition1"
  * resource = appointment-nutrition1
* entry[+]
  * fullUrl = "http://example.org/Organization/organization-main"
  * resource = organization-main


Instance: composition-file-40
InstanceOf: Composition
Title: "ตัวอย่าง Composition แฟ้มที่ 40: NUTRITION"
Description: "Composition ของแฟ้มที่ 40"
Usage: #example
* status = #final
* type
  * coding[0] = $LNC#75619-7 "National Health Care Surveys report"
  * coding[+] = $CS_THCC_43fileType#40 "NUTRITION"
* subject = Reference(Patient/patient-patient7) "ด.ช. สมมิตร ใจดี"
* date = "2022-07-29T12:30:02+07:00"
* author[0] = Reference(Organization/organization-main)
  * insert GeneralReference($ID_Hcode, "XXXXX", "โรงพยาบาลตัวอย่าง")
* title = "แฟ้มที่ 40 NUTRITION: ข้อมูลการตรวจวัดระดับโภชนาการและพัฒนาการ เด็กอายุ 0-5 ปี"
* section[0]
  * title = "ข้อมูลเด็ก"
  * entry[0] = Reference(Patient/patient-patient7) "ด.ช. สมมิตร ใจดี"
* section[+]
  * title = "ข้อมูลการตรวจ"
  * entry[0] = Reference(Encounter/encounter-nutrition1)
  * entry[+] = Reference(Observation/observation-child-nutrition-weight)
  * entry[+] = Reference(Observation/observation-child-nutrition-height)
  * entry[+] = Reference(Observation/observation-child-nutrition-headcircum)
  * entry[+] = Reference(Observation/observation-child-nutrition-development)
  * entry[+] = Reference(Observation/observation-child-nutrition-food)
  * entry[+] = Reference(Observation/observation-child-nutrition-bottle)
  * entry[+] = Reference(Observation/observation-child-nutrition-new-teeth)
  * entry[+] = Reference(Observation/observation-child-nutrition-caries-teeth)
  * entry[+] = Reference(Observation/observation-child-nutrition-umbilical-hygiene)
  * entry[+] = Reference(Observation/observation-child-nutrition-ht-for-wt)
  * entry[+] = Reference(Observation/observation-child-nutrition-wt-for-age)
  * entry[+] = Reference(Observation/observation-child-nutrition-wt-for-ht)
  * entry[+] = Reference(Observation/observation-child-nutrition-remark)
* section[+]
  * title = "ข้อมูลการนัด"
  * entry[0] = Reference(Appointment/appointment-nutrition1)


