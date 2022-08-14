Instance: File35Document
InstanceOf: Bundle
Title: "ตัวอย่าง แฟ้มที่ 35: LABOR"
Description: "ข้อมูลประวัติการคลอด ของหญิงคลอดในเขตรับผิดชอบ หรือหญิงคลอดผู้มารับบริการ ประกอบด้วย Patient, Encounter, Condition, Observation, Procedure, และ Appointment resource"
Usage: #example
* identifier.system = $ID_documentId
* identifier.value = "642b21b0-7cc8-46b7-9310-376135d551b3"
* type = #document
* timestamp = "2022-07-29T12:30:02+07:00"
* entry[0]
  * fullUrl = "http://example.org/Composition/File35Composition"
  * resource = File35Composition
* entry[+]
  * fullUrl = "http://example.org/Patient/Patient6"
  * resource = Patient6
* entry[+]
  * fullUrl = "http://example.org/Encounter/LaborEncounter1"
  * resource = LaborEncounter1
* entry[+]
  * fullUrl = "http://example.org/Condition/LaborCondition1"
  * resource = LaborCondition1
* entry[+]
  * fullUrl = "http://example.org/Procedure/LaborProcedure01"
  * resource = LaborProcedure01
* entry[+]
  * fullUrl = "http://example.org/Observation/ObsLaborGravida"
  * resource = ObsLaborGravida
* entry[+]
  * fullUrl = "http://example.org/Observation/ObsLaborLMP"
  * resource = ObsLaborLMP
* entry[+]
  * fullUrl = "http://example.org/Observation/ObsLaborEDC"
  * resource = ObsLaborEDC
* entry[+]
  * fullUrl = "http://example.org/Observation/ObsLaborDateTime"
  * resource = ObsLaborDateTime
* entry[+]
  * fullUrl = "http://example.org/Observation/ObsLaborLiveBirth"
  * resource = ObsLaborLiveBirth
* entry[+]
  * fullUrl = "http://example.org/Observation/ObsLaborStillborn"
  * resource = ObsLaborStillborn
* entry[+]
  * fullUrl = "http://example.org/Appointment/LaborAppointment"
  * resource = ANCAppointment
* entry[+]
  * fullUrl = "http://example.org/Organization/OrganizationMain"
  * resource = OrganizationMain


Instance: File35Composition
InstanceOf: Composition
Title: "Composition แฟ้มที่ 35: LABOR"
Description: "Composition ของแฟ้มที่ 35"
Usage: #example
* status = #final
* type
  * coding[0] = $LNC#75619-7 "National Health Care Surveys report"
  * coding[+] = $CS_THCC_43fileType#35 "LABOR"
* subject = Reference(Patient/Patient6)
* date = "2022-07-29T12:30:02+07:00"
* author[0] = Reference(Organization/OrganizationMain)
  * insert GeneralReference($ID_Hcode, "XXXXX", "โรงพยาบาลตัวอย่าง")
* title = "แฟ้มที่ 35 LABOR: ข้อมูลประวัติการคลอด ของหญิงคลอดในเขตรับผิดชอบ หรือหญิงคลอดผู้มารับบริการ"
* section[0]
  * title = "ข้อมูลผู้ป่วย"
  * entry[0] = Reference(Patient/Patient6)
* section[+]
  * title = "ข้อมูลการตรวจ"
  * entry[0] = Reference(Encounter/LaborEncounter1)
  * entry[+] = Reference(Condition/LaborCondition1)
  * entry[+] = Reference(Procedure/LaborProcedure01)
  * entry[+] = Reference(Observation/ObsLaborGravida)
  * entry[+] = Reference(Observation/ObsLaborLMP)
  * entry[+] = Reference(Observation/ObsLaborEDC)
  * entry[+] = Reference(Observation/ObsLaborDateTime)
  * entry[+] = Reference(Observation/ObsLaborLiveBirth)
  * entry[+] = Reference(Observation/ObsLaborStillborn)
* section[+]
  * title = "ข้อมูลการนัด"
  * entry[0] = Reference(Appointment/LaborAppointment)