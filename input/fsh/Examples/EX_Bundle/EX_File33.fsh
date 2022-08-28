Instance: bundle-file33-document
InstanceOf: Bundle
Title: "ตัวอย่าง Bundle - แฟ้มที่ 33: PRENATAL"
Description: "ข้อมูลประวัติการตั้งครรภ์ ของหญิงตั้งครรภ์ในเขตรับผิดชอบ หรือหญิงตั้งครรภ์ผู้มารับบริการ ประกอบด้วย Patient, Encounter และ Observation resource"
Usage: #example
* identifier.system = $ID_documentId
* identifier.value = "642b21b0-7cc8-46b7-9310-376135d551b3"
* type = #document
* timestamp = "2022-07-29T12:30:02+07:00"
* entry[0]
  * fullUrl = "http://example.org/Composition/composition-file-33"
  * resource = composition-file-33
* entry[+]
  * fullUrl = "http://example.org/Patient/patient-patient6"
  * resource = patient-patient6
* entry[+]
  * fullUrl = "http://example.org/Encounter/encounter-prenatal1"
  * resource = encounter-prenatal1
* entry[+]
  * fullUrl = "http://example.org/Observation/observation-prenatal-gravida1"
  * resource = observation-prenatal-gravida1
* entry[+]
  * fullUrl = "http://example.org/Observation/observation-prenatal-lmp1"
  * resource = observation-prenatal-lmp1
* entry[+]
  * fullUrl = "http://example.org/Observation/observation-prenatal-edc1"
  * resource = observation-prenatal-edc1
* entry[+]
  * fullUrl = "http://example.org/Observation/observation-prenatal-vdrl1"
  * resource = observation-prenatal-vdrl1
* entry[+]
  * fullUrl = "http://example.org/Observation/observation-prenatal-hbsag1"
  * resource = observation-prenatal-hbsag1
* entry[+]
  * fullUrl = "http://example.org/Observation/observation-prenatal-hiv1"
  * resource = observation-prenatal-hiv1
* entry[+]
  * fullUrl = "http://example.org/Observation/observation-prenatal-hct1"
  * resource = observation-prenatal-hct1
* entry[+]
  * fullUrl = "http://example.org/Observation/observation-prenatal-thal1"
  * resource = observation-prenatal-thal1
* entry[+]
  * fullUrl = "http://example.org/Observation/observation-prenatal-height1"
  * resource = observation-prenatal-height1
* entry[+]
  * fullUrl = "http://example.org/Observation/observation-prenatal-contraception1"
  * resource = observation-prenatal-contraception1
* entry[+]
  * fullUrl = "http://example.org/Observation/observation-prenatal-general-symptom1"
  * resource = observation-prenatal-general-symptom1
* entry[+]
  * fullUrl = "http://example.org/Organization/organization-main"
  * resource = organization-main


Instance: composition-file-33
InstanceOf: Composition
Title: "ตัวอย่าง Composition แฟ้มที่ 33: PRENATAL"
Description: "Composition ของแฟ้มที่ 33"
Usage: #example
* status = #final
* type
  * coding[0] = $LNC#75619-7 "National Health Care Surveys report"
  * coding[+] = $CS_TH_FileList#33 "PRENATAL"
* subject = Reference(Patient/patient-patient6)
* date = "2022-07-29T12:30:02+07:00"
* author[0] = Reference(Organization/organization-main)
  * insert GeneralReference($ID_Hcode, "XXXXX", "โรงพยาบาลตัวอย่าง")
* title = "แฟ้มที่ 33 PRENATAL: ข้อมูลประวัติการตั้งครรภ์ ของหญิงตั้งครรภ์ในเขตรับผิดชอบ หรือหญิงตั้งครรภ์ผู้มารับบริการ"
* section[0]
  * title = "ข้อมูลผู้ป่วย"
  * entry[0] = Reference(Patient/patient-patient6)
* section[+]
  * title = "ข้อมูลการตรวจ"
  * entry[0] = Reference(Encounter/encounter-prenatal1)
  * entry[+] = Reference(Observation/observation-prenatal-gravida1)
  * entry[+] = Reference(Observation/observation-prenatal-lmp1)
  * entry[+] = Reference(Observation/observation-prenatal-edc1)
  * entry[+] = Reference(Observation/observation-prenatal-vdrl1)
  * entry[+] = Reference(Observation/observation-prenatal-hbsag1)
  * entry[+] = Reference(Observation/observation-prenatal-hiv1)
  * entry[+] = Reference(Observation/observation-prenatal-hct1)
  * entry[+] = Reference(Observation/observation-prenatal-thal1)
  * entry[+] = Reference(Observation/observation-prenatal-height1)
  * entry[+] = Reference(Observation/observation-prenatal-contraception1)
  * entry[+] = Reference(Observation/observation-prenatal-general-symptom1)