Instance: File20Document
InstanceOf: Bundle
Title: "ตัวอย่าง แฟ้มที่ 20: ACCIDENT"
Description: "ข้อมูลผู้ป่วยอุบัติเหตุ ที่มารับบริการที่แผนกฉุกเฉิน (ER) ของโรงพยาบาล และแผนกทั่วไปของ รพ.สต. ประกอบด้วย Patient, Encounter, Observation, Condition, ServiceRequest, Account, Coverage และ Claim resource"
Usage: #example
* identifier.system = $ID_documentId
* identifier.value = "642b21b0-7cc8-46b7-9310-376135d551b3"
* type = #document
* timestamp = "2022-07-29T12:30:02+07:00"
* entry[0]
  * fullUrl = "http://example.org/Composition/File20Composition"
  * resource = File20Composition
* entry[+]
  * fullUrl = "http://example.org/Patient/Patient4"
  * resource = Patient4
* entry[+]
  * fullUrl = "http://example.org/Encounter/AccidentEncounter1"
  * resource = AccidentEncounter1
* entry[+]
  * fullUrl = "http://example.org/ServiceRequest/ReferOutAccidentEncounter1"
  * resource = ReferOutAccidentEncounter1
* entry[+]
  * fullUrl = "http://example.org/Condition/AccidentCondition1"
  * resource = AccidentCondition1
* entry[+]
  * fullUrl = "http://example.org/Observation/AccidentInjuryLocation"
  * resource = AccidentInjuryLocation
* entry[+]
  * fullUrl = "http://example.org/Observation/AccidentInjuryType"
  * resource = AccidentInjuryType
* entry[+]
  * fullUrl = "http://example.org/Observation/AccidentVehicleType"
  * resource = AccidentVehicleType
* entry[+]
  * fullUrl = "http://example.org/Observation/AccidentAlcoholUse"
  * resource = AccidentAlcoholUse
* entry[+]
  * fullUrl = "http://example.org/Observation/AccidentDrugUse"
  * resource = AccidentDrugUse
* entry[+]
  * fullUrl = "http://example.org/Observation/AccidentSeatbelt"
  * resource = AccidentSeatbelt
* entry[+]
  * fullUrl = "http://example.org/Observation/AccidentHelmet"
  * resource = AccidentHelmet
* entry[+]
  * fullUrl = "http://example.org/Observation/AccidentBreathing"
  * resource = AccidentBreathing
* entry[+]
  * fullUrl = "http://example.org/Observation/AccidentBleeding"
  * resource = AccidentBleeding
* entry[+]
  * fullUrl = "http://example.org/Observation/AccidentSprint"
  * resource = AccidentSprint
* entry[+]
  * fullUrl = "http://example.org/Observation/AccidentIVFluid"
  * resource = AccidentIVFluid
* entry[+]
  * fullUrl = "http://example.org/Observation/AccidentGCS"
  * resource = AccidentGCS
* entry[+]
  * fullUrl = "http://example.org/Account/AccountAccidentEncounter1"
  * resource = AccountAccidentEncounter1
* entry[+]
  * fullUrl = "http://example.org/Coverage/CoverageUC"
  * resource = CoverageUC
* entry[+]
  * fullUrl = "http://example.org/Claim/ClaimAccidentEncounter1"
  * resource = ClaimAccidentEncounter1
* entry[+]
  * fullUrl = "http://example.org/Organization/OrganizationMain"
  * resource = OrganizationMain


Instance: File20Composition
InstanceOf: Composition
Title: "ตัวอย่าง Composition แฟ้มที่ 20: ACCIDENT"
Description: "Composition ของแฟ้มที่ 20"
Usage: #example
* status = #final
* type
  * coding[0] = $LNC#75619-7 "National Health Care Surveys report"
  * coding[+] = $CS_THCC_43fileType#20 "ACCIDENT"
* subject = Reference(Patient/Patient4)
* date = "2022-07-29T12:30:02+07:00"
* author[0] = Reference(Organization/OrganizationMain)
  * insert GeneralReference($ID_Hcode, "XXXXX", "โรงพยาบาลตัวอย่าง")
* title = "แฟ้มที่ 20 ACCIDENT: ข้อมูลผู้ป่วยอุบัติเหตุ ที่มารับบริการที่แผนกฉุกเฉิน (ER) ของโรงพยาบาล และแผนกทั่วไปของ รพ.สต."
* section[0]
  * title = "ข้อมูลผู้ป่วย"
  * entry[0] = Reference(Patient/Patient4)
* section[+]
  * title = "ข้อมูลการบริการ"
  * entry[0] = Reference(Encounter/AccidentEncounter1)
  * entry[+] = Reference(ServiceRequest/ReferOutAccidentEncounter1)
  * entry[+] = Reference(Condition/AccidentCondition1)
* section[+]
  * title = "ข้อมูลการตรวจ"
  * entry[0] = Reference(Observation/AccidentInjuryLocation)
  * entry[+] = Reference(Observation/AccidentInjuryType)
  * entry[+] = Reference(Observation/AccidentVehicleType)
  * entry[+] = Reference(Observation/AccidentAlcoholUse)
  * entry[+] = Reference(Observation/AccidentDrugUse)
  * entry[+] = Reference(Observation/AccidentSeatbelt)
  * entry[+] = Reference(Observation/AccidentHelmet)
  * entry[+] = Reference(Observation/AccidentBreathing)
  * entry[+] = Reference(Observation/AccidentBleeding)
  * entry[+] = Reference(Observation/AccidentSprint)
  * entry[+] = Reference(Observation/AccidentIVFluid)
  * entry[+] = Reference(Observation/AccidentGCS)
* section[+]
  * title = "ข้อมูลทางการเงิน"
  * entry[0] = Reference(Account/AccountAccidentEncounter1)
  * entry[+] = Reference(Coverage/CoverageUC)
  * entry[+] = Reference(Claim/ClaimAccidentEncounter1)