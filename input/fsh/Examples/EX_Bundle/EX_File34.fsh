Instance: bundle-file34-document
InstanceOf: Bundle
Title: "ตัวอย่าง Bundle - แฟ้มที่ 34: ANC"
Description: "ข้อมูลการให้บริการฝากครรภ์กับหญิงตั้งครรภ์ที่มารับบริการ และประวัติการฝากครรภ์ของหญิงตั้งครรภ์ในเขตรับผิดชอบ ประกอบด้วย Patient, Encounter, Observation และ Appointment resource"
Usage: #example
* identifier.system = $ID_documentId
* identifier.value = "642b21b0-7cc8-46b7-9310-376135d551b3"
* type = #document
* timestamp = "2022-07-29T12:30:02+07:00"
* entry[0]
  * fullUrl = "http://example.org/Composition/composition-file-34"
  * resource = composition-file-34
* entry[+]
  * fullUrl = "http://example.org/Patient/patient-patient6"
  * resource = patient-patient6
* entry[+]
  * fullUrl = "http://example.org/Encounter/encounter-anc1"
  * resource = encounter-anc1
* entry[+]
  * fullUrl = "http://example.org/Observation/observation-anc-gravida"
  * resource = observation-anc-gravida
* entry[+]
  * fullUrl = "http://example.org/Observation/observation-anc-period"
  * resource = observation-anc-period
* entry[+]
  * fullUrl = "http://example.org/Observation/observation-anc-ga"
  * resource = observation-anc-ga
* entry[+]
  * fullUrl = "http://example.org/Observation/observation-anc-result"
  * resource = observation-anc-result
* entry[+]
  * fullUrl = "http://example.org/Observation/observation-anc-weight"
  * resource = observation-anc-weight
* entry[+]
  * fullUrl = "http://example.org/Observation/observation-anc-height"
  * resource = observation-anc-height
* entry[+]
  * fullUrl = "http://example.org/Observation/observation-anc-thal"
  * resource = observation-anc-thal
* entry[+]
  * fullUrl = "http://example.org/Observation/observation-anc-urine-sugar"
  * resource = observation-anc-urine-sugar
* entry[+]
  * fullUrl = "http://example.org/Observation/observation-anc-urine-protein"
  * resource = observation-anc-urine-protein
* entry[+]
  * fullUrl = "http://example.org/Observation/observation-anc-nipple"
  * resource = observation-anc-nipple
* entry[+]
  * fullUrl = "http://example.org/Observation/observation-anc-headache"
  * resource = observation-anc-headache
* entry[+]
  * fullUrl = "http://example.org/Observation/observation-anc-nausea"
  * resource = observation-anc-nausea
* entry[+]
  * fullUrl = "http://example.org/Observation/observation-anc-thyroid"
  * resource = observation-anc-thyroid
* entry[+]
  * fullUrl = "http://example.org/Observation/observation-anc-fetal-movement"
  * resource = observation-anc-fetal-movement
* entry[+]
  * fullUrl = "http://example.org/Observation/observation-anc-discharge"
  * resource = observation-anc-discharge
* entry[+]
  * fullUrl = "http://example.org/Observation/observation-anc-edema"
  * resource = observation-anc-edema
* entry[+]
  * fullUrl = "http://example.org/Observation/observation-anc-vaginal-bleed"
  * resource = observation-anc-vaginal-bleed
* entry[+]
  * fullUrl = "http://example.org/Observation/observation-anc-cramp"
  * resource = observation-anc-cramp
* entry[+]
  * fullUrl = "http://example.org/Observation/observation-anc-kub"
  * resource = observation-anc-kub
* entry[+]
  * fullUrl = "http://example.org/Observation/observation-anc-heart"
  * resource = observation-anc-heart
* entry[+]
  * fullUrl = "http://example.org/Observation/observation-anc-fundal-height"
  * resource = observation-anc-fundal-height
* entry[+]
  * fullUrl = "http://example.org/Observation/observation-anc-fetus-position"
  * resource = observation-anc-fetus-position
* entry[+]
  * fullUrl = "http://example.org/Observation/observation-anc-fetal-presentation"
  * resource = observation-anc-fetal-presentation
* entry[+]
  * fullUrl = "http://example.org/Observation/observation-anc-fetal-heart-sound"
  * resource = observation-anc-fetal-heart-sound
* entry[+]
  * fullUrl = "http://example.org/Observation/observation-anc-fetal-heart-rate"
  * resource = observation-anc-fetal-heart-rate
* entry[+]
  * fullUrl = "http://example.org/Observation/observation-anc-bmi"
  * resource = observation-anc-bmi
* entry[+]
  * fullUrl = "http://example.org/Appointment/appointment-anc"
  * resource = appointment-anc
* entry[+]
  * fullUrl = "http://example.org/Organization/organization-main"
  * resource = organization-main


Instance: composition-file-34
InstanceOf: Composition
Title: "ตัวอย่าง Composition แฟ้มที่ 34: ANC"
Description: "Composition ของแฟ้มที่ 34"
Usage: #example
* status = #final
* type
  * coding[0] = $LNC#75619-7 "National Health Care Surveys report"
  * coding[+] = $CS_TH_FileList#34 "ANC"
* subject = Reference(Patient/patient-patient6)
* date = "2022-07-29T12:30:02+07:00"
* author[0] = Reference(Organization/organization-main)
  * insert GeneralReference($ID_Hcode, "XXXXX", "โรงพยาบาลตัวอย่าง")
* title = "แฟ้มที่ 34 ANC: ข้อมูลการให้บริการฝากครรภ์กับหญิงตั้งครรภ์ที่มารับบริการ และประวัติการฝากครรภ์ของหญิงตั้งครรภ์ในเขตรับผิดชอบ"
* section[0]
  * title = "ข้อมูลผู้ป่วย"
  * entry[0] = Reference(Patient/patient-patient6)
* section[+]
  * title = "ข้อมูลการตรวจ"
  * entry[0] = Reference(Encounter/encounter-anc1)
  * entry[+] = Reference(Observation/observation-anc-gravida)
  * entry[+] = Reference(Observation/observation-anc-period)
  * entry[+] = Reference(Observation/observation-anc-ga)
  * entry[+] = Reference(Observation/observation-anc-result)
  * entry[+] = Reference(Observation/observation-anc-weight)
  * entry[+] = Reference(Observation/observation-anc-height)
  * entry[+] = Reference(Observation/observation-anc-thal)
  * entry[+] = Reference(Observation/observation-anc-urine-sugar)
  * entry[+] = Reference(Observation/observation-anc-urine-protein)
  * entry[+] = Reference(Observation/observation-anc-nipple)
  * entry[+] = Reference(Observation/observation-anc-headache)
  * entry[+] = Reference(Observation/observation-anc-nausea)
  * entry[+] = Reference(Observation/observation-anc-thyroid)
  * entry[+] = Reference(Observation/observation-anc-fetal-movement)
  * entry[+] = Reference(Observation/observation-anc-discharge)
  * entry[+] = Reference(Observation/observation-anc-edema)
  * entry[+] = Reference(Observation/observation-anc-vaginal-bleed)
  * entry[+] = Reference(Observation/observation-anc-cramp)
  * entry[+] = Reference(Observation/observation-anc-kub)
  * entry[+] = Reference(Observation/observation-anc-heart)
  * entry[+] = Reference(Observation/observation-anc-fundal-height)
  * entry[+] = Reference(Observation/observation-anc-fetus-position)
  * entry[+] = Reference(Observation/observation-anc-fetal-presentation)
  * entry[+] = Reference(Observation/observation-anc-fetal-heart-sound)
  * entry[+] = Reference(Observation/observation-anc-fetal-heart-rate)
  * entry[+] = Reference(Observation/observation-anc-bmi)
* section[+]
  * title = "ข้อมูลการนัด"
  * entry[0] = Reference(Appointment/appointment-anc)