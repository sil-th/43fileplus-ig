Instance: bundle-file55-document
InstanceOf: Bundle
Title: "ตัวอย่าง Bundle - แฟ้มที่ 55: DRUG"
Description: "ข้อมูลการจ่ายยา ** รวมรายการทั้งหมดทั้งในส่วนของผู้ป่วยนอก และผู้ป่วยใน ประกอบด้วย Patient, Encounter, Medication, MedicationRequest, MedicationDispense, MedicationAdministration และ Claim resource"
Usage: #example
* identifier.system = $ID_documentId
* identifier.value = "642b21b0-7cc8-46b7-9310-376135d551b3"
* type = #document
* timestamp = "2022-07-29T12:30:02+07:00"
* entry[0]
  * fullUrl = "http://example.org/Composition/composition-file-55"
  * resource = composition-file-55
* entry[+]
  * fullUrl = "http://example.org/Patient/patient-patient4"
  * resource = patient-patient4
* entry[+]
  * fullUrl = "http://example.org/Encounter/encounter-opd2"
  * resource = encounter-opd2
* entry[+]
  * fullUrl = "http://example.org/Medication/medication-opd-amoxicillin"
  * resource = medication-opd-amoxicillin
* entry[+]
  * fullUrl = "http://example.org/MedicationRequest/medicationrequest-opd-amoxicillin"
  * resource = medicationrequest-opd-amoxicillin
* entry[+]
  * fullUrl = "http://example.org/MedicationDispense/medicationdispense-opd-amoxicillin"
  * resource = medicationdispense-opd-amoxicillin
* entry[+]
  * fullUrl = "http://example.org/MedicationAdministration/medicationadministration-opd-amoxicillin"
  * resource = medicationadministration-opd-amoxicillin
* entry[+]
  * fullUrl = "http://example.org/Claim/claim-opd-encounter2"
  * resource = claim-opd-encounter2
* entry[+]
  * fullUrl = "http://example.org/Organization/organization-main"
  * resource = organization-main


Instance: composition-file-55
InstanceOf: Composition
Title: "ตัวอย่าง Composition แฟ้มที่ 55: DRUG"
Description: "Composition ของแฟ้มที่ 55"
Usage: #example
* status = #final
* type
  * coding[0] = $LNC#75619-7 "National Health Care Surveys report"
  * coding[+] = $CS_TH_FileList#55 "DRUG"
* subject = Reference(Patient/patient-patient4) "นาง สมควร ใจดี"
* date = "2022-07-29T12:30:02+07:00"
* author[0] = Reference(Organization/organization-main)
  * insert GeneralReference($ID_Hcode, "XXXXX", "โรงพยาบาลตัวอย่าง")
* title = "แฟ้มที่ 55 DRUG: ข้อมูลการจ่ายยา ** รวมรายการทั้งหมดทั้งในส่วนของผู้ป่วยนอก และผู้ป่วยใน"
* section[0]
  * title = "ข้อมูลผู้ป่วย"
  * entry[0] = Reference(Patient/patient-patient4) "นาง สมควร ใจดี"
* section[+]
  * title = "ข้อมูลการรับบริการ"
  * entry[0] = Reference(Encounter/encounter-opd2)
  * entry[+] = Reference(Medication/medication-opd-amoxicillin)
  * entry[+] = Reference(MedicationRequest/medicationrequest-opd-amoxicillin)
  * entry[+] = Reference(MedicationDispense/medicationdispense-opd-amoxicillin)
  * entry[+] = Reference(MedicationAdministration/medicationadministration-opd-amoxicillin)
* section[+]
  * title = "ข้อมูลทางการเงิน"
  * entry[0] = Reference(Claim/claim-opd-encounter2)
