Instance: File36Document
InstanceOf: Bundle
Title: "ตัวอย่าง แฟ้มที่ 36: POSTNATAL"
Description: "ข้อมูลประวัติการดูแลมารดาหลังคลอด ของหญิงคลอดในเขตรับผิดชอบ และหญิงคลอดผู้มารับบริการ ประกอบด้วย Patient, Encounter, Observation, และ Appointment resource"
Usage: #example
* identifier.system = $ID_documentId
* identifier.value = "642b21b0-7cc8-46b7-9310-376135d551b3"
* type = #document
* timestamp = "2022-07-29T12:30:02+07:00"
* entry[0]
  * fullUrl = "http://example.org/Composition/File36Composition"
  * resource = File36Composition
* entry[+]
  * fullUrl = "http://example.org/Patient/Patient6"
  * resource = Patient6
* entry[+]
  * fullUrl = "http://example.org/Encounter/PostnatalEncounter1"
  * resource = PostnatalEncounter1
* entry[+]
  * fullUrl = "http://example.org/Observation/ObsPostnatalGravida"
  * resource = ObsPostnatalGravida
* entry[+]
  * fullUrl = "http://example.org/Observation/ObsPostnatalBirthDate"
  * resource = ObsPostnatalBirthDate
* entry[+]
  * fullUrl = "http://example.org/Observation/ObsPostnatalFundalHeight"
  * resource = ObsPostnatalFundalHeight
* entry[+]
  * fullUrl = "http://example.org/Observation/ObsPostnatalLochia"
  * resource = ObsPostnatalLochia
* entry[+]
  * fullUrl = "http://example.org/Observation/ObsPostnatalnipple"
  * resource = ObsPostnatalnipple
* entry[+]
  * fullUrl = "http://example.org/Observation/ObsPostnatalBreastfeeding"
  * resource = ObsPostnatalBreastfeeding
* entry[+]
  * fullUrl = "http://example.org/Observation/ObsPostnatalMens"
  * resource = ObsPostnatalMens
* entry[+]
  * fullUrl = "http://example.org/Observation/ObsPostnatalUrineProtein"
  * resource = ObsPostnatalUrineProtein
* entry[+]
  * fullUrl = "http://example.org/Observation/ObsPostnatalUrineSugar"
  * resource = ObsPostnatalUrineSugar
* entry[+]
  * fullUrl = "http://example.org/Observation/ObsPostnatalPerineum"
  * resource = ObsPostnatalPerineum
* entry[+]
  * fullUrl = "http://example.org/Observation/ObsPostnatalStatus"
  * resource = ObsPostnatalStatus
* entry[+]
  * fullUrl = "http://example.org/Appointment/PostLaborAppointment"
  * resource = PostLaborAppointment
* entry[+]
  * fullUrl = "http://example.org/Organization/OrganizationMain"
  * resource = OrganizationMain


Instance: File36Composition
InstanceOf: Composition
Title: "ตัวอย่าง Composition แฟ้มที่ 36: POSTNATAL"
Description: "Composition ของแฟ้มที่ 36"
Usage: #example
* status = #final
* type
  * coding[0] = $LNC#75619-7 "National Health Care Surveys report"
  * coding[+] = $CS_THCC_43fileType#36 "POSTNATAL"
* subject = Reference(Patient/Patient6)
* date = "2022-07-29T12:30:02+07:00"
* author[0] = Reference(Organization/OrganizationMain)
  * insert GeneralReference($ID_Hcode, "XXXXX", "โรงพยาบาลตัวอย่าง")
* title = "แฟ้มที่ 36 POSTNATAL: ข้อมูลประวัติการดูแลมารดาหลังคลอด ของหญิงคลอดในเขตรับผิดชอบ และหญิงคลอดผู้มารับบริการ"
* section[0]
  * title = "ข้อมูลผู้ป่วย"
  * entry[0] = Reference(Patient/Patient6)
* section[+]
  * title = "ข้อมูลการตรวจ"
  * entry[0] = Reference(Encounter/PostnatalEncounter1)
  * entry[+] = Reference(Observation/ObsPostnatalGravida)
  * entry[+] = Reference(Observation/ObsPostnatalBirthDate)
  * entry[+] = Reference(Observation/ObsPostnatalFundalHeight)
  * entry[+] = Reference(Observation/ObsPostnatalLochia)
  * entry[+] = Reference(Observation/ObsPostnatalnipple)
  * entry[+] = Reference(Observation/ObsPostnatalBreastfeeding)
  * entry[+] = Reference(Observation/ObsPostnatalMens)
  * entry[+] = Reference(Observation/ObsPostnatalUrineProtein)
  * entry[+] = Reference(Observation/ObsPostnatalUrineSugar)
  * entry[+] = Reference(Observation/ObsPostnatalPerineum)
  * entry[+] = Reference(Observation/ObsPostnatalStatus)
* section[+]
  * title = "ข้อมูลการนัด"
  * entry[0] = Reference(Appointment/PostLaborAppointment)