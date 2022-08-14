Instance: File34Document
InstanceOf: Bundle
Title: "ตัวอย่าง แฟ้มที่ 34: ANC"
Description: "ข้อมูลการให้บริการฝากครรภ์กับหญิงตั้งครรภ์ที่มารับบริการ และประวัติการฝากครรภ์ของหญิงตั้งครรภ์ในเขตรับผิดชอบ ประกอบด้วย Patient, Encounter, Observation และ Appointment resource"
Usage: #example
* identifier.system = $ID_documentId
* identifier.value = "642b21b0-7cc8-46b7-9310-376135d551b3"
* type = #document
* timestamp = "2022-07-29T12:30:02+07:00"
* entry[0]
  * fullUrl = "http://example.org/Composition/File34Composition"
  * resource = File34Composition
* entry[+]
  * fullUrl = "http://example.org/Patient/Patient6"
  * resource = Patient6
* entry[+]
  * fullUrl = "http://example.org/Encounter/ANCEncounter1"
  * resource = ANCEncounter1
* entry[+]
  * fullUrl = "http://example.org/Observation/ObsAncGravida"
  * resource = ObsAncGravida
* entry[+]
  * fullUrl = "http://example.org/Observation/ObsAncPeriod"
  * resource = ObsAncPeriod
* entry[+]
  * fullUrl = "http://example.org/Observation/ObsAncGA"
  * resource = ObsAncGA
* entry[+]
  * fullUrl = "http://example.org/Observation/ObsAncResult"
  * resource = ObsAncResult
* entry[+]
  * fullUrl = "http://example.org/Observation/ObsAncWeight"
  * resource = ObsAncWeight
* entry[+]
  * fullUrl = "http://example.org/Observation/ObsAncHeight"
  * resource = ObsAncHeight
* entry[+]
  * fullUrl = "http://example.org/Observation/ObsAncThal"
  * resource = ObsAncThal
* entry[+]
  * fullUrl = "http://example.org/Observation/ObsAncUrineSugar"
  * resource = ObsAncUrineSugar
* entry[+]
  * fullUrl = "http://example.org/Observation/ObsAncUrineProtein"
  * resource = ObsAncUrineProtein
* entry[+]
  * fullUrl = "http://example.org/Observation/ObsAncNipple"
  * resource = ObsAncNipple
* entry[+]
  * fullUrl = "http://example.org/Observation/ObsAncHeadache"
  * resource = ObsAncHeadache
* entry[+]
  * fullUrl = "http://example.org/Observation/ObsAncNausea"
  * resource = ObsAncNausea
* entry[+]
  * fullUrl = "http://example.org/Observation/ObsAncThyroid"
  * resource = ObsAncThyroid
* entry[+]
  * fullUrl = "http://example.org/Observation/ObsAncFetalMovement"
  * resource = ObsAncFetalMovement
* entry[+]
  * fullUrl = "http://example.org/Observation/ObsAncDischarge"
  * resource = ObsAncDischarge
* entry[+]
  * fullUrl = "http://example.org/Observation/ObsAncEdema"
  * resource = ObsAncEdema
* entry[+]
  * fullUrl = "http://example.org/Observation/ObsAncVaginalBleed"
  * resource = ObsAncVaginalBleed
* entry[+]
  * fullUrl = "http://example.org/Observation/ObsAncCramp"
  * resource = ObsAncCramp
* entry[+]
  * fullUrl = "http://example.org/Observation/ObsAncKUB"
  * resource = ObsAncKUB
* entry[+]
  * fullUrl = "http://example.org/Observation/ObsAncHeart"
  * resource = ObsAncHeart
* entry[+]
  * fullUrl = "http://example.org/Observation/ObsAncFundalHeight"
  * resource = ObsAncFundalHeight
* entry[+]
  * fullUrl = "http://example.org/Observation/ObsAncFetusPosition"
  * resource = ObsAncFetusPosition
* entry[+]
  * fullUrl = "http://example.org/Observation/ObsAncFetalPresentation"
  * resource = ObsAncFetalPresentation
* entry[+]
  * fullUrl = "http://example.org/Observation/ObsAncFetalHeartSound"
  * resource = ObsAncFetalHeartSound
* entry[+]
  * fullUrl = "http://example.org/Observation/ObsAncFetalHeartRate"
  * resource = ObsAncFetalHeartRate
* entry[+]
  * fullUrl = "http://example.org/Observation/ObsAncBMI"
  * resource = ObsAncBMI
* entry[+]
  * fullUrl = "http://example.org/Appointment/ANCAppointment"
  * resource = ANCAppointment
* entry[+]
  * fullUrl = "http://example.org/Organization/OrganizationMain"
  * resource = OrganizationMain


Instance: File34Composition
InstanceOf: Composition
Title: "Composition แฟ้มที่ 34: ANC"
Description: "Composition ของแฟ้มที่ 34"
Usage: #example
* status = #final
* type
  * coding[0] = $LNC#75619-7 "National Health Care Surveys report"
  * coding[+] = $CS_THCC_43fileType#34 "ANC"
* subject = Reference(Patient/Patient6)
* date = "2022-07-29T12:30:02+07:00"
* author[0] = Reference(Organization/OrganizationMain)
  * insert GeneralReference($ID_Hcode, "XXXXX", "โรงพยาบาลตัวอย่าง")
* title = "แฟ้มที่ 34 ANC: ข้อมูลการให้บริการฝากครรภ์กับหญิงตั้งครรภ์ที่มารับบริการ และประวัติการฝากครรภ์ของหญิงตั้งครรภ์ในเขตรับผิดชอบ"
* section[0]
  * title = "ข้อมูลผู้ป่วย"
  * entry[0] = Reference(Patient/Patient6)
* section[+]
  * title = "ข้อมูลการตรวจ"
  * entry[0] = Reference(Encounter/ANCEncounter1)
  * entry[+] = Reference(Observation/ObsAncGravida)
  * entry[+] = Reference(Observation/ObsAncPeriod)
  * entry[+] = Reference(Observation/ObsAncGA)
  * entry[+] = Reference(Observation/ObsAncResult)
  * entry[+] = Reference(Observation/ObsAncWeight)
  * entry[+] = Reference(Observation/ObsAncHeight)
  * entry[+] = Reference(Observation/ObsAncThal)
  * entry[+] = Reference(Observation/ObsAncUrineSugar)
  * entry[+] = Reference(Observation/ObsAncUrineProtein)
  * entry[+] = Reference(Observation/ObsAncNipple)
  * entry[+] = Reference(Observation/ObsAncHeadache)
  * entry[+] = Reference(Observation/ObsAncNausea)
  * entry[+] = Reference(Observation/ObsAncThyroid)
  * entry[+] = Reference(Observation/ObsAncFetalMovement)
  * entry[+] = Reference(Observation/ObsAncDischarge)
  * entry[+] = Reference(Observation/ObsAncEdema)
  * entry[+] = Reference(Observation/ObsAncVaginalBleed)
  * entry[+] = Reference(Observation/ObsAncCramp)
  * entry[+] = Reference(Observation/ObsAncKUB)
  * entry[+] = Reference(Observation/ObsAncHeart)
  * entry[+] = Reference(Observation/ObsAncFundalHeight)
  * entry[+] = Reference(Observation/ObsAncFetusPosition)
  * entry[+] = Reference(Observation/ObsAncFetalPresentation)
  * entry[+] = Reference(Observation/ObsAncFetalHeartSound)
  * entry[+] = Reference(Observation/ObsAncFetalHeartRate)
  * entry[+] = Reference(Observation/ObsAncBMI)
* section[+]
  * title = "ข้อมูลการนัด"
  * entry[0] = Reference(Appointment/ANCAppointment)