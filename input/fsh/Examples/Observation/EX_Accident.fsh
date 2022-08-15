Instance: AccidentInjuryLocation
InstanceOf: Observation
Title: "ตัวอย่าง Observation: สถานที่เกิดอุบัติเหตุ"
Description: "สถานที่เกิดอุบัติเหตุ"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#exam "Exam"
  * text = "Exam"
* code
  * coding[0] = $LNC#11376-1 "Injury location"
  * text = "Injury location"
* subject = Reference(Patient/Patient4) "นาง สมควร ใจดี"
* effectiveDateTime = "2022-03-01T12:30:02+07:00"
* valueCodeableConcept = $CS_THCC_AccidentLocation#07 "บนถนนสายหลัก"


Instance: AccidentInjuryType
InstanceOf: Observation
Title: "ตัวอย่าง Observation: ประเภทผู้บาดเจ็บ"
Description: "ประเภทผู้บาดเจ็บ"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#exam "Exam"
  * text = "Exam"
* code
  * coding[0] = $CS_THCC_AccidentObs#injury "ประเภทผู้บาดเจ็บ (อุบัติเหตุจราจร)"
  * text = "ประเภทผู้บาดเจ็บ (อุบัติเหตุจราจร)"
* subject = Reference(Patient/Patient4) "นาง สมควร ใจดี"
* effectiveDateTime = "2022-03-01T12:30:02+07:00"
* valueCodeableConcept = $CS_THCC_AccidentPatientType#2 "ผู้โดยสาร"



Instance: AccidentVehicleType
InstanceOf: Observation
Title: "ตัวอย่าง Observation: ประเภทยานพาหนะที่เกิดเหตุ"
Description: "ประเภทยานพาหนะที่เกิดเหตุ"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#exam "Exam"
  * text = "Exam"
* code
  * coding[0] = $CS_THCC_AccidentObs#vehicle "ประเภทยานพาหนะที่เกิดเหตุ"
  * text = "ประเภทยานพาหนะที่เกิดเหตุ"
* subject = Reference(Patient/Patient4) "นาง สมควร ใจดี"
* effectiveDateTime = "2022-03-01T12:30:02+07:00"
* valueCodeableConcept = $CS_THCC_AccidentVehicle#02 "จักรยานยนต์"



Instance: AccidentAlcoholUse
InstanceOf: Observation
Title: "ตัวอย่าง Observation: การดื่มแอลกอฮอลล์"
Description: "การดื่มแอลกอฮอลล์"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#exam "Exam"
  * text = "Exam"
* code
  * coding[0] = $LNC#74205-6 "Alcohol use [NTDS]"
  * text = "Alcohol use [NTDS]"
* subject = Reference(Patient/Patient4) "นาง สมควร ใจดี"
* effectiveDateTime = "2022-03-01T12:30:02+07:00"
* valueCodeableConcept = $CS_HL7_YesNo#N "No"





Instance: AccidentDrugUse
InstanceOf: Observation
Title: "ตัวอย่าง Observation: การใช้ยาสารเสพติดขณะเกิดอุบัติเหตุ"
Description: "การใช้ยาสารเสพติดขณะเกิดอุบัติเหตุ"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#exam "Exam"
  * text = "Exam"
* code
  * coding[0] = $LNC#74204-9 "Drug use [NTDS]"
  * text = "Drug use [NTDS]"
* subject = Reference(Patient/Patient4) "นาง สมควร ใจดี"
* effectiveDateTime = "2022-03-01T12:30:02+07:00"
* valueCodeableConcept = $CS_HL7_YesNo#N "No"




Instance: AccidentSeatbelt
InstanceOf: Observation
Title: "ตัวอย่าง Observation: การคาดเข็มขัดนิรภัย"
Description: "การคาดเข็มขัดนิรภัย"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#exam "Exam"
  * text = "Exam"
* code
  * coding[0] = $CS_THCC_AccidentObs#seatbelt "การคาดเข็มขัดนิรภัย"
  * text = "การคาดเข็มขัดนิรภัย"
* subject = Reference(Patient/Patient4) "นาง สมควร ใจดี"
* effectiveDateTime = "2022-03-01T12:30:02+07:00"
* valueCodeableConcept = $CS_HL7_YesNo#Y "Yes"





Instance: AccidentHelmet
InstanceOf: Observation
Title: "ตัวอย่าง Observation: การสวมหมวกนิรภัย"
Description: "การสวมหมวกนิรภัย"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#exam "Exam"
  * text = "Exam"
* code
  * coding[0] = $CS_THCC_AccidentObs#helmet "การสวมหมวกนิรภัย"
  * text = "การสวมหมวกนิรภัย"
* subject = Reference(Patient/Patient4) "นาง สมควร ใจดี"
* effectiveDateTime = "2022-03-01T12:30:02+07:00"
* valueCodeableConcept = $CS_HL7_YesNo#Y "Yes"



Instance: AccidentBreathing
InstanceOf: Observation
Title: "ตัวอย่าง Observation: การดูแลการหายใจ"
Description: "การดูแลการหายใจ"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#exam "Exam"
  * text = "Exam"
* code
  * coding[0] = $CS_THCC_AccidentObs#breathing "การดูแลการหายใจ"
  * text = "การดูแลการหายใจ"
* subject = Reference(Patient/Patient4) "นาง สมควร ใจดี"
* effectiveDateTime = "2022-03-01T12:30:02+07:00"
* valueCodeableConcept = $CS_THCC_AccidentBreathing#1 "มีการดูแลการหายใจก่อนมาถึงเหมาะสม"




Instance: AccidentBleeding
InstanceOf: Observation
Title: "ตัวอย่าง Observation: การห้ามเลือด"
Description: "การห้ามเลือด"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#exam "Exam"
  * text = "Exam"
* code
  * coding[0] = $CS_THCC_AccidentObs#stop-bleed "การห้ามเลือด"
  * text = "การห้ามเลือด"
* subject = Reference(Patient/Patient4) "นาง สมควร ใจดี"
* effectiveDateTime = "2022-03-01T12:30:02+07:00"
* valueCodeableConcept = $CS_THCC_AccidentBleeding#1 "มีการห้ามเลือดก่อนมาถึงเหมาะสม"




Instance: AccidentSprint
InstanceOf: Observation
Title: "ตัวอย่าง Observation: การใส่ splint/ slab"
Description: "การใส่ splint/ slab"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#exam "Exam"
  * text = "Exam"
* code
  * coding[0] = $CS_THCC_AccidentObs#splint "การใส่ splint/ slab"
  * text =  "การใส่ splint/ slab"
* subject = Reference(Patient/Patient4) "นาง สมควร ใจดี"
* effectiveDateTime = "2022-03-01T12:30:02+07:00"
* valueCodeableConcept = $CS_THCC_AccidentSplint#1 "มีการใส่ splint/slab ก่อนมาถึงเหมาะสม"




Instance: AccidentIVFluid
InstanceOf: Observation
Title: "ตัวอย่าง Observation: การให้น้ำเกลือ"
Description: "การให้น้ำเกลือ"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#exam "Exam"
  * text = "Exam"
* code
  * coding[0] = $CS_THCC_AccidentObs#iv-fluid "การให้น้ำเกลือ"
  * text = "การให้น้ำเกลือ"
* subject = Reference(Patient/Patient4) "นาง สมควร ใจดี"
* effectiveDateTime = "2022-03-01T12:30:02+07:00"
* valueCodeableConcept = $CS_THCC_AccidentIVFluid#1 "มีการให้ IV fluid ก่อนมาถึงเหมาะสม"



Instance: AccidentGCS
InstanceOf: Observation
Title: "ตัวอย่าง Observation: Glasgow coma score"
Description: "Glasgow coma score"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#exam "Exam"
  * text = "Exam"
* code
  * coding[0] = $LNC#9269-2 "Glasgow coma score total"
  * text = "Glasgow coma score total"
* subject = Reference(Patient/Patient4) "นาง สมควร ใจดี"
* effectiveDateTime = "2022-03-01T12:30:02+07:00"
* valueQuantity = 15 '{score}' "score"
* component[0]
  * code
    * coding[0] = $LNC#9267-6 "Glasgow coma score eye opening"
    * text = "Glasgow coma score eye opening"
  * valueQuantity = 4 '{score}' "score"
* component[+]
  * code
    * coding[0] = $LNC#9270-0 "Glasgow coma score verbal"
    * text = "Glasgow coma score verbal"
  * valueQuantity = 5 '{score}' "score"
* component[+]
  * code
    * coding[0] = $LNC#9268-4 "Glasgow coma score motor"
    * text = "Glasgow coma score motor"
  * valueQuantity = 6 '{score}' "score"
