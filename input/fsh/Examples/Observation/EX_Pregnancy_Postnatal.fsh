Instance: ObsPostnatalGravida
InstanceOf: Observation
Title: "ตัวอย่าง Observation: การตั้งครรภ์ครั้งที่"
Description: "การตั้งครรภ์ครั้งที่"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#exam "Exam"
  * text = "Exam"
* code
  * coding[0] = $LNC#11996-6 "[#] Pregnancies"
  * text = "[#] Pregnancies"
* subject = Reference(Patient/Patient6) "นาง สมฤทัย ใจดี"
* effectiveDateTime = "2022-01-21T12:30:02+07:00"
* valueInteger = 2


Instance: ObsPostnatalBirthDate
InstanceOf: Observation
Title: "ตัวอย่าง Observation: วันเดือนปีที่คลอด / วันสิ้นสุดการตั้งครรภ์"
Description: "วันเดือนปีที่คลอด / วันสิ้นสุดการตั้งครรภ์"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#exam "Exam"
  * text = "Exam"
* code
  * coding[0] = $LNC#21112-8 "Birth date"
  * text = "Birth date"
* subject = Reference(Patient/Patient6) "นาง สมฤทัย ใจดี"
* effectiveDateTime = "2022-01-21T12:30:02+07:00"
* valueDateTime = "2021-12-01T12:30:02+07:00"


Instance: ObsPostnatalFundalHeight
InstanceOf: Observation
Title: "ตัวอย่าง Observation: ระดับมดลูก Postnatal"
Description: "ระดับมดลูก Postnatal"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#exam "Exam"
  * text = "Exam"
* code
  * coding[0] = $LNC#11881-0 "Uterus Fundal height Tape measure"
  * text = "Uterus Fundal height Tape measure"
* subject = Reference(Patient/Patient6) "นาง สมฤทัย ใจดี"
* effectiveDateTime = "2022-01-21T12:30:02+07:00"
* valueQuantity = 12 'cm' "cm"


Instance: ObsPostnatalLochia
InstanceOf: Observation
Title: "ตัวอย่าง Observation: น้ำคาวปลา Postnatal"
Description: "น้ำคาวปลา Postnatal"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#exam "Exam"
  * text = "Exam"
* code
  * coding[0] = $SCT#289576005 "Lochia present"
  * text = "Lochia present"
* subject = Reference(Patient/Patient6) "นาง สมฤทัย ใจดี"
* effectiveDateTime = "2022-01-21T12:30:02+07:00"
* valueCodeableConcept = $CS_HL7_ObsInterpret#N "Normal"


Instance: ObsPostnatalnipple
InstanceOf: Observation
Title: "ตัวอย่าง Observation: สภาพหัวนม Postnatal"
Description: "สภาพหัวนม Postnatal"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#exam "Exam"
  * text = "Exam"
* code
  * coding[0] = $SCT#364376001 "Nipple observable"
  * text = "Nipple observable"
* subject = Reference(Patient/Patient6) "นาง สมฤทัย ใจดี"
* effectiveDateTime = "2022-01-21T12:30:02+07:00"
* valueCodeableConcept = $CS_HL7_ObsInterpret#N "Normal"


Instance: ObsPostnatalBreastfeeding
InstanceOf: Observation
Title: "ตัวอย่าง Observation: น้ำนม Postnatal"
Description: "น้ำนม Postnatal"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#exam "Exam"
  * text = "Exam"
* code
  * coding[0] = $LNC#63895-7 "Breastfeeding status"
  * text = "Breastfeeding status"
* subject = Reference(Patient/Patient6) "นาง สมฤทัย ใจดี"
* effectiveDateTime = "2022-01-21T12:30:02+07:00"
* valueCodeableConcept = $CS_THCC_PostnatalBreastfeeding#1 "ไหล"


Instance: ObsPostnatalMens
InstanceOf: Observation
Title: "ตัวอย่าง Observation: ประจำเดือน Postnatal"
Description: "ประจำเดือน Postnatal"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#exam "Exam"
  * text = "Exam"
* code
  * coding[0] = $LNC#3146-8 "Menstrual status"
  * text = "TEMP"
* subject = Reference(Patient/Patient6) "นาง สมฤทัย ใจดี"
* effectiveDateTime = "2022-01-21T12:30:02+07:00"
* valueCodeableConcept = $CS_THCC_PostnatalMens#1 "ปกติ"


Instance: ObsPostnatalUrineProtein
InstanceOf: Observation
Title: "ตัวอย่าง Observation: การตรวจโปรตีนทางปัสสาวะ Postnatal"
Description: "การตรวจโปรตีนทางปัสสาวะ Postnatal"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#laboratory "Laboratory"
  * text = "Laboratory"
* code
  * coding[0] = $LNC#5804-0 "Protein [Mass/volume] in Urine by Test strip"
  * text = "Protein [Mass/volume] in Urine by Test strip"
* subject = Reference(Patient/Patient6) "นาง สมฤทัย ใจดี"
* effectiveDateTime = "2022-01-21T12:30:02+07:00"
* valueInteger = 0


Instance: ObsPostnatalUrineSugar
InstanceOf: Observation
Title: "ตัวอย่าง Observation: การตรวจน้ำตาลทางปัสสาวะ Postnatal"
Description: "การตรวจน้ำตาลทางปัสสาวะ Postnatal"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#laboratory "Laboratory"
  * text = "Laboratory"
* code
  * coding[0] = $LNC#5792-7 "Glucose [Mass/volume] in Urine by Test strip"
  * text = "Glucose [Mass/volume] in Urine by Test strip"
* subject = Reference(Patient/Patient6) "นาง สมฤทัย ใจดี"
* effectiveDateTime = "2022-01-21T12:30:02+07:00"
* valueInteger = 0


Instance: ObsPostnatalPerineum
InstanceOf: Observation
Title: "ตัวอย่าง Observation: TEMP"
Description: "TEMP"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#exam "Exam"
  * text = "Exam"
* code
  * coding[0] = $SCT#364297003 "Female perineum observable"
  * text = "Female perineum observable"
* subject = Reference(Patient/Patient6) "นาง สมฤทัย ใจดี"
* effectiveDateTime = "2022-01-21T12:30:02+07:00"
* valueCodeableConcept = $CS_THCC_PostnatalPerineum#1 "ปกติ"


Instance: ObsPostnatalStatus
InstanceOf: Observation
Title: "ตัวอย่าง Observation: ผลการตรวจมารดาหลังคลอด"
Description: "ผลการตรวจมารดาหลังคลอด"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#exam "Exam"
  * text = "Exam"
* code
  * coding[0] = $SCT#304598004 "Postnatal examination finding"
  * text = "Postnatal examination finding"
* subject = Reference(Patient/Patient6) "นาง สมฤทัย ใจดี"
* effectiveDateTime = "2022-01-21T12:30:02+07:00"
* valueCodeableConcept = $CS_HL7_ObsInterpret#N "Normal"
