Instance: episodeofcare-chronic1
InstanceOf: EpisodeOfCare
Title: "ตัวอย่าง EpisodeOfCare: การรับบริการเป็นประจำของผู้ป่วยรายที่ 4"
Description: "แสดงการรับบริการตรวจโรคเบาหวานเป็นประจำ"
Usage: #example
* extension[+]
  * url = $EX_TH_ChronicDischargeReason
  * valueCodeableConcept
    * coding[0] = $CS_THCC_ChronicDischargeReason#08 "โรคอยู่ในภาวะสงบ(inactive)ไม่มีความจำเป็นต้องรักษา"
    * text = "โรคอยู่ในภาวะสงบ(inactive)ไม่มีความจำเป็นต้องรักษา"
* status = #finished
* diagnosis.condition = Reference(Condition/condition-chronic1)
* patient = Reference(Patient/patient-patient4) "นาง สมควร ใจดี"
* managingOrganization = Reference(Organization/organization-main)
  * insert GeneralReference($ID_Hcode, "XXXXX", "โรงพยาบาลตัวอย่าง")
* period
  * start = "2022-01-01"
  * end = "2022-04-01"