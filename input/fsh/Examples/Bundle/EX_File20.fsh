Instance: bundle-file20-document
InstanceOf: Bundle
Title: "ตัวอย่าง Bundle - แฟ้มที่ 20: ACCIDENT"
Description: "ข้อมูลผู้ป่วยอุบัติเหตุ ที่มารับบริการที่แผนกฉุกเฉิน (ER) ของโรงพยาบาล และแผนกทั่วไปของ รพ.สต. ประกอบด้วย Patient, Encounter, Observation, Condition, ServiceRequest, Account, Coverage และ Claim resource"
Usage: #example
* identifier.system = $ID_documentId
* identifier.value = "642b21b0-7cc8-46b7-9310-376135d551b3"
* type = #document
* timestamp = "2022-07-29T12:30:02+07:00"
* entry[0]
  * fullUrl = "http://example.org/Composition/composition-file-20"
  * resource = composition-file-20
* entry[+]
  * fullUrl = "http://example.org/Patient/patient-patient4"
  * resource = patient-patient4
* entry[+]
  * fullUrl = "http://example.org/Encounter/encounter-accident1"
  * resource = encounter-accident1
* entry[+]
  * fullUrl = "http://example.org/ServiceRequest/servicerequest-refer-out-accident1"
  * resource = servicerequest-refer-out-accident1
* entry[+]
  * fullUrl = "http://example.org/Condition/condition-accident1"
  * resource = condition-accident1
* entry[+]
  * fullUrl = "http://example.org/Observation/observation-accident-injury-location"
  * resource = observation-accident-injury-location
* entry[+]
  * fullUrl = "http://example.org/Observation/observation-accident-injury-type"
  * resource = observation-accident-injury-type
* entry[+]
  * fullUrl = "http://example.org/Observation/observation-accident-vehicle-type"
  * resource = observation-accident-vehicle-type
* entry[+]
  * fullUrl = "http://example.org/Observation/observation-accident-alcohol-use"
  * resource = observation-accident-alcohol-use
* entry[+]
  * fullUrl = "http://example.org/Observation/observation-accident-drug-use"
  * resource = observation-accident-drug-use
* entry[+]
  * fullUrl = "http://example.org/Observation/observation-accident-seatbelt"
  * resource = observation-accident-seatbelt
* entry[+]
  * fullUrl = "http://example.org/Observation/observation-accident-helmet"
  * resource = observation-accident-helmet
* entry[+]
  * fullUrl = "http://example.org/Observation/observation-accident-breathing"
  * resource = observation-accident-breathing
* entry[+]
  * fullUrl = "http://example.org/Observation/observation-accident-bleeding"
  * resource = observation-accident-bleeding
* entry[+]
  * fullUrl = "http://example.org/Observation/observation-accident-sprint"
  * resource = observation-accident-sprint
* entry[+]
  * fullUrl = "http://example.org/Observation/observation-accident-iv-fluid"
  * resource = observation-accident-iv-fluid
* entry[+]
  * fullUrl = "http://example.org/Observation/observation-accident-gcs"
  * resource = observation-accident-gcs
* entry[+]
  * fullUrl = "http://example.org/Account/account-accident-encounter1"
  * resource = account-accident-encounter1
* entry[+]
  * fullUrl = "http://example.org/Coverage/coverage-uc"
  * resource = coverage-uc
* entry[+]
  * fullUrl = "http://example.org/Claim/claim-accident-encounter1"
  * resource = claim-accident-encounter1
* entry[+]
  * fullUrl = "http://example.org/Organization/organization-main"
  * resource = organization-main


Instance: composition-file-20
InstanceOf: Composition
Title: "ตัวอย่าง Composition แฟ้มที่ 20: ACCIDENT"
Description: "Composition ของแฟ้มที่ 20"
Usage: #example
* status = #final
* type
  * coding[0] = $LNC#75619-7 "National Health Care Surveys report"
  * coding[+] = $CS_THCC_43fileType#20 "ACCIDENT"
* subject = Reference(Patient/patient-patient4)
* date = "2022-07-29T12:30:02+07:00"
* author[0] = Reference(Organization/organization-main)
  * insert GeneralReference($ID_Hcode, "XXXXX", "โรงพยาบาลตัวอย่าง")
* title = "แฟ้มที่ 20 ACCIDENT: ข้อมูลผู้ป่วยอุบัติเหตุ ที่มารับบริการที่แผนกฉุกเฉิน (ER) ของโรงพยาบาล และแผนกทั่วไปของ รพ.สต."
* section[0]
  * title = "ข้อมูลผู้ป่วย"
  * entry[0] = Reference(Patient/patient-patient4)
* section[+]
  * title = "ข้อมูลการบริการ"
  * entry[0] = Reference(Encounter/encounter-accident1)
  * entry[+] = Reference(ServiceRequest/servicerequest-refer-out-accident1)
  * entry[+] = Reference(Condition/condition-accident1)
* section[+]
  * title = "ข้อมูลการตรวจ"
  * entry[0] = Reference(Observation/observation-accident-injury-location)
  * entry[+] = Reference(Observation/observation-accident-injury-type)
  * entry[+] = Reference(Observation/observation-accident-vehicle-type)
  * entry[+] = Reference(Observation/observation-accident-alcohol-use)
  * entry[+] = Reference(Observation/observation-accident-drug-use)
  * entry[+] = Reference(Observation/observation-accident-seatbelt)
  * entry[+] = Reference(Observation/observation-accident-helmet)
  * entry[+] = Reference(Observation/observation-accident-breathing)
  * entry[+] = Reference(Observation/observation-accident-bleeding)
  * entry[+] = Reference(Observation/observation-accident-sprint)
  * entry[+] = Reference(Observation/observation-accident-iv-fluid)
  * entry[+] = Reference(Observation/observation-accident-gcs)
* section[+]
  * title = "ข้อมูลทางการเงิน"
  * entry[0] = Reference(Account/account-accident-encounter1)
  * entry[+] = Reference(Coverage/coverage-uc)
  * entry[+] = Reference(Claim/claim-accident-encounter1)