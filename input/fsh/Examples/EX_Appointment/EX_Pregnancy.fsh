Instance: appointment-fp
InstanceOf: Appointment
Title: "ตัวอย่าง Appointment: การนัดติดตามผลหลังรับบริการ OPD Family Planning"
Description: "แสดงการนัดติดตามผลหลังรับบริการ OPD Family Planning"
Usage: #example
* status = #booked
* serviceType[0] = $CS_Meta_MeternalAppointmentType#fp "นัดรับบริการวางแผนครอบครัว"
* description = "นัดมาติดตามผล 1 เดือน หลังการคุมกำเนิด"
* supportingInformation	= Reference(Coverage/coverage-uc)
* start = "2021-02-21T12:30:02+07:00"
// Need both start and end in the constraint
* end = "2021-02-21T09:00:00+07:00"
* created = "2021-01-21T14:30:02+07:00"
* comment = "Note เพิ่มการเกี่ยวกับการนัด"
* patientInstruction = "คำแนะนำการปฏิบัติตนของผู้ป่วย"
* participant[0]
  * actor = Reference(Patient/patient-patient6) "นาง สมฤทัย ใจดี"
  * status = #accepted
* participant[+]
  * type
    * coding[0] = $CS_HL7_ParticipantType#PPRF "primary performer"
  * actor = Reference(Practitioner/practitioner-doctor1) "พญ. สมหญิง จริงใจ"
  * status = #accepted
* participant[+]
  * actor.display = "OPD OB-GYN Clinic 1 โรงพยาบาลตัวอย่าง"
  * status = #accepted


Instance: appointment-anc
InstanceOf: Appointment
Title: "ตัวอย่าง Appointment: การนัดติดตามผลหลังรับบริการ OPD ANC"
Description: "แสดงการนัดติดตามผลหลังรับบริการ OPD ANC"
Usage: #example
* status = #booked
* serviceType[0] = $CS_Meta_MeternalAppointmentType#anc "นัดรับบริการ ANC"
* description = "นัดรับบริการ ANC 1 เดือน"
* supportingInformation	= Reference(Coverage/coverage-uc)
* start = "2021-05-21T12:30:02+07:00"
// Need both start and end in the constraint
* end = "2021-05-21T09:00:00+07:00"
* created = "2021-04-21T14:30:02+07:00"
* comment = "Note เพิ่มการเกี่ยวกับการนัด"
* patientInstruction = "คำแนะนำการปฏิบัติตนของผู้ป่วย"
* participant[0]
  * actor = Reference(Patient/patient-patient6) "นาง สมฤทัย ใจดี"
  * status = #accepted
* participant[+]
  * type
    * coding[0] = $CS_HL7_ParticipantType#PPRF "primary performer"
  * actor = Reference(Practitioner/practitioner-doctor1) "พญ. สมหญิง จริงใจ"
  * status = #accepted
* participant[+]
  * actor.display = "OPD OB-GYN Clinic 1 โรงพยาบาลตัวอย่าง"
  * status = #accepted


Instance: appointment-labor
InstanceOf: Appointment
Title: "ตัวอย่าง Appointment: การนัดติดตามผลหลังรับบริการตรวจติดตามหลังคลอด"
Description: "แสดงการนัดติดตามผลหลังรับบริการตรวจติดตามหลังคลอด"
Usage: #example
* status = #booked
* serviceType[0] = $CS_Meta_MeternalAppointmentType#labor "นัดตรวจหลังคลอด"
* description = "นัดมาติดตามผล 1 เดือน หลังการคลอด"
* supportingInformation	= Reference(Coverage/coverage-uc)
* start = "2022-02-21T12:30:02+07:00"
// Need both start and end in the constraint
* end = "2022-02-21T09:00:00+07:00"
* created = "2022-01-21T14:30:02+07:00"
* comment = "Note เพิ่มการเกี่ยวกับการนัด"
* patientInstruction = "คำแนะนำการปฏิบัติตนของผู้ป่วย"
* participant[0]
  * actor = Reference(Patient/patient-patient6) "นาง สมฤทัย ใจดี"
  * status = #accepted
* participant[+]
  * type
    * coding[0] = $CS_HL7_ParticipantType#PPRF "primary performer"
  * actor = Reference(Practitioner/practitioner-doctor1) "พญ. สมหญิง จริงใจ"
  * status = #accepted
* participant[+]
  * actor.display = "OPD OB-GYN Clinic 1 โรงพยาบาลตัวอย่าง"
  * status = #accepted



Instance: appointment-postnatal
InstanceOf: Appointment
Title: "ตัวอย่าง Appointment: การนัดติดตามผลหลังรับบริการตรวจติดตามหลังคลอด ครั้งที่ 2"
Description: "แสดงการนัดติดตามผลหลังรับบริการตรวจติดตามหลังคลอด ครั้งที่ 2"
Usage: #example
* status = #booked
* serviceType[0] = $CS_Meta_MeternalAppointmentType#postlabor "นัดตรวจหลังคลอดครั้งที่ 2"
* description = "นัดมาติดตามผล 1 เดือน หลังการตรวจครั้งแรก"
* supportingInformation	= Reference(Coverage/coverage-uc)
* start = "2022-02-21T12:30:02+07:00"
// Need both start and end in the constraint
* end = "2022-02-21T09:00:00+07:00"
* created = "2022-01-21T14:30:02+07:00"
* comment = "Note เพิ่มการเกี่ยวกับการนัด"
* patientInstruction = "คำแนะนำการปฏิบัติตนของผู้ป่วย"
* participant[0]
  * actor = Reference(Patient/patient-patient6) "นาง สมฤทัย ใจดี"
  * status = #accepted
* participant[+]
  * type
    * coding[0] = $CS_HL7_ParticipantType#PPRF "primary performer"
  * actor = Reference(Practitioner/practitioner-doctor1) "พญ. สมหญิง จริงใจ"
  * status = #accepted
* participant[+]
  * actor.display = "OPD OB-GYN Clinic 1 โรงพยาบาลตัวอย่าง"
  * status = #accepted