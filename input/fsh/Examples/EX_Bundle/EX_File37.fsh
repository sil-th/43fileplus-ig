Instance: bundle-file37-document
InstanceOf: Bundle
Title: "ตัวอย่าง Bundle - แฟ้มที่ 37: NEWBORN"
Description: "ข้อมูลประวัติการคลอดของทารก ของหญิงในเขตรับผิดชอบ หรือทารกที่มาคลอดที่หน่วยบริการ ประกอบด้วย Patient, RelatedPerson, Procedure, และ Observation resource"
Usage: #example
* identifier.system = $ID_documentId
* identifier.value = "642b21b0-7cc8-46b7-9310-376135d551b3"
* type = #document
* timestamp = "2022-07-29T12:30:02+07:00"
* entry[0]
  * fullUrl = "http://example.org/Composition/composition-file-37"
  * resource = composition-file-37
* entry[+]
  * fullUrl = "http://example.org/Patient/patient-patient7"
  * resource = patient-patient7
* entry[+]
  * fullUrl = "http://example.org/RelatedPerson/relatedperson-patient7-mother"
  * resource = relatedperson-patient7-mother
* entry[+]
  * fullUrl = "http://example.org/Observation/observation-postnatal-gravida1"
  * resource = observation-postnatal-gravida1
* entry[+]
  * fullUrl = "http://example.org/Observation/observation-labor-ga1"
  * resource = observation-labor-ga1
* entry[+]
  * fullUrl = "http://example.org/Procedure/procedure-labor1"
  * resource = procedure-labor1
* entry[+]
  * fullUrl = "http://example.org/Observation/observation-labor-delivery-presentation"
  * resource = observation-labor-delivery-presentation
* entry[+]
  * fullUrl = "http://example.org/Observation/observation-newborn-weight"
  * resource = observation-newborn-weight
* entry[+]
  * fullUrl = "http://example.org/Observation/observation-newborn-asphyxia"
  * resource = observation-newborn-asphyxia
* entry[+]
  * fullUrl = "http://example.org/Observation/observation-newborn-vitamin-k"
  * resource = observation-newborn-vitamin-k
* entry[+]
  * fullUrl = "http://example.org/Observation/observation-newborn-tsh"
  * resource = observation-newborn-tsh
* entry[+]
  * fullUrl = "http://example.org/Observation/observation-newborn-height"
  * resource = observation-newborn-height
* entry[+]
  * fullUrl = "http://example.org/Observation/observation-newborn-head-circum"
  * resource = observation-newborn-head-circum
* entry[+]
  * fullUrl = "http://example.org/Observation/observation-newborn-chest-circum"
  * resource = observation-newborn-chest-circum
* entry[+]
  * fullUrl = "http://example.org/Observation/observation-newborn-apgar-1-min"
  * resource = observation-newborn-apgar-1-min
* entry[+]
  * fullUrl = "http://example.org/Observation/observation-newborn-apgar-5-min"
  * resource = observation-newborn-apgar-5-min
* entry[+]
  * fullUrl = "http://example.org/Observation/observation-newborn-health"
  * resource = observation-newborn-health
* entry[+]
  * fullUrl = "http://example.org/Organization/organization-main"
  * resource = organization-main


Instance: composition-file-37
InstanceOf: Composition
Title: "ตัวอย่าง Composition แฟ้มที่ 37: NEWBORN"
Description: "Composition ของแฟ้มที่ 37"
Usage: #example
* status = #final
* type
  * coding[0] = $LNC#75619-7 "National Health Care Surveys report"
  * coding[+] = $CS_THCC_43fileType#37 "NEWBORN"
* subject = Reference(Patient/patient-patient7) "ด.ช. สมมิตร ใจดี"
* date = "2022-07-29T12:30:02+07:00"
* author[0] = Reference(Organization/organization-main)
  * insert GeneralReference($ID_Hcode, "XXXXX", "โรงพยาบาลตัวอย่าง")
* title = "แฟ้มที่ 37 NEWBORN: ข้อมูลประวัติการคลอดของทารก ของหญิงในเขตรับผิดชอบ หรือทารกที่มาคลอดที่หน่วยบริการ"
* section[0]
  * title = "ข้อมูลสุขภาพของแม่"
  * entry[0] = Reference(RelatedPerson/relatedperson-patient7-mother) "นาง สมฤทัย ใจดี"
  * entry[+] = Reference(Observation/observation-postnatal-gravida1)
  * entry[+] = Reference(Observation/observation-labor-ga1)
  * entry[+] = Reference(Procedure/procedure-labor1)
  * entry[+] = Reference(Observation/observation-labor-delivery-presentation)
* section[+]
  * title = "ข้อมูลสุขภาพของลูก"
  * entry[0] = Reference(Patient/patient-patient7) "ด.ช. สมมิตร ใจดี"
  * entry[+] = Reference(Observation/observation-newborn-weight)
  * entry[+] = Reference(Observation/observation-newborn-asphyxia)
  * entry[+] = Reference(Observation/observation-newborn-vitamin-k)
  * entry[+] = Reference(Observation/observation-newborn-tsh)
  * entry[+] = Reference(Observation/observation-newborn-height)
  * entry[+] = Reference(Observation/observation-newborn-head-circum)
  * entry[+] = Reference(Observation/observation-newborn-chest-circum)
  * entry[+] = Reference(Observation/observation-newborn-apgar-1-min)
  * entry[+] = Reference(Observation/observation-newborn-apgar-5-min)
  * entry[+] = Reference(Observation/observation-newborn-health)