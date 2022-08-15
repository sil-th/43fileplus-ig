Instance: File14Document
InstanceOf: Bundle
Title: "ตัวอย่าง แฟ้มที่ 14: SERVICE"
Description: "ข้อมูลประวัติการมารับบริการของผู้ที่มารับบริการ และการให้บริการนอกสถานพยาบาล ครอบคลุมทั้งผู้ป่วย OPD และ IPD ประกอบด้วย Patient, Encounter, Observation และ Coverage, ServiceRequest resource"
Usage: #example
* identifier.system = $ID_documentId
* identifier.value = "642b21b0-7cc8-46b7-9310-376135d551b3"
* type = #document
* timestamp = "2022-07-29T12:30:02+07:00"
* entry[0]
  * fullUrl = "http://example.org/Composition/File14Composition"
  * resource = File14Composition
* entry[+]
  * fullUrl = "http://example.org/Patient/Patient4"
  * resource = Patient4
* entry[+]
  * fullUrl = "http://example.org/Organization/OrganizationMain"
  * resource = OrganizationMain
* entry[+]
  * fullUrl = "http://example.org/Encounter/OpdEncounter1"
  * resource = OpdEncounter1
* entry[+]
  * fullUrl = "http://example.org/ServiceRequest/ReferInOpdEncounter1"
  * resource = ReferInOpdEncounter1
* entry[+]
  * fullUrl = "http://example.org/ServiceRequest/ReferOutOpdEncounter1"
  * resource = ReferOutOpdEncounter1
* entry[+]
  * fullUrl = "http://example.org/Observation/ObsVitalSignsPanel"
  * resource = ObsVitalSignsPanel
* entry[+]
  * fullUrl = "http://example.org/Observation/ObsWt01"
  * resource = ObsWt01
* entry[+]
  * fullUrl = "http://example.org/Observation/ObsHt01"
  * resource = ObsHt01
* entry[+]
  * fullUrl = "http://example.org/Observation/ObsBT01"
  * resource = ObsBT01
* entry[+]
  * fullUrl = "http://example.org/Observation/ObsBp01"
  * resource = ObsBp01
* entry[+]
  * fullUrl = "http://example.org/Observation/ObsHR01"
  * resource = ObsHR01
* entry[+]
  * fullUrl = "http://example.org/Observation/ObsRR01"
  * resource = ObsRR01
* entry[+]
  * fullUrl = "http://example.org/Observation/ObsWC01"
  * resource = ObsWC01
* entry[+]
  * fullUrl = "http://example.org/Observation/ObsHC01"
  * resource = ObsHC01
* entry[+]
  * fullUrl = "http://example.org/Observation/ObsPE01"
  * resource = ObsPE01
* entry[+]
  * fullUrl = "http://example.org/Observation/ObsGA01"
  * resource = ObsGA01
* entry[+]
  * fullUrl = "http://example.org/Observation/ObsHeent01"
  * resource = ObsHeent01
* entry[+]
  * fullUrl = "http://example.org/Observation/ObsHeart01"
  * resource = ObsHeart01
* entry[+]
  * fullUrl = "http://example.org/Observation/ObsChest01"
  * resource = ObsChest01
* entry[+]
  * fullUrl = "http://example.org/Observation/ObsAbd01"
  * resource = ObsAbd01
* entry[+]
  * fullUrl = "http://example.org/Observation/ObsExt01"
  * resource = ObsExt01
* entry[+]
  * fullUrl = "http://example.org/Observation/ObsNeu01"
  * resource = ObsNeu01
* entry[+]
  * fullUrl = "http://example.org/Observation/ObsMisc01"
  * resource = ObsMisc01
* entry[+]
  * fullUrl = "http://example.org/Account/AccountOpdEncounter1"
  * resource = AccountOpdEncounter1
* entry[+]
  * fullUrl = "http://example.org/Coverage/CoverageUC"
  * resource = CoverageUC
* entry[+]
  * fullUrl = "http://example.org/Claim/ClaimOpdEncounter1"
  * resource = ClaimOpdEncounter1


Instance: File14Composition
InstanceOf: Composition
Title: "ตัวอย่าง Composition แฟ้มที่ 14: SERVICE"
Description: "Composition ของแฟ้มที่ 14"
Usage: #example
* status = #final
* type
  * coding[0] = $LNC#75619-7 "National Health Care Surveys report"
  * coding[+] = $CS_THCC_43fileType#14 "SERVICE"
* subject = Reference(Patient/Patient4)
* date = "2022-07-29T12:30:02+07:00"
* author[0] = Reference(Organization/OrganizationMain)
  * insert GeneralReference($ID_Hcode, "XXXXX", "โรงพยาบาลตัวอย่าง")
* title = "แฟ้มที่ 14 SERVICE: ข้อมูลประวัติการมารับบริการของผู้ที่มารับบริการ และการให้บริการนอกสถานพยาบาล ครอบคลุมทั้งผู้ป่วย OPD และ IPD"
* section[0]
  * title = "ข้อมูลผู้ป่วย"
  * entry[0] = Reference(Patient/Patient4)
* section[+]
  * title = "ข้อมูลการบริการ"
  * entry[0] = Reference(Encounter/OpdEncounter1)
  * entry[+] = Reference(ServiceRequest/ReferInOpdEncounter1)
  * entry[+] = Reference(ServiceRequest/ReferOutOpdEncounter1)
* section[+]
  * title = "ข้อมูลการตรวจ"
  * entry[0] = Reference(Observation/ObsVitalSignsPanel)
  * entry[+] = Reference(Observation/ObsWt01)
  * entry[+] = Reference(Observation/ObsHt01)
  * entry[+] = Reference(Observation/ObsBT01)
  * entry[+] = Reference(Observation/ObsBp01)
  * entry[+] = Reference(Observation/ObsHR01)
  * entry[+] = Reference(Observation/ObsRR01)
  * entry[+] = Reference(Observation/ObsWC01)
  * entry[+] = Reference(Observation/ObsHC01)
  * entry[+] = Reference(Observation/ObsPE01)
  * entry[+] = Reference(Observation/ObsGA01)
  * entry[+] = Reference(Observation/ObsHeent01)
  * entry[+] = Reference(Observation/ObsHeart01)
  * entry[+] = Reference(Observation/ObsChest01)
  * entry[+] = Reference(Observation/ObsAbd01)
  * entry[+] = Reference(Observation/ObsExt01)
  * entry[+] = Reference(Observation/ObsNeu01)
  * entry[+] = Reference(Observation/ObsMisc01)
* section[+]
  * title = "ข้อมูลทางการเงิน"
  * entry[0] = Reference(Account/AccountOpdEncounter1)
  * entry[+] = Reference(Coverage/CoverageUC)
  * entry[+] = Reference(Claim/ClaimOpdEncounter1)