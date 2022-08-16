Instance: observation-newborn-weight
InstanceOf: Observation
Title: "ตัวอย่าง Observation: น้ำหนักแรกคลอด"
Description: "น้ำหนักแรกคลอด"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#exam "Exam"
  * text = "Exam"
* code
  * coding[0] = $LNC#$LNC#29463-7 "Body weight"
  * text = "Body weight"
* subject = Reference(Patient/patient-patient7) "ด.ช. สมมิตร ใจดี"
* effectiveDateTime = "2022-05-21T12:30:02+07:00"
* valueQuantity = 3500 'g' "g"


Instance: observation-newborn-asphyxia
InstanceOf: Observation
Title: "ตัวอย่าง Observation: ภาวะการณ์ขาดออกซิเจน"
Description: "ภาวะการณ์ขาดออกซิเจน"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#exam "Exam"
  * text = "Exam"
* code
  * coding[0] = $SCT#413654009 "Birth asphyxia"
  * text = "Birth asphyxia"
* subject = Reference(Patient/patient-patient7) "ด.ช. สมมิตร ใจดี"
* effectiveDateTime = "2022-05-21T12:30:02+07:00"
* valueCodeableConcept = $CS_HL7_YesNo#N "No"



Instance: observation-newborn-vitamin-k
InstanceOf: Observation
Title: "ตัวอย่าง Observation: ได้รับ VIT K หรือไม่"
Description: "ได้รับ VIT K หรือไม่"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#exam "Exam"
  * text = "Exam"
* code
  * coding[0] = $SCT#414955000 "Oral vitamin K prophylaxis given in hospital (situation)"
  * text = "Oral vitamin K prophylaxis given in hospital (situation)"
* subject = Reference(Patient/patient-patient7) "ด.ช. สมมิตร ใจดี"
* effectiveDateTime = "2022-05-21T12:30:02+07:00"
* valueCodeableConcept = $CS_HL7_YesNo#Y "Yes"




Instance: observation-newborn-tsh
InstanceOf: Observation
Title: "ตัวอย่าง Observation: ผลการตรวจ TSH"
Description: "ผลการตรวจ TSH"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#exam "Exam"
  * text = "Exam"
* code
  * coding[0] = $LNC#29575-8 "Thyrotropin [Units/volume] in DBS"
  * text = "Thyrotropin [Units/volume] in DBS"
* subject = Reference(Patient/patient-patient7) "ด.ช. สมมิตร ใจดี"
* effectiveDateTime = "2022-05-21T12:30:02+07:00"
* valueQuantity = 10 'm[IU]/L' "m[IU]/L"



Instance: observation-newborn-height
InstanceOf: Observation
Title: "ตัวอย่าง Observation: ความยาว"
Description: "ความยาว"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#exam "Exam"
  * text = "Exam"
* code
  * coding[0] = $LNC#8302-2 "Body height"
  * text = "Body height"
* subject = Reference(Patient/patient-patient7) "ด.ช. สมมิตร ใจดี"
* effectiveDateTime = "2022-05-21T12:30:02+07:00"
* valueQuantity = 50 'cm' "cm"



Instance: observation-newborn-head-circum
InstanceOf: Observation
Title: "ตัวอย่าง Observation: เส้นรอบศีรษะ"
Description: "เส้นรอบศีรษะ"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#exam "Exam"
  * text = "Exam"
* code
  * coding[0] = $LNC#8290-9 "Head Occipital-frontal circumference --at birth- by Tape measure"
  * text = "Head Occipital-frontal circumference --at birth- by Tape measure"
* subject = Reference(Patient/patient-patient7) "ด.ช. สมมิตร ใจดี"
* effectiveDateTime = "2022-05-21T12:30:02+07:00"
* valueQuantity = 35 'cm' "cm"



Instance: observation-newborn-chest-circum
InstanceOf: Observation
Title: "ตัวอย่าง Observation: เส้นรอบอก"
Description: "เส้นรอบอก"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#exam "Exam"
  * text = "Exam"
* code
  * coding[0] = $LNC#8279-2 "Chest Circumference at nipple line"
  * text = "Chest Circumference at nipple line"
* subject = Reference(Patient/patient-patient7) "ด.ช. สมมิตร ใจดี"
* effectiveDateTime = "2022-05-21T12:30:02+07:00"
* valueQuantity = 30 'cm' "cm"



// APGAR
Instance: observation-newborn-apgar-1-min
InstanceOf: Observation
Title: "ตัวอย่าง Observation: APGAR 1 นาที"
Description: "APGAR 1 นาที"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#survey "Survey"
  * text = "Survey"
* code
  * coding[0] = $LNC#9272-6 "1 minute Apgar Score"
  * text = "1 minute Apgar Score"
* subject = Reference(Patient/patient-patient7) "ด.ช. สมมิตร ใจดี"
* effectiveDateTime = "2022-05-21T12:30:02+07:00"
* component[0]
  * code = $LNC#32406-1 "1 minute Apgar Color"
  * valueInteger = 2
* component[+]
  * code = $LNC#32407-9 "1 minute Apgar Heart rate"
  * valueInteger = 2
* component[+]
  * code = $LNC#32409-5 "1 minute Apgar Reflex irritability"
  * valueInteger = 2
* component[+]
  * code = $LNC#32408-7 "1 minute Apgar Muscle tone"
  * valueInteger = 2
* component[+]
  * code = $LNC#32410-3 "1 minute Apgar Respiratory effort"
  * valueInteger = 2


Instance: observation-newborn-apgar-5-min
InstanceOf: Observation
Title: "ตัวอย่าง Observation: APGAR 5 นาที"
Description: "APGAR 5 นาที"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#survey "Survey"
  * text = "Survey"
* code
  * coding[0] = $LNC#9274-2 "5 minute Apgar Score"
  * text = "5 minute Apgar Score"
* subject = Reference(Patient/patient-patient7) "ด.ช. สมมิตร ใจดี"
* effectiveDateTime = "2022-05-21T12:30:02+07:00"
* component[0]
  * code = $LNC#32411-1 "5 minute Apgar Color"
  * valueInteger = 2
* component[+]
  * code = $LNC#32412-9 "5 minute Apgar Heart rate"
  * valueInteger = 2
* component[+]
  * code = $LNC#32414-5 "5 minute Apgar Reflex irritability"
  * valueInteger = 2
* component[+]
  * code = $LNC#32413-7 "5 minute Apgar Muscle tone"
  * valueInteger = 2
* component[+]
  * code = $LNC#32415-2 "5 minute Apgar Respiratory effort"
  * valueInteger = 2


Instance: observation-newborn-health
InstanceOf: Observation
Title: "ตัวอย่าง Observation: สุขภาพเด็ก"
Description: "สุขภาพเด็ก"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#exam "Exam"
  * text = "Exam"
* code
  * coding[0] = $LNC#76447-2 "General health"
  * text = "General health"
* subject = Reference(Patient/patient-patient7) "ด.ช. สมมิตร ใจดี"
* effectiveDateTime = "2022-05-21T12:30:02+07:00"
* valueString = "สุขภาพแข็งแรงดี"