Instance: observation-vital-panel1
InstanceOf: $SD_Observation_VitalPanel
Title: "ตัวอย่าง Observation: Vital Signs Panel"
Description: "รวมการตรวจสัญญาณชีพทั้งหมด"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#vital-signs "Vital Signs"
  * text = "Vital Signs"
* code
  * coding[code43Plus] = $LNC#85353-1 "Vital signs, weight, height, head circumference, oxygen saturation and BMI panel"
  * text = "การตรวจสัญญาณชีพ"
* subject = Reference(Patient/patient-patient4) "นาง สมควร ใจดี"
* effectiveDateTime = "2018-03-11T12:30:02+07:00"
* interpretation
  * coding[0] = $CS_HL7_ObsInterpret#N "Normal"
  * text = "Normal"
* hasMember[0] = Reference(Observation/observation-vital-wt1)
* hasMember[+] = Reference(Observation/observation-vital-ht1)
* hasMember[+] = Reference(Observation/observation-vital-bt1)
* hasMember[+] = Reference(Observation/observation-vital-bp1)
* hasMember[+] = Reference(Observation/observation-vital-hr1)
* hasMember[+] = Reference(Observation/observation-vital-rr1)
* hasMember[+] = Reference(Observation/observation-vital-wc1)
* hasMember[+] = Reference(Observation/observation-vital-hipc1)



Instance: observation-vital-wt1
InstanceOf: $SD_Observation_VitalBw
Title: "ตัวอย่าง Observation: น้ำหนักผู้ป่วยแรกรับ"
Description: "Body weight"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#vital-signs "Vital Signs"
  * text = "Vital Signs"
* code
  * coding[code43Plus] = $LNC#29463-7 "Body weight"
  * text = "Body weight"
* subject = Reference(Patient/patient-patient4) "นาง สมควร ใจดี"
* effectiveDateTime = "2018-03-11T12:30:02+07:00"
* valueQuantity = 80 'kg' "kg"


Instance: observation-vital-ht1
InstanceOf: $SD_Observation_VitalHt
Title: "ตัวอย่าง Observation: ส่วนสูงผู้ป่วยแรกรับ"
Description: "Body height"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#vital-signs "Vital Signs"
  * text = "Vital Signs"
* code
  * coding[code43Plus] = $LNC#8302-2 "Body height"
  * text = "Body height"
* subject = Reference(Patient/patient-patient4) "นาง สมควร ใจดี"
* effectiveDateTime = "2018-03-11T12:30:02+07:00"
* valueQuantity = 170 'cm' "cm"



Instance: observation-vital-bt1
InstanceOf: $SD_Observation_VitalBt
Title: "ตัวอย่าง Observation: อุณหภูมิร่างกายแรกรับ"
Description: "Body temperature"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#vital-signs "Vital Signs"
  * text = "Vital Signs"
* code
  * coding[code43Plus] = $LNC#8310-5 "Body temperature"
  * text = "Body temperature"
* subject = Reference(Patient/patient-patient4) "นาง สมควร ใจดี"
* effectiveDateTime = "2018-03-11T12:30:02+07:00"
* valueQuantity = 37 'Cel' "Celsius"



Instance: observation-vital-bp1
InstanceOf: $SD_Observation_VitalBp
Title: "ตัวอย่าง Observation: ความดันโลหิต ซิสโตลิก แรกรับ"
Description: "Blood pressure panel with all children optional"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#vital-signs "Vital Signs"
  * text = "Vital Signs"
* code
  * coding[code43Plus] = $LNC#85354-9 "Blood pressure panel with all children optional"
  * text = "Blood pressure panel with all children optional"
* subject = Reference(Patient/patient-patient4) "นาง สมควร ใจดี"
* effectiveDateTime = "2018-03-11T12:30:02+07:00"
* component[SBP]
  * code
    * coding[0] = $LNC#8480-6 "Systolic blood pressure"
    * text = "Systolic blood pressure"
  * valueQuantity = 120 'mm[Hg]' "mm[Hg]"
* component[DBP]
  * code
    * coding[0] = $LNC#8462-4 "Diastolic blood pressure"
    * text = "Diastolic blood pressure"
  * valueQuantity = 80 'mm[Hg]' "mm[Hg]"



Instance: observation-vital-hr1
InstanceOf: $SD_Observation_VitalHr
Title: "ตัวอย่าง Observation: อัตราการเต้นของชีพจร"
Description: "Heart rate"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#vital-signs "Vital Signs"
  * text = "Vital Signs"
* code
  * coding[code43Plus] = $LNC#8867-4 "Heart rate"
  * text = "Heart rate"
* subject = Reference(Patient/patient-patient4) "นาง สมควร ใจดี"
* effectiveDateTime = "2018-03-11T12:30:02+07:00"
* valueQuantity = 80 '/min' "/min"



Instance: observation-vital-rr1
InstanceOf: $SD_Observation_VitalRr
Title: "ตัวอย่าง Observation: อัตราการหายใจ"
Description: "Respiratory rate"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#vital-signs "Vital Signs"
  * text = "Vital Signs"
* code
  * coding[code43Plus] = $LNC#9279-1 "Respiratory rate"
  * text = "Respiratory rate"
* subject = Reference(Patient/patient-patient4) "นาง สมควร ใจดี"
* effectiveDateTime = "2018-03-11T12:30:02+07:00"
* valueQuantity = 16 '/min' "/min"



Instance: observation-vital-wc1
InstanceOf: $SD_Observation_VitalWc
Title: "ตัวอย่าง Observation: รอบเอว"
Description: "Waist Circumference at umbilicus by Tape measure"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#vital-signs "Vital Signs"
  * text = "Vital Signs"
* code
  * coding[code43Plus] = $LNC#8280-0 "Waist Circumference at umbilicus by Tape measure"
  * text = "Waist Circumference at umbilicus by Tape measure"
* subject = Reference(Patient/patient-patient4) "นาง สมควร ใจดี"
* effectiveDateTime = "2018-03-11T12:30:02+07:00"
* valueQuantity = 80 'cm' "cm"




Instance: observation-vital-hipc1
InstanceOf: $SD_Observation_VitalHiC
Title: "ตัวอย่าง Observation: รอบสะโพก"
Description: "Hip circumference"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#vital-signs "Vital Signs"
  * text = "Vital Signs"
* code
  * coding[code43Plus] = $LNC#62409-8 "PhenX - hip circumference protocol"
  * text = "Hip circumference"
* subject = Reference(Patient/patient-patient4) "นาง สมควร ใจดี"
* effectiveDateTime = "2018-03-11T12:30:02+07:00"
* valueQuantity = 120 'cm' "cm"




Instance: observation-vital-pe1
InstanceOf: $SD_Observation_PhysicalExamByArea
Title: "ตัวอย่าง Observation: การตรวจร่างกาย"
Description: "Physical findings"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#exam "Exam"
  * text = "Exam"
* code
  * coding[code43Plus] = $LNC#55286-9 "Physical exam by body areas"
  * text = "Physical exam by body areas"
* subject = Reference(Patient/patient-patient4) "นาง สมควร ใจดี"
* effectiveDateTime = "2018-03-11T12:30:02+07:00"
* hasMember[0] = Reference(Observation/observation-vital-ga1)
* hasMember[+] = Reference(Observation/observation-vital-heent1)
* hasMember[+] = Reference(Observation/observation-vital-heart1)
* hasMember[+] = Reference(Observation/observation-vital-chest1)
* hasMember[+] = Reference(Observation/observation-vital-abd1)
* hasMember[+] = Reference(Observation/observation-vital-ext1)
* hasMember[+] = Reference(Observation/observation-vital-neu1)
* hasMember[+] = Reference(Observation/observation-vital-misc1)

Instance: observation-vital-ga1
InstanceOf: $SD_Observation_PhysicalGeneral
Title: "ตัวอย่าง Observation: การตรวจ General Appearance"
Description: "General appearance"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#exam "Exam"
  * text = "Exam"
* code
  * coding[code43Plus] = $LNC#32434-3 "General appearance"
  * text = "General appearance"
* subject = Reference(Patient/patient-patient4) "นาง สมควร ใจดี"
* effectiveDateTime = "2018-03-11T12:30:02+07:00"
* valueString = "WNL"



Instance: observation-vital-heent1
InstanceOf: $SD_Observation_PhysicalHeent
Title: "ตัวอย่าง Observation: การตรวจ HEENT"
Description: "Physical findings of Head"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#exam "Exam"
  * text = "Exam"
* code
  * coding[code43Plus] = $LNC#8701-5 "Physical findings of Head"
  * text = "Physical findings of Head"
* subject = Reference(Patient/patient-patient4) "นาง สมควร ใจดี"
* effectiveDateTime = "2018-03-11T12:30:02+07:00"
* valueString = "WNL"

Instance: observation-vital-heart1
InstanceOf: $SD_Observation_PhysicalHeart
Title: "ตัวอย่าง Observation: การตรวจ Heart"
Description: "Physical findings of Heart"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#exam "Exam"
  * text = "Exam"
* code
  * coding[code43Plus] = $LNC#8702-3 "Physical findings of Heart"
  * text = "Physical findings of Heart"
* subject = Reference(Patient/patient-patient4) "นาง สมควร ใจดี"
* effectiveDateTime = "2018-03-11T12:30:02+07:00"
* valueString = "WNL"

Instance: observation-vital-chest1
InstanceOf: $SD_Observation_PhysicalLung
Title: "ตัวอย่าง Observation: การตรวจ Chest & Lung"
Description: "Physical findings of Thorax and Lungs"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#exam "Exam"
  * text = "Exam"
* code
  * coding[code43Plus] = $LNC#8710-6 "Physical findings of Thorax and Lungs"
  * text = "Physical findings of Thorax and Lungs"
* subject = Reference(Patient/patient-patient4) "นาง สมควร ใจดี"
* effectiveDateTime = "2018-03-11T12:30:02+07:00"
* valueString = "WNL"

Instance: observation-vital-abd1
InstanceOf: $SD_Observation_PhysicalAbd
Title: "ตัวอย่าง Observation: การตรวจ Abdomen"
Description: "Physical findings of Abdomen"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#exam "Exam"
  * text = "Exam"
* code
  * coding[code43Plus] = $LNC#8694-2 "Physical findings of Abdomen"
  * text = "Physical findings of Abdomen"
* subject = Reference(Patient/patient-patient4) "นาง สมควร ใจดี"
* effectiveDateTime = "2018-03-11T12:30:02+07:00"
* valueString = "WNL"

Instance: observation-vital-ext1
InstanceOf: $SD_Observation_PhysicalExt
Title: "ตัวอย่าง Observation: การตรวจ Extremities"
Description: "Physical findings of Extremities"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#exam "Exam"
  * text = "Exam"
* code
  * coding[code43Plus] = $LNC#8703-1 "Physical findings of Extremities"
  * text = "Physical findings of Extremities"
* subject = Reference(Patient/patient-patient4) "นาง สมควร ใจดี"
* effectiveDateTime = "2018-03-11T12:30:02+07:00"
* valueString = "WNL"

Instance: observation-vital-neu1
InstanceOf: $SD_Observation_PhysicalNeuro
Title: "ตัวอย่าง Observation: การตรวจ Neuro"
Description: "Physical findings of Nervous system"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#exam "Exam"
  * text = "Exam"
* code
  * coding[code43Plus] = $LNC#8705-6 "Physical findings of Nervous system"
  * text = "Physical findings of Nervous system"
* subject = Reference(Patient/patient-patient4) "นาง สมควร ใจดี"
* effectiveDateTime = "2018-03-11T12:30:02+07:00"
* valueString = "WNL"

Instance: observation-vital-misc1
InstanceOf: $SD_Observation_PhysicalMisc
Title: "ตัวอย่าง Observation: การตรวจอื่น ๆ"
Description: "Miscellaneous Physical findings"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#exam "Exam"
  * text = "Exam"
* code
  * coding[code43Plus] = $LNC#29544-4 "Physical findings"
  * text = "Physical findings"
* subject = Reference(Patient/patient-patient4) "นาง สมควร ใจดี"
* effectiveDateTime = "2018-03-11T12:30:02+07:00"
* valueString = "WNL"