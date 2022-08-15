Instance: bundle-file14-document
InstanceOf: Bundle
Title: "ตัวอย่าง Bundle - แฟ้มที่ 14: SERVICE"
Description: "ข้อมูลประวัติการมารับบริการของผู้ที่มารับบริการ และการให้บริการนอกสถานพยาบาล ครอบคลุมทั้งผู้ป่วย OPD และ IPD ประกอบด้วย Patient, Encounter, Observation และ Coverage, ServiceRequest resource"
Usage: #example
* identifier.system = $ID_documentId
* identifier.value = "642b21b0-7cc8-46b7-9310-376135d551b3"
* type = #document
* timestamp = "2022-07-29T12:30:02+07:00"
* entry[0]
  * fullUrl = "http://example.org/Composition/composition-file-14"
  * resource = composition-file-14
* entry[+]
  * fullUrl = "http://example.org/Patient/patient-patient4"
  * resource = patient-patient4
* entry[+]
  * fullUrl = "http://example.org/Organization/organization-main"
  * resource = organization-main
* entry[+]
  * fullUrl = "http://example.org/Encounter/encounter-opd1"
  * resource = encounter-opd1
* entry[+]
  * fullUrl = "http://example.org/ServiceRequest/servicerequest-refer-in-opd1"
  * resource = servicerequest-refer-in-opd1
* entry[+]
  * fullUrl = "http://example.org/ServiceRequest/servicerequest-refer-out-opd1"
  * resource = servicerequest-refer-out-opd1
* entry[+]
  * fullUrl = "http://example.org/Observation/observation-vital-panel1"
  * resource = observation-vital-panel1
* entry[+]
  * fullUrl = "http://example.org/Observation/observation-vital-wt1"
  * resource = observation-vital-wt1
* entry[+]
  * fullUrl = "http://example.org/Observation/observation-vital-ht1"
  * resource = observation-vital-ht1
* entry[+]
  * fullUrl = "http://example.org/Observation/observation-vital-bt1"
  * resource = observation-vital-bt1
* entry[+]
  * fullUrl = "http://example.org/Observation/observation-vital-bp1"
  * resource = observation-vital-bp1
* entry[+]
  * fullUrl = "http://example.org/Observation/observation-vital-hr1"
  * resource = observation-vital-hr1
* entry[+]
  * fullUrl = "http://example.org/Observation/observation-vital-rr1"
  * resource = observation-vital-rr1
* entry[+]
  * fullUrl = "http://example.org/Observation/observation-vital-wc1"
  * resource = observation-vital-wc1
* entry[+]
  * fullUrl = "http://example.org/Observation/observation-vital-hc1"
  * resource = observation-vital-hc1
* entry[+]
  * fullUrl = "http://example.org/Observation/observation-vital-pe1"
  * resource = observation-vital-pe1
* entry[+]
  * fullUrl = "http://example.org/Observation/observation-vital-ga1"
  * resource = observation-vital-ga1
* entry[+]
  * fullUrl = "http://example.org/Observation/observation-vital-heent1"
  * resource = observation-vital-heent1
* entry[+]
  * fullUrl = "http://example.org/Observation/observation-vital-heart1"
  * resource = observation-vital-heart1
* entry[+]
  * fullUrl = "http://example.org/Observation/observation-vital-chest1"
  * resource = observation-vital-chest1
* entry[+]
  * fullUrl = "http://example.org/Observation/observation-vital-abd1"
  * resource = observation-vital-abd1
* entry[+]
  * fullUrl = "http://example.org/Observation/observation-vital-ext1"
  * resource = observation-vital-ext1
* entry[+]
  * fullUrl = "http://example.org/Observation/observation-vital-neu1"
  * resource = observation-vital-neu1
* entry[+]
  * fullUrl = "http://example.org/Observation/observation-vital-misc1"
  * resource = observation-vital-misc1
* entry[+]
  * fullUrl = "http://example.org/Account/account-opd-encounter1"
  * resource = account-opd-encounter1
* entry[+]
  * fullUrl = "http://example.org/Coverage/coverage-uc"
  * resource = coverage-uc
* entry[+]
  * fullUrl = "http://example.org/Claim/claim-opd-encounter1"
  * resource = claim-opd-encounter1


Instance: composition-file-14
InstanceOf: Composition
Title: "ตัวอย่าง Composition แฟ้มที่ 14: SERVICE"
Description: "Composition ของแฟ้มที่ 14"
Usage: #example
* status = #final
* type
  * coding[0] = $LNC#75619-7 "National Health Care Surveys report"
  * coding[+] = $CS_THCC_43fileType#14 "SERVICE"
* subject = Reference(Patient/patient-patient4)
* date = "2022-07-29T12:30:02+07:00"
* author[0] = Reference(Organization/organization-main)
  * insert GeneralReference($ID_Hcode, "XXXXX", "โรงพยาบาลตัวอย่าง")
* title = "แฟ้มที่ 14 SERVICE: ข้อมูลประวัติการมารับบริการของผู้ที่มารับบริการ และการให้บริการนอกสถานพยาบาล ครอบคลุมทั้งผู้ป่วย OPD และ IPD"
* section[0]
  * title = "ข้อมูลผู้ป่วย"
  * entry[0] = Reference(Patient/patient-patient4)
* section[+]
  * title = "ข้อมูลการบริการ"
  * entry[0] = Reference(Encounter/encounter-opd1)
  * entry[+] = Reference(ServiceRequest/servicerequest-refer-in-opd1)
  * entry[+] = Reference(ServiceRequest/servicerequest-refer-out-opd1)
* section[+]
  * title = "ข้อมูลการตรวจ"
  * entry[0] = Reference(Observation/observation-vital-panel1)
  * entry[+] = Reference(Observation/observation-vital-wt1)
  * entry[+] = Reference(Observation/observation-vital-ht1)
  * entry[+] = Reference(Observation/observation-vital-bt1)
  * entry[+] = Reference(Observation/observation-vital-bp1)
  * entry[+] = Reference(Observation/observation-vital-hr1)
  * entry[+] = Reference(Observation/observation-vital-rr1)
  * entry[+] = Reference(Observation/observation-vital-wc1)
  * entry[+] = Reference(Observation/observation-vital-hc1)
  * entry[+] = Reference(Observation/observation-vital-pe1)
  * entry[+] = Reference(Observation/observation-vital-ga1)
  * entry[+] = Reference(Observation/observation-vital-heent1)
  * entry[+] = Reference(Observation/observation-vital-heart1)
  * entry[+] = Reference(Observation/observation-vital-chest1)
  * entry[+] = Reference(Observation/observation-vital-abd1)
  * entry[+] = Reference(Observation/observation-vital-ext1)
  * entry[+] = Reference(Observation/observation-vital-neu1)
  * entry[+] = Reference(Observation/observation-vital-misc1)
* section[+]
  * title = "ข้อมูลทางการเงิน"
  * entry[0] = Reference(Account/account-opd-encounter1)
  * entry[+] = Reference(Coverage/coverage-uc)
  * entry[+] = Reference(Claim/claim-opd-encounter1)