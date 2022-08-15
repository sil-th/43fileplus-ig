// Demographic related observations

Instance: BloodGroup
InstanceOf: Observation
Title: "ตัวอย่าง Observation: หมู่เลือด"
Description: "ผลการตรวจหมู่เลือด"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#laboratory "Laboratory"
  * text = "Laboratory"
* code
  * coding[0] = $LNC#34532-2 "Blood type and Indirect antibody screen panel - Blood"
  * text = "Blood Group"
* subject = Reference(Patient/Patient1) "นาย สมชาย ใจดี"
* effectiveDateTime = "2018-03-11T12:30:02+07:00"
* hasMember[0] = Reference(Observation/BloodGroupABO)
* hasMember[+] = Reference(Observation/BloodGroupRh)
* valueCodeableConcept = $SCT#112144000 "Blood group A (finding)"
  * text = "A"

Instance: BloodGroupABO
InstanceOf: Observation
Title: "ตัวอย่าง Observation: หมู่เลือด ABO"
Description: "ผลการตรวจหมู่เลือด ABO"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#laboratory "Laboratory"
  * text = "Laboratory"
* code
  * coding[0] = $LNC#883-9 "ABO group [Type] in Blood"
  * text = "ABO Blood Group"
* subject = Reference(Patient/Patient1) "นาย สมชาย ใจดี"
* effectiveDateTime = "2018-03-11T12:30:02+07:00"
* valueCodeableConcept = $SCT#112144000 "Blood group A (finding)"
  * text = "A"

Instance: BloodGroupRh
InstanceOf: Observation
Title: "ตัวอย่าง Observation: หมู่เลือด Rh"
Description: "ผลการตรวจหมู่เลือด Rh"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#laboratory "Laboratory"
  * text = "Laboratory"
* code
  * coding[0] = $LNC#10331-7 "Rh [Type] in Blood"
  * text = "Rh Blood Group"
* subject = Reference(Patient/Patient1) "นาย สมชาย ใจดี"
* effectiveDateTime = "2018-03-11T12:30:02+07:00"
* valueCodeableConcept = $SCT#165747007 "RhD positive (finding)"
  * text = "Rh positive"


Instance: RoleInHouse
InstanceOf: Observation
Title: "ตัวอย่าง Observation: สถานะในครอบครัว"
Description: "สถานะในครอบครัว"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#social-history "Social History"
  * text = "Social History"
* code
  * coding[0] = $CS_THCC_SocialObsType#fstatus "สถานะในครอบครัว"
  * text = "สถานะในครอบครัว"
* subject = Reference(Patient/Patient1)
* effectiveDateTime = "2018-03-11T12:30:02+07:00"
* valueCodeableConcept = $CS_THCC_StatusInFamily#1 "เจ้าบ้าน"


Instance: RoleInVillage
InstanceOf: Observation
Title: "ตัวอย่าง Observation: สถานะในชุมชน"
Description: "สถานะในชุมชน"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#social-history "Social History"
  * text = "Social History"
* code
  * coding[0] = $CS_THCC_SocialObsType#vstatus "สถานะในชุมชน"
  * text = "สถานะในชุมชน"
* subject = Reference(Patient/Patient1)
* effectiveDateTime = "2018-03-11T12:30:02+07:00"
* valueCodeableConcept = $CS_THCC_StatusInVillage#5 "อื่นๆ"
  * text = "อื่นๆ"

Instance: Occupation
InstanceOf: Observation
Title: "ตัวอย่าง Observation: อาชีพปัจจุบันของผู้ป่วยรายที่ 1"
Description: "อาชีพปัจจุบันของผู้ป่วยรายที่ 1 พร้อมหน่วยงานที่สังกัด และรายได้เฉลี่ย"
Usage: #example
* extension
  * url = $EX_INT_IsCurrentJob
  * valueBoolean = true
* status = #final
* code
  * coding[0] = $LNC#11341-5 "History of Occupation"
* subject = Reference(Patient/Patient1)
* effectivePeriod.start = "2015-04-24"
* valueCodeableConcept
  * coding[0] = $CS_THCC_Occupation#4412 "บุรุษไปรษณีย์"
  * text = "บุรุษไปรษณีย์"
* component[0]
  * code = $LNC#80427-8 "Employer name"
  * valueString = "บริษัท จ้างงาน จำกัด"
* component[+]
  * code
    * coding[0] = $LNC#87707-6 "Job supervisory level or pay grade"
    * coding[+] = $CS_THCC_SocialObsType#annual-income "รายได้เฉลี่ยต่อปี"
  * valueCodeableConcept
    * text = "ต้นฉบับมิได้ระบุรหัส"