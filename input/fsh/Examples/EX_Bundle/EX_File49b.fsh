Instance: bundle-file49b-document
InstanceOf: Bundle
Title: "ตัวอย่าง Bundle - แฟ้มที่ 49b: REFER_HISTORY"
Description: "ข้อมูลประวัติการส่งต่อผู้ป่วย (กรณีรับเข้า) ประกอบด้วย Patient, Encounter, Condition, ServiceRequest, QuestionnaireResponse, Organization, Account และ Coverage resource"
Usage: #example
* identifier.system = $ID_documentId
* identifier.value = "642b21b0-7cc8-46b7-9310-376135d551b3"
* type = #document
* timestamp = "2022-07-29T12:30:02+07:00"
* entry[0]
  * fullUrl = "http://example.org/Composition/composition-file-49b"
  * resource = composition-file-49b
* entry[+]
  * fullUrl = "http://example.org/Patient/patient-patient4"
  * resource = patient-patient4
* entry[+]
  * fullUrl = "http://example.org/Encounter/encounter-refer1"
  * resource = encounter-refer1
* entry[+]
  * fullUrl = "http://example.org/Encounter/encounter-refer1-accept"
  * resource = encounter-refer1-accept
* entry[+]
  * fullUrl = "http://example.org/Condition/condition-refer1"
  * resource = condition-refer1
* entry[+]
  * fullUrl = "http://example.org/Condition/condition-refer2"
  * resource = condition-refer2
* entry[+]
  * fullUrl = "http://example.org/Condition/condition-refer3"
  * resource = condition-refer3
* entry[+]
  * fullUrl = "http://example.org/ServiceRequest/servicerequest-refer-main-full"
  * resource = servicerequest-refer-main-full
* entry[+]
  * fullUrl = "http://example.org/QuestionnaireResponse/questionnaireresponse-refer-history1"
  * resource = questionnaireresponse-refer-history1
* entry[+]
  * fullUrl = "http://example.org/Account/account-refer-encounter1"
  * resource = account-refer-encounter1
* entry[+]
  * fullUrl = "http://example.org/Coverage/coverage-uc"
  * resource = coverage-uc
* entry[+]
  * fullUrl = "http://example.org/Coverage/coverage-sso"
  * resource = coverage-sso
* entry[+]
  * fullUrl = "http://example.org/Organization/organization-main"
  * resource = organization-main


Instance: composition-file-49b
InstanceOf: Composition
Title: "ตัวอย่าง Composition แฟ้มที่ 49b: REFER_HISTORY"
Description: "Composition ของแฟ้มที่ 49b"
Usage: #example
* status = #final
* type
  * coding[0] = $LNC#75619-7 "National Health Care Surveys report"
  * coding[+] = $CS_TH_FileList#49b "REFER_HISTORY"
* subject = Reference(Patient/patient-patient4) "นาง สมควร ใจดี"
* date = "2022-07-29T12:30:02+07:00"
* author[0] = Reference(Organization/organization-main)
  * insert GeneralReference($ID_Hcode, "XXXXX", "โรงพยาบาลตัวอย่าง")
* title = "แฟ้มที่ 49b REFER_HISTORY: ข้อมูลประวัติการส่งต่อผู้ป่วย (กรณีรับเข้า)"
* section[0]
  * title = "ข้อมูลผู้ป่วย"
  * entry[0] = Reference(Patient/patient-patient4) "นาง สมควร ใจดี"
* section[+]
  * title = "ข้อมูลจากสถานพยาบาลต้นทาง"
  * entry[0] = Reference(Encounter/encounter-refer1)
  * entry[+] = Reference(Condition/condition-refer1)
  * entry[+] = Reference(Condition/condition-refer2)
  * entry[+] = Reference(ServiceRequest/servicerequest-refer-main-full)
  * entry[+] = Reference(QuestionnaireResponse/questionnaireresponse-refer-history1)
* section[+]
  * title = "ข้อมูลจากสถานพยาบาลที่รับการส่งต่อ"
  * entry[0] = Reference(Encounter/encounter-refer1-accept)
  * entry[+] = Reference(Condition/condition-refer3)
* section[+]
  * title = "ข้อมูลการเงิน"
  * entry[0] = Reference(Account/account-refer-encounter1)
  * entry[+] = Reference(Coverage/coverage-uc)
  * entry[+] = Reference(Coverage/coverage-sso)
  * entry[+] = Reference(Organization/organization-main)
