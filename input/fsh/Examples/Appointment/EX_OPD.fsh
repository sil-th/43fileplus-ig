Instance: OpdAppointment
InstanceOf: Appointment
Title: "ตัวอย่าง Appointment: การนัดติดตามผลหลังรับบริการ OPD"
Description: "แสดงการนัดติดตามผลหลังรับบริการ OPD"
Usage: #example
* status = #booked
* serviceCategory[0] = $CS_THCC_AppointServiceCategory#0001 "ตรวจรักษา"
* serviceType[0] = $CS_THCC_AppointServiceType#181 "ฟังผลการรักษา"
* reasonCode[0]
  * coding[0] = $SCT#386661006 "Fever"
  * coding[+] = $ICD10#R50.9 "Fever, unspecified"
  * text = "อาการไข้"
* description = "นัดมาติดตามอาการไข้ 7 วันหลังตรวจ"
* supportingInformation	= Reference(Coverage/CoverageUC)
* start = "2022-01-08T08:30:00+07:00"
// Need both start and end in the constraint
* end = "2022-01-08T09:00:00+07:00"
* created = "2022-01-01T14:30:02+07:00"
* comment = "Note เพิ่มการเกี่ยวกับการนัด"
* patientInstruction = "คำแนะนำการปฏิบัติตนของผู้ป่วย"
* participant[0]
  * actor = Reference(Patient/Patient4) "นาง สมควร ใจดี"
  * status = #accepted
* participant[+]
  * type
    * coding[0] = $CS_HL7_ParticipantType#PPRF "primary performer"
  * actor = Reference(Practitioner/PractitionerDoctor1) "พญ. สมหญิง จริงใจ"
  * status = #accepted
* participant[+]
  * actor = Reference(Location/OpdGPClinic1) "OPD GP Clinic 1 โรงพยาบาลตัวอย่าง"
  * status = #accepted