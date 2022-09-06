Instance: procedure-community-activity1
InstanceOf: Procedure
Title: "ตัวอย่าง Procedure: กิจกรรมในชุมชนที่อยู่ในเขตรับผิดชอบ"
Description: "กิจกรรมในชุมชนที่อยู่ในเขตรับผิดชอบ"
Usage: #example
* status = #completed
* code
  * coding[0] = $CS_THCC_CommunityActivity#2B06 "การพัฒนา/การจัดการส้วมให้ถูกสุขลักษณะ"
  * text = "การพัฒนา/การจัดการส้วมให้ถูกสุขลักษณะ"
* subject = Reference(Group/group-patient-village1) "ประชากรในหมู่บ้านสุขใจ แสนสุข"
* performer[0]
  * function = $CS_THCC_LaborPerformerRole#1 "แพทย์"
  * actor = Reference(Practitioner/practitioner-doctor1) "พญ. สมหญิง จริงใจ"
