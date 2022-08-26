Instance: bundle-file35-document
InstanceOf: Bundle
Title: "ตัวอย่าง Bundle - แฟ้มที่ 35: LABOR"
Description: "ข้อมูลประวัติการคลอด ของหญิงคลอดในเขตรับผิดชอบ หรือหญิงคลอดผู้มารับบริการ ประกอบด้วย Patient, Encounter, Condition, Observation, Procedure, และ Appointment resource"
Usage: #example
* identifier.system = $ID_documentId
* identifier.value = "642b21b0-7cc8-46b7-9310-376135d551b3"
* type = #document
* timestamp = "2022-07-29T12:30:02+07:00"
* entry[0]
  * fullUrl = "http://example.org/Composition/composition-file-35"
  * resource = composition-file-35
* entry[+]
  * fullUrl = "http://example.org/Patient/patient-patient6"
  * resource = patient-patient6
* entry[+]
  * fullUrl = "http://example.org/Encounter/encounter-labor1"
  * resource = encounter-labor1
* entry[+]
  * fullUrl = "http://example.org/Condition/condition-pregnancy-outcome"
  * resource = condition-pregnancy-outcome
* entry[+]
  * fullUrl = "http://example.org/Procedure/procedure-labor1"
  * resource = procedure-labor1
* entry[+]
  * fullUrl = "http://example.org/Observation/observation-labor-gravida1"
  * resource = observation-labor-gravida1
* entry[+]
  * fullUrl = "http://example.org/Observation/observation-labor-lmp1"
  * resource = observation-labor-lmp1
* entry[+]
  * fullUrl = "http://example.org/Observation/observation-labor-edc1"
  * resource = observation-labor-edc1
* entry[+]
  * fullUrl = "http://example.org/Observation/observation-labor-date-time1"
  * resource = observation-labor-date-time1
* entry[+]
  * fullUrl = "http://example.org/Observation/observation-labor-live-birth1"
  * resource = observation-labor-live-birth1
* entry[+]
  * fullUrl = "http://example.org/Observation/observation-labor-stillborn1"
  * resource = observation-labor-stillborn1
* entry[+]
  * fullUrl = "http://example.org/Appointment/appointment-labor"
  * resource = appointment-labor
* entry[+]
  * fullUrl = "http://example.org/Organization/organization-main"
  * resource = organization-main


Instance: composition-file-35
InstanceOf: Composition
Title: "ตัวอย่าง Composition แฟ้มที่ 35: LABOR"
Description: "Composition ของแฟ้มที่ 35"
Usage: #example
* status = #final
* type
  * coding[0] = $LNC#75619-7 "National Health Care Surveys report"
  * coding[+] = $CS_THCC_43fileType#35 "LABOR"
* subject = Reference(Patient/patient-patient6)
* date = "2022-07-29T12:30:02+07:00"
* author[0] = Reference(Organization/organization-main)
  * insert GeneralReference($ID_Hcode, "XXXXX", "โรงพยาบาลตัวอย่าง")
* title = "แฟ้มที่ 35 LABOR: ข้อมูลประวัติการคลอด ของหญิงคลอดในเขตรับผิดชอบ หรือหญิงคลอดผู้มารับบริการ"
* section[0]
  * title = "ข้อมูลผู้ป่วย"
  * entry[0] = Reference(Patient/patient-patient6)
* section[+]
  * title = "ข้อมูลการตรวจ"
  * entry[0] = Reference(Encounter/encounter-labor1)
  * entry[+] = Reference(Condition/condition-pregnancy-outcome)
  * entry[+] = Reference(Procedure/procedure-labor1)
  * entry[+] = Reference(Observation/observation-labor-gravida1)
  * entry[+] = Reference(Observation/observation-labor-lmp1)
  * entry[+] = Reference(Observation/observation-labor-edc1)
  * entry[+] = Reference(Observation/observation-labor-date-time1)
  * entry[+] = Reference(Observation/observation-labor-live-birth1)
  * entry[+] = Reference(Observation/observation-labor-stillborn1)
* section[+]
  * title = "ข้อมูลการนัด"
  * entry[0] = Reference(Appointment/appointment-labor)