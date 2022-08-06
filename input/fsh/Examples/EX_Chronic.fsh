Instance: ChronicEpisode1
InstanceOf: EpisodeOfCare
Title: "การรับบริการเป็นประจำของผู้ป่วยรายที่ 4"
Description: "แสดงการรับบริการตรวจโรคเบาหวานเป็นประจำ"
Usage: #example
* extension[+]
  * url = $EX_TH_ChronicDischargeReason
  * valueCodeableConcept
    * coding[0] = $CS_THCC_ChronicDischargeReason#08 "โรคอยู่ในภาวะสงบ(inactive)ไม่มีความจำเป็นต้องรักษา"
    * text = "โรคอยู่ในภาวะสงบ(inactive)ไม่มีความจำเป็นต้องรักษา"
* status = #finished
* diagnosis.condition = Reference(Condition/ChronicCondition1)
* patient = Reference(Patient/Patient4) "นาง สมควร ใจดี"
* managingOrganization = Reference(Organization/OrganizationMain)
  * insert GeneralReference($ID_Hcode, "XXXXX", "โรงพยาบาลตัวอย่าง")
* period
  * start = "2022-01-01"
  * end = "2022-04-01"

Instance: ChronicCondition1
InstanceOf: Condition
Title: "โรคเบาหวานของผู้ป่วยรายที่ 4"
Description: "แสดงการประวัติการเป็นโรคเบาหวานของผู้ป่วยรายที่ 4"
Usage: #example
* category.coding = $CS_HL7_ConditionCategory#problem-list-item "Problem List Item"
* code
  * coding[0] = $SCT#73211009 "Diabetes mellitus"
  * coding[+] = $ICD10#E14.9 "Unspecified diabetes mellitus : Without complications"
  * text = "Diabetes mellitus"
* subject = Reference(Patient/Patient4) "นาง สมควร ใจดี"
* recordedDate = "2022-01-01T12:30:02+07:00"
* recorder = Reference(Practitioner/PractitionerDoctor1) "พญ. สมหญิง จริงใจ"

Instance: ChronicEncounter1
InstanceOf: Encounter
Title: "การรับบริการครั้งที่ 1 ของผู้ป่วยรายที่ 4"
Description: "แสดงการรับบริการตรวจโรคเบาหวานครั้งที่ 1"
Usage: #example
* status = #finished
* class = $CS_HL7_EncounterClass#AMB "ambulatory"
* subject = Reference(Patient/Patient4)
* period
  * start = "2022-01-01T12:30:02+07:00"
  * end = "2022-01-01T14:30:02+07:00"
* serviceProvider = Reference(Organization/OrganizationMain)
  * insert GeneralReference($ID_Hcode, "XXXXX", "โรงพยาบาลตัวอย่าง")

Instance: ChronicEncounter2
InstanceOf: Encounter
Title: "การรับบริการครั้งที่ 2 ของผู้ป่วยรายที่ 4"
Description: "แสดงการรับบริการตรวจโรคเบาหวานครั้งที่ 2"
Usage: #example
* status = #finished
* class = $CS_HL7_EncounterClass#AMB "ambulatory"
* subject = Reference(Patient/Patient4)
* period
  * start = "2022-04-01T12:30:02+07:00"
  * end = "2022-04-01T14:30:02+07:00"
* serviceProvider = Reference(Organization/OrganizationMain)
  * insert GeneralReference($ID_Hcode, "XXXXX", "โรงพยาบาลตัวอย่าง")


// Instance: ChronicEncounter1
// InstanceOf: Encounter
// Title: "การรับบริการครั้งที่ 3 ของผู้ป่วยรายที่ 4"
// Description: "แสดงการรับบริการตรวจโรคเบาหวานครั้งที่ 3"
// Usage: #example



// Instance: ChronicEncounter1
// InstanceOf: Encounter
// Title: "การรับบริการครั้งที่ 4 ของผู้ป่วยรายที่ 4"
// Description: "แสดงการรับบริการตรวจโรคเบาหวานครั้งที่ 4"
// Usage: #example



Instance: RiskBehavior1
InstanceOf: Observation
Title: "พฤติกรรมเสี่ยง"
Description: "ผลการบันทึกพฤติกรรมเสี่ยง"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#social-history "Social History"
  * text = "Social History"
* code = $CS_THCC_SocialObsType#risk-behavior "พฤติกรรมเสี่ยง"
  * text = "พฤติกรรมเสี่ยง"
* subject = Reference(Patient/Patient4)
* effectiveDateTime = "2022-01-01T12:30:02+07:00"
* valueCodeableConcept
  * text = "ชอบทานอาหารหวาน"