Instance: Contraceptive
InstanceOf: Observation
Title: "รหัสวิธีการคุมกำเนิดปัจจุบัน"
Description: "รหัสวิธีการคุมกำเนิดปัจจุบัน"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#exam "Exam"
  * text = "Exam"
* code
  * coding[0] = $LNC#86649-1 "Birth control method at intake Reported"
  * text = "Birth control method at intake Reported"
* subject = Reference(Patient/Patient4) "นาง สมควร ใจดี"
* effectiveDateTime = "2022-03-11T12:30:02+07:00"
* valueCodeableConcept
  * coding[0] = $CS_THCC_Contraceptive#9 "ไม่คุมกำเนิด"
  * text = "ไม่คุมกำเนิด"

Instance: NoContraceptiveReason
InstanceOf: Observation
Title: "สาเหตุที่ไม่คุมกำเนิด"
Description: "สาเหตุที่ไม่คุมกำเนิด"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#exam "Exam"
  * text = "Exam"
* code
  * coding[0] = $LNC#86650-9 "Reason for no birth control use - Reported --at intake"
  * text = "Reason no birth control at intake"
* subject = Reference(Patient/Patient4) "นาง สมควร ใจดี"
* effectiveDateTime = "2022-03-11T12:30:02+07:00"
* valueCodeableConcept
  * coding[0] = $CS_THCC_NoContraceptive#2 "หมันธรรมชาติ"
  * text = "หมันธรรมชาติ"

Instance: NumParity
InstanceOf: Observation
Title: "จำนวนบุตรทั้งหมดที่เคยมี"
Description: "จำนวนบุตรทั้งหมดที่เคยมี"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#exam "Exam"
  * text = "Exam"
* code
  * coding[0] = $LNC#11977-6 "[#] Parity"
  * text = "Parity"
* subject = Reference(Patient/Patient4) "นาง สมควร ใจดี"
* effectiveDateTime = "2022-03-11T12:30:02+07:00"
* valueInteger = 2


Instance: NumLivingBirth
InstanceOf: Observation
Title: "จำนวนบุตรที่มีชีวิต"
Description: "จำนวนบุตรที่มีชีวิต"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#exam "Exam"
  * text = "Exam"
* code
  * coding[0] = $LNC#11638-4 "[#] Births.still living"
  * text = "Births.still living"
* subject = Reference(Patient/Patient4) "นาง สมควร ใจดี"
* effectiveDateTime = "2022-03-11T12:30:02+07:00"
* valueInteger = 2

Instance: NumAbortion
InstanceOf: Observation
Title: "จำนวนการแท้งบุตร"
Description: "จำนวนการแท้งบุตร"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#exam "Exam"
  * text = "Exam"
* code
  * coding[0] = $LNC#11612-9 "[#] Abortions"
  * text = "Abortions"
* subject = Reference(Patient/Patient4) "นาง สมควร ใจดี"
* effectiveDateTime = "2022-03-11T12:30:02+07:00"
* valueInteger = 0

Instance: NumStillbirth
InstanceOf: Observation
Title: "จำนวนทารกตายในครรภ์ หรือตายคลอด"
Description: "จำนวนทารกตายในครรภ์ หรือตายคลอด"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#exam "Exam"
  * text = "Exam"
* code
  * coding[0] = $LNC#57062-2 "[#] Births.stillborn"
  * text = "Births.stillborn"
* subject = Reference(Patient/Patient4) "นาง สมควร ใจดี"
* effectiveDateTime = "2022-03-11T12:30:02+07:00"
* valueInteger = 0