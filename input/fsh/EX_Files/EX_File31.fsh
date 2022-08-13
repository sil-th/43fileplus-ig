Instance: File31Document
InstanceOf: Bundle
Title: "ตัวอย่าง แฟ้มที่ 31: NCDSCREEN"
Description: "ข้อมูลการให้บริการคัดกรองโรคเบาหวานและความดันโลหิตสูงสำหรับผู้ที่มารับบริการ ประกอบด้วย Patient, Encounter, Condition, และ Observation resource"
Usage: #example
* identifier.system = $ID_documentId
* identifier.value = "642b21b0-7cc8-46b7-9310-376135d551b3"
* type = #document
* timestamp = "2022-07-29T12:30:02+07:00"
* entry[0]
  * fullUrl = "http://example.org/Composition/File31Composition"
  * resource = File31Composition
* entry[+]
  * fullUrl = "http://example.org/Patient/Patient4"
  * resource = Patient4
* entry[+]
  * fullUrl = "http://example.org/Encounter/NcdEncounter1"
  * resource = NcdEncounter1
* entry[+]
  * fullUrl = "http://example.org/Condition/NcdConditionSum"
  * resource = NcdConditionSum
* entry[+]
  * fullUrl = "http://example.org/Condition/NcdCondition1"
  * resource = NcdCondition1
* entry[+]
  * fullUrl = "http://example.org/Observation/ObsNcdVitalSignsPanel"
  * resource = ObsNcdVitalSignsPanel
* entry[+]
  * fullUrl = "http://example.org/Observation/ObsNcdWt01"
  * resource = ObsNcdWt01
* entry[+]
  * fullUrl = "http://example.org/Observation/ObsNcdHt01"
  * resource = ObsNcdHt01
* entry[+]
  * fullUrl = "http://example.org/Observation/ObsNcdBp01"
  * resource = ObsNcdBp01
* entry[+]
  * fullUrl = "http://example.org/Observation/ObsNcdBp02"
  * resource = ObsNcdBp02
* entry[+]
  * fullUrl = "http://example.org/Observation/ObsNcdWC01"
  * resource = ObsNcdWC01
* entry[+]
  * fullUrl = "http://example.org/Observation/ObsNcdSmoking"
  * resource = ObsNcdSmoking
* entry[+]
  * fullUrl = "http://example.org/Observation/ObsNcdAlcohol"
  * resource = ObsNcdAlcohol
* entry[+]
  * fullUrl = "http://example.org/Observation/ObsNcdDMFamily"
  * resource = ObsNcdDMFamily
* entry[+]
  * fullUrl = "http://example.org/Observation/ObsNcdHTFamily"
  * resource = ObsNcdHTFamily
* entry[+]
  * fullUrl = "http://example.org/Observation/ObsNcdFbs"
  * resource = ObsNcdFbs
* entry[+]
  * fullUrl = "http://example.org/Observation/ObsHighGlucoseHx"
  * resource = ObsHighGlucoseHx
* entry[+]
  * fullUrl = "http://example.org/Observation/ObsNcdDyslipedima"
  * resource = ObsNcdDyslipedima
* entry[+]
  * fullUrl = "http://example.org/Observation/ObsNcdGestDM"
  * resource = ObsNcdGestDM
* entry[+]
  * fullUrl = "http://example.org/Observation/ObsNcdFootExam"
  * resource = ObsNcdFootExam
* entry[+]
  * fullUrl = "http://example.org/Observation/ObsNcdRetinaExam"
  * resource = ObsNcdRetinaExam
* entry[+]
  * fullUrl = "http://example.org/Organization/OrganizationMain"
  * resource = OrganizationMain


Instance: File31Composition
InstanceOf: Composition
Title: "Composition แฟ้มที่ 31: NCDSCREEN"
Description: "Composition ของแฟ้มที่ 31"
Usage: #example
* status = #final
* type
  * coding[0] = $LNC#75619-7 "National Health Care Surveys report"
  * coding[+] = $CS_THCC_43fileType#31 "NCDSCREEN"
* subject = Reference(Patient/Patient4)
* date = "2022-07-29T12:30:02+07:00"
* author[0] = Reference(Organization/OrganizationMain)
  * insert GeneralReference($ID_Hcode, "XXXXX", "โรงพยาบาลตัวอย่าง")
* title = "แฟ้มที่ 31 NCDSCREEN: ข้อมูลการให้บริการคัดกรองโรคเบาหวานและความดันโลหิตสูงสำหรับผู้ที่มารับบริการ"
* section[0]
  * title = "ข้อมูลผู้ป่วย"
  * entry[0] = Reference(Patient/Patient4)
* section[+]
  * title = "ข้อมูลการรับบริการคัดกรอง"
  * entry[0] = Reference(Encounter/NcdEncounter1)
  * entry[+] = Reference(Condition/NcdConditionSum)
  * entry[+] = Reference(Condition/NcdCondition1)
  * entry[+] = Reference(Observation/ObsNcdVitalSignsPanel)
  * entry[+] = Reference(Observation/ObsNcdWt01)
  * entry[+] = Reference(Observation/ObsNcdHt01)
  * entry[+] = Reference(Observation/ObsNcdBp01)
  * entry[+] = Reference(Observation/ObsNcdBp02)
  * entry[+] = Reference(Observation/ObsNcdWC01)
  * entry[+] = Reference(Observation/ObsNcdSmoking)
  * entry[+] = Reference(Observation/ObsNcdAlcohol)
  * entry[+] = Reference(Observation/ObsNcdDMFamily)
  * entry[+] = Reference(Observation/ObsNcdHTFamily)
  * entry[+] = Reference(Observation/ObsNcdFbs)
  * entry[+] = Reference(Observation/ObsHighGlucoseHx)
  * entry[+] = Reference(Observation/ObsNcdDyslipedima)
  * entry[+] = Reference(Observation/ObsNcdGestDM)
  * entry[+] = Reference(Observation/ObsNcdFootExam)
  * entry[+] = Reference(Observation/ObsNcdRetinaExam)