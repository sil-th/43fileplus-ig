Instance: bundle-file36-document
InstanceOf: Bundle
Title: "ตัวอย่าง Bundle - แฟ้มที่ 36: POSTNATAL"
Description: "ข้อมูลประวัติการดูแลมารดาหลังคลอด ของหญิงคลอดในเขตรับผิดชอบ และหญิงคลอดผู้มารับบริการ ประกอบด้วย Patient, Encounter, Observation, และ Appointment resource"
Usage: #example
* identifier.system = $ID_documentId
* identifier.value = "642b21b0-7cc8-46b7-9310-376135d551b3"
* type = #document
* timestamp = "2022-07-29T12:30:02+07:00"
* entry[0]
  * fullUrl = "http://example.org/Composition/composition-file-36"
  * resource = composition-file-36
* entry[+]
  * fullUrl = "http://example.org/Patient/patient-patient6"
  * resource = patient-patient6
* entry[+]
  * fullUrl = "http://example.org/Encounter/encounter-postnatal1"
  * resource = encounter-postnatal1
* entry[+]
  * fullUrl = "http://example.org/Observation/observation-postnatal-gravida1"
  * resource = observation-postnatal-gravida1
* entry[+]
  * fullUrl = "http://example.org/Observation/observation-postnatal-birth-date1"
  * resource = observation-postnatal-birth-date1
* entry[+]
  * fullUrl = "http://example.org/Observation/observation-postnatal-fundal-height1"
  * resource = observation-postnatal-fundal-height1
* entry[+]
  * fullUrl = "http://example.org/Observation/observation-postnatal-lochia1"
  * resource = observation-postnatal-lochia1
* entry[+]
  * fullUrl = "http://example.org/Observation/observation-postnatal-nipple1"
  * resource = observation-postnatal-nipple1
* entry[+]
  * fullUrl = "http://example.org/Observation/observation-postnatal-breastfeeding1"
  * resource = observation-postnatal-breastfeeding1
* entry[+]
  * fullUrl = "http://example.org/Observation/observation-postnatal-mens1"
  * resource = observation-postnatal-mens1
* entry[+]
  * fullUrl = "http://example.org/Observation/observation-postnatal-urine-protein1"
  * resource = observation-postnatal-urine-protein1
* entry[+]
  * fullUrl = "http://example.org/Observation/observation-postnatal-urine-sugar1"
  * resource = observation-postnatal-urine-sugar1
* entry[+]
  * fullUrl = "http://example.org/Observation/observation-postnatal-perineum1"
  * resource = observation-postnatal-perineum1
* entry[+]
  * fullUrl = "http://example.org/Observation/observation-postnatal-status1"
  * resource = observation-postnatal-status1
* entry[+]
  * fullUrl = "http://example.org/Appointment/appointment-postnatal"
  * resource = appointment-postnatal
* entry[+]
  * fullUrl = "http://example.org/Organization/organization-main"
  * resource = organization-main


Instance: composition-file-36
InstanceOf: Composition
Title: "ตัวอย่าง Composition แฟ้มที่ 36: POSTNATAL"
Description: "Composition ของแฟ้มที่ 36"
Usage: #example
* status = #final
* type
  * coding[0] = $LNC#75619-7 "National Health Care Surveys report"
  * coding[+] = $CS_TH_FileList#36 "POSTNATAL"
* subject = Reference(Patient/patient-patient6)
* date = "2022-07-29T12:30:02+07:00"
* author[0] = Reference(Organization/organization-main)
  * insert GeneralReference($ID_Hcode, "XXXXX", "โรงพยาบาลตัวอย่าง")
* title = "แฟ้มที่ 36 POSTNATAL: ข้อมูลประวัติการดูแลมารดาหลังคลอด ของหญิงคลอดในเขตรับผิดชอบ และหญิงคลอดผู้มารับบริการ"
* section[0]
  * title = "ข้อมูลผู้ป่วย"
  * entry[0] = Reference(Patient/patient-patient6)
* section[+]
  * title = "ข้อมูลการตรวจ"
  * entry[0] = Reference(Encounter/encounter-postnatal1)
  * entry[+] = Reference(Observation/observation-postnatal-gravida1)
  * entry[+] = Reference(Observation/observation-postnatal-birth-date1)
  * entry[+] = Reference(Observation/observation-postnatal-fundal-height1)
  * entry[+] = Reference(Observation/observation-postnatal-lochia1)
  * entry[+] = Reference(Observation/observation-postnatal-nipple1)
  * entry[+] = Reference(Observation/observation-postnatal-breastfeeding1)
  * entry[+] = Reference(Observation/observation-postnatal-mens1)
  * entry[+] = Reference(Observation/observation-postnatal-urine-protein1)
  * entry[+] = Reference(Observation/observation-postnatal-urine-sugar1)
  * entry[+] = Reference(Observation/observation-postnatal-perineum1)
  * entry[+] = Reference(Observation/observation-postnatal-status1)
* section[+]
  * title = "ข้อมูลการนัด"
  * entry[0] = Reference(Appointment/appointment-postnatal)