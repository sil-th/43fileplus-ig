Instance: observation-accident-injury-location
InstanceOf: $SD_Observation_AccidentLocation
Title: "ตัวอย่าง Observation: สถานที่เกิดอุบัติเหตุ"
Description: "สถานที่เกิดอุบัติเหตุ"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#exam "Exam"
  * text = "Exam"
* code
  * coding[code43Plus] = $LNC#11376-1 "Injury location"
  * text = "Injury location"
* subject = Reference(Patient/patient-patient4) "นาง สมควร ใจดี"
* effectiveDateTime = "2022-03-01T12:30:02+07:00"
* valueCodeableConcept = $CS_THCC_AccidentLocation#07 "บนถนนสายหลัก"


Instance: observation-accident-injury-type
InstanceOf: $SD_Observation_AccidentPtType
Title: "ตัวอย่าง Observation: ประเภทผู้บาดเจ็บ"
Description: "ประเภทผู้บาดเจ็บ"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#exam "Exam"
  * text = "Exam"
* code
  * coding[code43Plus] = $CS_Meta_AccidentObs#injury "ประเภทผู้บาดเจ็บ (อุบัติเหตุจราจร)"
  * text = "ประเภทผู้บาดเจ็บ (อุบัติเหตุจราจร)"
* subject = Reference(Patient/patient-patient4) "นาง สมควร ใจดี"
* effectiveDateTime = "2022-03-01T12:30:02+07:00"
* valueCodeableConcept = $CS_THCC_AccidentPatientType#2 "ผู้โดยสาร"



Instance: observation-accident-vehicle-type
InstanceOf: $SD_Observation_AccidentVehicle
Title: "ตัวอย่าง Observation: ประเภทยานพาหนะที่เกิดเหตุ"
Description: "ประเภทยานพาหนะที่เกิดเหตุ"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#exam "Exam"
  * text = "Exam"
* code
  * coding[code43Plus] = $CS_Meta_AccidentObs#vehicle "ประเภทยานพาหนะที่เกิดเหตุ"
  * text = "ประเภทยานพาหนะที่เกิดเหตุ"
* subject = Reference(Patient/patient-patient4) "นาง สมควร ใจดี"
* effectiveDateTime = "2022-03-01T12:30:02+07:00"
* valueCodeableConcept = $CS_THCC_AccidentVehicle#02 "จักรยานยนต์"



Instance: observation-accident-alcohol-use
InstanceOf: $SD_Observation_AccidentAlcohol
Title: "ตัวอย่าง Observation: การดื่มแอลกอฮอลล์"
Description: "การดื่มแอลกอฮอลล์"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#exam "Exam"
  * text = "Exam"
* code
  * coding[code43Plus] = $LNC#74205-6 "Alcohol use [NTDS]"
  * text = "Alcohol use [NTDS]"
* subject = Reference(Patient/patient-patient4) "นาง สมควร ใจดี"
* effectiveDateTime = "2022-03-01T12:30:02+07:00"
* valueCodeableConcept = $CS_HL7_YesNo#N "No"





Instance: observation-accident-drug-use
InstanceOf: $SD_Observation_AccidentDrug
Title: "ตัวอย่าง Observation: การใช้ยาสารเสพติดขณะเกิดอุบัติเหตุ"
Description: "การใช้ยาสารเสพติดขณะเกิดอุบัติเหตุ"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#exam "Exam"
  * text = "Exam"
* code
  * coding[code43Plus] = $LNC#74204-9 "Drug use [NTDS]"
  * text = "Drug use [NTDS]"
* subject = Reference(Patient/patient-patient4) "นาง สมควร ใจดี"
* effectiveDateTime = "2022-03-01T12:30:02+07:00"
* valueCodeableConcept = $CS_HL7_YesNo#N "No"




Instance: observation-accident-seatbelt
InstanceOf: $SD_Observation_AccidentSeatbelt
Title: "ตัวอย่าง Observation: การคาดเข็มขัดนิรภัย"
Description: "การคาดเข็มขัดนิรภัย"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#exam "Exam"
  * text = "Exam"
* code
  * coding[code43Plus] = $CS_Meta_AccidentObs#seatbelt "การคาดเข็มขัดนิรภัย"
  * text = "การคาดเข็มขัดนิรภัย"
* subject = Reference(Patient/patient-patient4) "นาง สมควร ใจดี"
* effectiveDateTime = "2022-03-01T12:30:02+07:00"
* valueCodeableConcept = $CS_HL7_YesNo#Y "Yes"





Instance: observation-accident-helmet
InstanceOf: $SD_Observation_AccidentHelmet
Title: "ตัวอย่าง Observation: การสวมหมวกนิรภัย"
Description: "การสวมหมวกนิรภัย"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#exam "Exam"
  * text = "Exam"
* code
  * coding[code43Plus] = $CS_Meta_AccidentObs#helmet "การสวมหมวกนิรภัย"
  * text = "การสวมหมวกนิรภัย"
* subject = Reference(Patient/patient-patient4) "นาง สมควร ใจดี"
* effectiveDateTime = "2022-03-01T12:30:02+07:00"
* valueCodeableConcept = $CS_HL7_YesNo#Y "Yes"



Instance: observation-accident-breathing
InstanceOf: $SD_Observation_AccidentBreathing
Title: "ตัวอย่าง Observation: การดูแลการหายใจ"
Description: "การดูแลการหายใจ"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#exam "Exam"
  * text = "Exam"
* code
  * coding[code43Plus] = $CS_Meta_AccidentObs#breathing "การดูแลการหายใจ"
  * text = "การดูแลการหายใจ"
* subject = Reference(Patient/patient-patient4) "นาง สมควร ใจดี"
* effectiveDateTime = "2022-03-01T12:30:02+07:00"
* valueCodeableConcept = $CS_THCC_AccidentBreathing#1 "มีการดูแลการหายใจก่อนมาถึงเหมาะสม"




Instance: observation-accident-bleeding
InstanceOf: $SD_Observation_AccidentBleeding
Title: "ตัวอย่าง Observation: การห้ามเลือด"
Description: "การห้ามเลือด"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#exam "Exam"
  * text = "Exam"
* code
  * coding[code43Plus] = $CS_Meta_AccidentObs#stop-bleed "การห้ามเลือด"
  * text = "การห้ามเลือด"
* subject = Reference(Patient/patient-patient4) "นาง สมควร ใจดี"
* effectiveDateTime = "2022-03-01T12:30:02+07:00"
* valueCodeableConcept = $CS_THCC_AccidentBleeding#1 "มีการห้ามเลือดก่อนมาถึงเหมาะสม"




Instance: observation-accident-sprint
InstanceOf: $SD_Observation_AccidentSprint
Title: "ตัวอย่าง Observation: การใส่ splint/ slab"
Description: "การใส่ splint/ slab"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#exam "Exam"
  * text = "Exam"
* code
  * coding[code43Plus] = $CS_Meta_AccidentObs#splint "การใส่ splint/ slab"
  * text =  "การใส่ splint/ slab"
* subject = Reference(Patient/patient-patient4) "นาง สมควร ใจดี"
* effectiveDateTime = "2022-03-01T12:30:02+07:00"
* valueCodeableConcept = $CS_THCC_AccidentSplint#1 "มีการใส่ splint/slab ก่อนมาถึงเหมาะสม"




Instance: observation-accident-iv-fluid
InstanceOf: $SD_Observation_AccidentIV
Title: "ตัวอย่าง Observation: การให้น้ำเกลือ"
Description: "การให้น้ำเกลือ"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#exam "Exam"
  * text = "Exam"
* code
  * coding[code43Plus] = $CS_Meta_AccidentObs#iv-fluid "การให้น้ำเกลือ"
  * text = "การให้น้ำเกลือ"
* subject = Reference(Patient/patient-patient4) "นาง สมควร ใจดี"
* effectiveDateTime = "2022-03-01T12:30:02+07:00"
* valueCodeableConcept = $CS_THCC_AccidentIVFluid#1 "มีการให้ IV fluid ก่อนมาถึงเหมาะสม"



Instance: observation-accident-gcs
InstanceOf: $SD_Observation_AccidentGcs
Title: "ตัวอย่าง Observation: Glasgow coma score"
Description: "Glasgow coma score"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#survey "Survey"
  * text = "Survey"
* code
  * coding[code43Plus] = $LNC#9269-2 "Glasgow coma score total"
  * text = "Glasgow coma score total"
* subject = Reference(Patient/patient-patient4) "นาง สมควร ใจดี"
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
