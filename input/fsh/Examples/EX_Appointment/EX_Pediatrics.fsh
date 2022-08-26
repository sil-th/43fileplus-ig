Instance: appointment-newborn1
InstanceOf: Appointment
Title: "ตัวอย่าง Appointment: การนัดติดตามผลหลังคลอด"
Description: "แสดงการนัดติดตามผลหลังคลอด"
Usage: #example
* status = #booked
* serviceType[0] = $CS_THCC_MeternalAppointmentType#newborn "นัดตรวจหลังคลอด ครั้งต่อไป"
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
  * status = #accepted
* participant[+]
  * type
    * coding[0] = $CS_HL7_ParticipantType#PPRF "primary performer"
  * actor = Reference(Practitioner/practitioner-doctor1) "พญ. สมหญิง จริงใจ"
  * status = #accepted
* participant[+]
  * actor.display = "OPD เด็ก Clinic 1 โรงพยาบาลตัวอย่าง"
  * status = #accepted



Instance: appointment-nutrition1
InstanceOf: Appointment
Title: "ตัวอย่าง Appointment: การนัดตรวจวัดระดับโภชนาการและพัฒนาการ"
Description: "แสดงการนัดตรวจวัดระดับโภชนาการและพัฒนาการ"
Usage: #example
* status = #booked
* serviceType[0] = $CS_THCC_MeternalAppointmentType#nutrition "นัดตรวจโภชนาการและพัฒนาการ"
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
  * status = #accepted
* participant[+]
  * type
    * coding[0] = $CS_HL7_ParticipantType#PPRF "primary performer"
  * actor = Reference(Practitioner/practitioner-doctor1) "พญ. สมหญิง จริงใจ"
  * status = #accepted
* participant[+]
  * actor.display = "OPD เด็ก Clinic 1 โรงพยาบาลตัวอย่าง"
  * status = #accepted