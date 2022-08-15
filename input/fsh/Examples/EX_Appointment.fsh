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



Instance: FPAppointment
InstanceOf: Appointment
Title: "ตัวอย่าง Appointment: การนัดติดตามผลหลังรับบริการ OPD Family Planning"
Description: "แสดงการนัดติดตามผลหลังรับบริการ OPD Family Planning"
Usage: #example
* status = #booked
* serviceType[0] = $CS_THCC_MeternalAppointmentType#fp "นัดรับบริการวางแผนครอบครัว"
* description = "นัดมาติดตามผล 1 เดือน หลังการคุมกำเนิด"
* supportingInformation	= Reference(Coverage/CoverageUC)
* start = "2021-02-21T12:30:02+07:00"
// Need both start and end in the constraint
* end = "2021-02-21T09:00:00+07:00"
* created = "2021-01-21T14:30:02+07:00"
* comment = "Note เพิ่มการเกี่ยวกับการนัด"
* patientInstruction = "คำแนะนำการปฏิบัติตนของผู้ป่วย"
* participant[0]
  * actor = Reference(Patient/Patient6) "นาง สมฤทัย ใจดี"
  * status = #accepted
* participant[+]
  * type
    * coding[0] = $CS_HL7_ParticipantType#PPRF "primary performer"
  * actor = Reference(Practitioner/PractitionerDoctor1) "พญ. สมหญิง จริงใจ"
  * status = #accepted
* participant[+]
  * actor.display = "OPD OB-GYN Clinic 1 โรงพยาบาลตัวอย่าง"
  * status = #accepted


Instance: ANCAppointment
InstanceOf: Appointment
Title: "ตัวอย่าง Appointment: การนัดติดตามผลหลังรับบริการ OPD ANC"
Description: "แสดงการนัดติดตามผลหลังรับบริการ OPD ANC"
Usage: #example
* status = #booked
* serviceType[0] = $CS_THCC_MeternalAppointmentType#anc "นัดรับบริการ ANC"
* description = "นัดรับบริการ ANC 1 เดือน"
* supportingInformation	= Reference(Coverage/CoverageUC)
* start = "2021-05-21T12:30:02+07:00"
// Need both start and end in the constraint
* end = "2021-05-21T09:00:00+07:00"
* created = "2021-04-21T14:30:02+07:00"
* comment = "Note เพิ่มการเกี่ยวกับการนัด"
* patientInstruction = "คำแนะนำการปฏิบัติตนของผู้ป่วย"
* participant[0]
  * actor = Reference(Patient/Patient6) "นาง สมฤทัย ใจดี"
  * status = #accepted
* participant[+]
  * type
    * coding[0] = $CS_HL7_ParticipantType#PPRF "primary performer"
  * actor = Reference(Practitioner/PractitionerDoctor1) "พญ. สมหญิง จริงใจ"
  * status = #accepted
* participant[+]
  * actor.display = "OPD OB-GYN Clinic 1 โรงพยาบาลตัวอย่าง"
  * status = #accepted


Instance: LaborAppointment
InstanceOf: Appointment
Title: "ตัวอย่าง Appointment: การนัดติดตามผลหลังรับบริการตรวจติดตามหลังคลอด"
Description: "แสดงการนัดติดตามผลหลังรับบริการตรวจติดตามหลังคลอด"
Usage: #example
* status = #booked
* serviceType[0] = $CS_THCC_MeternalAppointmentType#labor "นัดตรวจหลังคลอด"
* description = "นัดมาติดตามผล 1 เดือน หลังการคลอด"
* supportingInformation	= Reference(Coverage/CoverageUC)
* start = "2022-02-21T12:30:02+07:00"
// Need both start and end in the constraint
* end = "2022-02-21T09:00:00+07:00"
* created = "2022-01-21T14:30:02+07:00"
* comment = "Note เพิ่มการเกี่ยวกับการนัด"
* patientInstruction = "คำแนะนำการปฏิบัติตนของผู้ป่วย"
* participant[0]
  * actor = Reference(Patient/Patient6) "นาง สมฤทัย ใจดี"
  * status = #accepted
* participant[+]
  * type
    * coding[0] = $CS_HL7_ParticipantType#PPRF "primary performer"
  * actor = Reference(Practitioner/PractitionerDoctor1) "พญ. สมหญิง จริงใจ"
  * status = #accepted
* participant[+]
  * actor.display = "OPD OB-GYN Clinic 1 โรงพยาบาลตัวอย่าง"
  * status = #accepted






Instance: PostLaborAppointment
InstanceOf: Appointment
Title: "ตัวอย่าง Appointment: การนัดติดตามผลหลังรับบริการตรวจติดตามหลังคลอด ครั้งที่ 2"
Description: "แสดงการนัดติดตามผลหลังรับบริการตรวจติดตามหลังคลอด ครั้งที่ 2"
Usage: #example
* status = #booked
* serviceType[0] = $CS_THCC_MeternalAppointmentType#postlabor "นัดตรวจหลังคลอดครั้งที่ 2"
* description = "นัดมาติดตามผล 1 เดือน หลังการตรวจครั้งแรก"
* supportingInformation	= Reference(Coverage/CoverageUC)
* start = "2022-02-21T12:30:02+07:00"
// Need both start and end in the constraint
* end = "2022-02-21T09:00:00+07:00"
* created = "2022-01-21T14:30:02+07:00"
* comment = "Note เพิ่มการเกี่ยวกับการนัด"
* patientInstruction = "คำแนะนำการปฏิบัติตนของผู้ป่วย"
* participant[0]
  * actor = Reference(Patient/Patient6) "นาง สมฤทัย ใจดี"
  * status = #accepted
* participant[+]
  * type
    * coding[0] = $CS_HL7_ParticipantType#PPRF "primary performer"
  * actor = Reference(Practitioner/PractitionerDoctor1) "พญ. สมหญิง จริงใจ"
  * status = #accepted
* participant[+]
  * actor.display = "OPD OB-GYN Clinic 1 โรงพยาบาลตัวอย่าง"
  * status = #accepted