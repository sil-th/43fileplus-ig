Instance: appointment-homevisit1
InstanceOf: $SD_Appointment_Base
Title: "ตัวอย่าง Appointment: การนัดรับบริการในชุมชนครั้งต่อไป"
Description: "แสดงการนัดรับบริการในชุมชนครั้งต่อไป"
Usage: #example
* status = #booked
* serviceType[0] = $CS_THCC_CommunityService#1A001 "เยี่ยมผู้ป่วยโรคเบาหวาน"
* description = "นัดมาติดตามผล 1 เดือน"
* supportingInformation	= Reference(Coverage/coverage-uc)
* start = "2022-05-21T15:00:02+07:00"
// Need both start and end in the constraint
* end = "2022-05-21T15:00:02+07:00"
* created = "2022-04-10T14:30:02+07:00"
* comment = "Note เพิ่มการเกี่ยวกับการนัด"
* patientInstruction = "คำแนะนำการปฏิบัติตนของผู้ป่วย"
* participant[0]
  * actor = Reference(Patient/patient-patient4) "นาง สมควร ใจดี"
  * status = #accepted
* participant[+]
  * type
    * coding[0] = $CS_HL7_ParticipantType#PPRF "primary performer"
  * actor = Reference(Practitioner/practitioner-doctor1) "พญ. สมหญิง จริงใจ"
  * status = #accepted