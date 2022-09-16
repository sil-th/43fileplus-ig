Instance: appointment-newborn1
InstanceOf: $SD_Appointment_Base
Title: "ตัวอย่าง Appointment: การนัดติดตามผลหลังคลอด"
Description: "แสดงการนัดติดตามผลหลังคลอด"
Usage: #example
* status = #booked
* reasonCode[0]
  * coding[0] = $CS_THCC_AppointServiceType#141 "ตรวจหลังคลอด"
  * text = "ตรวจหลังคลอด"
* description = "นัดมาติดตามผล 1 เดือน หลังคลอด"
* supportingInformation	= Reference(Coverage/coverage-uc)
* start = "2022-03-21T15:00:02+07:00"
// Need both start and end in the constraint
* end = "2022-03-21T15:00:02+07:00"
* created = "2022-02-21T15:00:02+07:00"
* comment = "Note เพิ่มการเกี่ยวกับการนัด"
* patientInstruction = "คำแนะนำการปฏิบัติตนของผู้ป่วย"
* participant[0]
  * actor = Reference(Patient/patient-patient7) "ด.ช. สมมิตร ใจดี"
    * type = "Patient"
  * status = #accepted
* participant[+]
  * type
    * coding[0] = $CS_HL7_ParticipantType#PPRF "primary performer"
  * actor = Reference(Practitioner/practitioner-doctor1) "พญ. สมหญิง จริงใจ"
    * type = "Practitioner"
  * status = #accepted
* participant[+]
  * actor
    * type = "Location"
    * display = "OPD เด็ก Clinic 1 โรงพยาบาลตัวอย่าง"
  * status = #accepted



Instance: appointment-nutrition1
InstanceOf: $SD_Appointment_Base
Title: "ตัวอย่าง Appointment: การนัดตรวจวัดระดับโภชนาการและพัฒนาการ"
Description: "แสดงการนัดตรวจวัดระดับโภชนาการและพัฒนาการ"
Usage: #example
* status = #booked
* reasonCode[0]
  * coding[0] = $CS_THCC_AppointServiceType#181 "ฟังผลการรักษา"
  * text = "ฟังผลการรักษา"
* description = "นัดมาติดตามผล 1 เดือน"
* supportingInformation	= Reference(Coverage/coverage-uc)
* start = "2022-05-21T15:00:02+07:00"
// Need both start and end in the constraint
* end = "2022-05-21T15:00:02+07:00"
* created = "2022-03-21T15:00:02+07:00"
* comment = "Note เพิ่มการเกี่ยวกับการนัด"
* patientInstruction = "คำแนะนำการปฏิบัติตนของผู้ป่วย"
* participant[0]
  * actor = Reference(Patient/patient-patient7) "ด.ช. สมมิตร ใจดี"
    * type = "Patient"
  * status = #accepted
* participant[+]
  * type
    * coding[0] = $CS_HL7_ParticipantType#PPRF "primary performer"
  * actor = Reference(Practitioner/practitioner-doctor1) "พญ. สมหญิง จริงใจ"
    * type = "Practitioner"
  * status = #accepted
* participant[+]
  * actor
    * type = "Location"
    * display = "OPD เด็ก Clinic 1 โรงพยาบาลตัวอย่าง"
  * status = #accepted