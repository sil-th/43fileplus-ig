Instance: bundle-file57-document
InstanceOf: Bundle
Title: "ตัวอย่าง Bundle - แฟ้มที่ 57: CHARGE"
Description: "ข้อมูลค่าใช้จ่ายของบริการแต่ละรายการสำหรับผู้ป่วย ** รวมรายการทั้งหมดทั้งในส่วนของผู้ป่วยนอก และผู้ป่วยใน ประกอบด้วย Patient, Encounter, Procedure และ Claim resource"
Usage: #example
* identifier.system = $ID_documentId
* identifier.value = "642b21b0-7cc8-46b7-9310-376135d551b3"
* type = #document
* timestamp = "2022-07-29T12:30:02+07:00"
* entry[0]
  * fullUrl = "http://example.org/Composition/composition-file-57"
  * resource = composition-file-57
* entry[+]
  * fullUrl = "http://example.org/Patient/patient-patient4"
  * resource = patient-patient4
* entry[+]
  * fullUrl = "http://example.org/Encounter/encounter-ipd2"
  * resource = encounter-ipd2
* entry[+]
  * fullUrl = "http://example.org/Claim/claim-ipd-encounter2-full"
  * resource = claim-ipd-encounter2-full
* entry[+]
  * fullUrl = "http://example.org/Organization/organization-main"
  * resource = organization-main


Instance: composition-file-57
InstanceOf: Composition
Title: "ตัวอย่าง Composition แฟ้มที่ 57: CHARGE"
Description: "Composition ของแฟ้มที่ 57"
Usage: #example
* status = #final
* type
  * coding[0] = $LNC#75619-7 "National Health Care Surveys report"
  * coding[+] = $CS_TH_FileList#57 "CHARGE"
* subject = Reference(Patient/patient-patient4) "นาง สมควร ใจดี"
* date = "2022-07-29T12:30:02+07:00"
* author[0] = Reference(Organization/organization-main)
  * insert GeneralReference($ID_Hcode, "XXXXX", "โรงพยาบาลตัวอย่าง")
* title = "แฟ้มที่ 57 CHARGE: ข้อมูลค่าใช้จ่ายของบริการแต่ละรายการสำหรับผู้ป่วย ** รวมรายการทั้งหมดทั้งในส่วนของผู้ป่วยนอก และผู้ป่วยใน"
* section[0]
  * title = "ข้อมูลผู้ป่วย"
  * entry[0] = Reference(Patient/patient-patient4) "นาง สมควร ใจดี"
* section[+]
  * title = "ข้อมูลการรับบริการ"
  * entry[0] = Reference(Encounter/encounter-ipd2)
* section[+]
  * title = "ข้อมูลทางการเงิน"
  * entry[0] = Reference(Claim/claim-ipd-encounter2-full)
