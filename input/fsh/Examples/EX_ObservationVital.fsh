Instance: ObsVitalSignsPanel
InstanceOf: Observation
Title: "Vital Signs Panel"
Description: "รวมการตรวจสัญญาณชีพทั้งหมด"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#vital-signs "Vital Signs"
  * text = "Vital Signs"
* code
  * coding[0] = $LNC#85353-1 "Vital signs, weight, height, head circumference, oxygen saturation and BMI panel"
  * text = "การตรวจสัญญาณชีพ"
* subject = Reference(Patient/Patient4) "นาง สมควร ใจดี"
* effectiveDateTime = "2018-03-11T12:30:02+07:00"
* interpretation
  * coding[0] = $CS_HL7_ObsInterpret#N "Normal"
  * text = "Normal"
* hasMember[0] = Reference(Observation/ObsWt01)
* hasMember[+] = Reference(Observation/ObsHt01)
* hasMember[+] = Reference(Observation/ObsBT01)
* hasMember[+] = Reference(Observation/ObsBp01)
* hasMember[+] = Reference(Observation/ObsHR01)
* hasMember[+] = Reference(Observation/ObsRR01)
* hasMember[+] = Reference(Observation/ObsWC01)
* hasMember[+] = Reference(Observation/ObsHC01)



Instance: ObsWt01
InstanceOf: Observation
Title: "น้ำหนักผู้ป่วยแรกรับ"
Description: "Body weight"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#vital-signs "Vital Signs"
  * text = "Vital Signs"
* code
  * coding[0] = $LNC#29463-7 "Body weight"
  * text = "Body weight"
* subject = Reference(Patient/Patient4) "นาง สมควร ใจดี"
* effectiveDateTime = "2018-03-11T12:30:02+07:00"
* valueQuantity
  * value = 80
  * unit = "kg"
  * system = $UCUM
  * code = #kg


Instance: ObsHt01
InstanceOf: Observation
Title: "ส่วนสูงผู้ป่วยแรกรับ"
Description: "Body height"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#vital-signs "Vital Signs"
  * text = "Vital Signs"
* code
  * coding[0] = $LNC#8302-2 "Body height"
  * text = "Body height"
* subject = Reference(Patient/Patient4) "นาง สมควร ใจดี"
* effectiveDateTime = "2018-03-11T12:30:02+07:00"
* valueQuantity
  * value = 170
  * unit = "cm"
  * system = $UCUM
  * code = #cm


Instance: ObsBT01
InstanceOf: Observation
Title: "อุณหภูมิร่างกายแรกรับ"
Description: "Body temperature"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#vital-signs "Vital Signs"
  * text = "Vital Signs"
* code
  * coding[0] = $LNC#8310-5 "Body temperature"
  * text = "Body temperature"
* subject = Reference(Patient/Patient4) "นาง สมควร ใจดี"
* effectiveDateTime = "2018-03-11T12:30:02+07:00"
* valueQuantity
  * value = 37
  * unit = "Celsius"
  * system = $UCUM
  * code = #Cel



Instance: ObsBp01
InstanceOf: Observation
Title: "ความดันโลหิต ซิสโตลิก แรกรับ"
Description: "Blood pressure panel with all children optional"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#vital-signs "Vital Signs"
  * text = "Vital Signs"
* code
  * coding[0] = $LNC#85354-9 "Blood pressure panel with all children optional"
  * text = "Blood pressure panel with all children optional"
* subject = Reference(Patient/Patient4) "นาง สมควร ใจดี"
* effectiveDateTime = "2018-03-11T12:30:02+07:00"
* component[0]
  * code
    * coding[0] = $LNC#8480-6 "Systolic blood pressure"
    * text = "Systolic blood pressure"
  * valueQuantity
    * value = 120
    * unit = "mm[Hg]"
    * system = $UCUM
    * code = #mm[Hg]
* component[+]
  * code
    * coding[0] = $LNC#8462-4 "Diastolic blood pressure"
    * text = "Diastolic blood pressure"
  * valueQuantity
    * value = 80
    * unit = "mm[Hg]"
    * system = $UCUM
    * code = #mm[Hg]


Instance: ObsHR01
InstanceOf: Observation
Title: "อัตราการเต้นของชีพจร"
Description: "Heart rate"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#vital-signs "Vital Signs"
  * text = "Vital Signs"
* code
  * coding[0] = $LNC#8867-4 "Heart rate"
  * text = "Heart rate"
* subject = Reference(Patient/Patient4) "นาง สมควร ใจดี"
* effectiveDateTime = "2018-03-11T12:30:02+07:00"
* valueQuantity
  * value = 80
  * unit = "/min"
  * system = $UCUM
  * code = #/min



Instance: ObsRR01
InstanceOf: Observation
Title: "อัตราการหายใจ"
Description: "Respiratory rate"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#vital-signs "Vital Signs"
  * text = "Vital Signs"
* code
  * coding[0] = $LNC#9279-1 "Respiratory rate"
  * text = "Respiratory rate"
* subject = Reference(Patient/Patient4) "นาง สมควร ใจดี"
* effectiveDateTime = "2018-03-11T12:30:02+07:00"
* valueQuantity
  * value = 16
  * unit = "/min"
  * system = $UCUM
  * code = #/min


Instance: ObsWC01
InstanceOf: Observation
Title: "รอบเอว"
Description: "Waist Circumference at umbilicus by Tape measure"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#vital-signs "Vital Signs"
  * text = "Vital Signs"
* code
  * coding[0] = $LNC#8280-0 "Waist Circumference at umbilicus by Tape measure"
  * text = "Waist Circumference at umbilicus by Tape measure"
* subject = Reference(Patient/Patient4) "นาง สมควร ใจดี"
* effectiveDateTime = "2018-03-11T12:30:02+07:00"
* valueQuantity
  * value = 80
  * unit = "cm"
  * system = $UCUM
  * code = #cm



Instance: ObsHC01
InstanceOf: Observation
Title: "รอบสะโพก"
Description: "Hip circumference"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#vital-signs "Vital Signs"
  * text = "Vital Signs"
* code
  * coding[0] = $LNC#62409-8 "PhenX - hip circumference protocol"
  * text = "Hip circumference"
* subject = Reference(Patient/Patient4) "นาง สมควร ใจดี"
* effectiveDateTime = "2018-03-11T12:30:02+07:00"
* valueQuantity
  * value = 120
  * unit = "cm"
  * system = $UCUM
  * code = #cm




Instance: ObsPE01
InstanceOf: Observation
Title: "การตรวจร่างกาย"
Description: "Physical findings"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#exam "Exam"
  * text = "Exam"
* code
  * coding[0] = $LNC#55286-9 "Physical exam by body areas"
  * text = "Physical exam by body areas"
* subject = Reference(Patient/Patient4) "นาง สมควร ใจดี"
* effectiveDateTime = "2018-03-11T12:30:02+07:00"
* hasMember[0] = Reference(Observation/ObsGA01)
* hasMember[+] = Reference(Observation/ObsHeent01)
* hasMember[+] = Reference(Observation/ObsHeart01)
* hasMember[+] = Reference(Observation/ObsChest01)
* hasMember[+] = Reference(Observation/ObsAbd01)
* hasMember[+] = Reference(Observation/ObsExt01)
* hasMember[+] = Reference(Observation/ObsNeu01)
* hasMember[+] = Reference(Observation/ObsMisc01)

Instance: ObsGA01
InstanceOf: Observation
Title: "การตรวจ General Appearance"
Description: "General appearance"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#exam "Exam"
  * text = "Exam"
* code
  * coding[0] = $LNC#32434-3 "General appearance"
  * text = "General appearance"
* subject = Reference(Patient/Patient4) "นาง สมควร ใจดี"
* effectiveDateTime = "2018-03-11T12:30:02+07:00"
* valueString = "WNL"



Instance: ObsHeent01
InstanceOf: Observation
Title: "การตรวจ HEENT"
Description: "Physical findings of Head"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#exam "Exam"
  * text = "Exam"
* code
  * coding[0] = $LNC#8701-5 "Physical findings of Head"
  * text = "Physical findings of Head"
* subject = Reference(Patient/Patient4) "นาง สมควร ใจดี"
* effectiveDateTime = "2018-03-11T12:30:02+07:00"
* valueString = "WNL"

Instance: ObsHeart01
InstanceOf: Observation
Title: "การตรวจ Heart"
Description: "Physical findings of Heart"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#exam "Exam"
  * text = "Exam"
* code
  * coding[0] = $LNC#8702-3 "Physical findings of Heart"
  * text = "Physical findings of Heart"
* subject = Reference(Patient/Patient4) "นาง สมควร ใจดี"
* effectiveDateTime = "2018-03-11T12:30:02+07:00"
* valueString = "WNL"

Instance: ObsChest01
InstanceOf: Observation
Title: "การตรวจ Chest & Lung"
Description: "Physical findings of Thorax and Lungs"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#exam "Exam"
  * text = "Exam"
* code
  * coding[0] = $LNC#8710-6 "Physical findings of Thorax and Lungs"
  * text = "Physical findings of Thorax and Lungs"
* subject = Reference(Patient/Patient4) "นาง สมควร ใจดี"
* effectiveDateTime = "2018-03-11T12:30:02+07:00"
* valueString = "WNL"

Instance: ObsAbd01
InstanceOf: Observation
Title: "การตรวจ Abdomen"
Description: "Physical findings of Abdomen"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#exam "Exam"
  * text = "Exam"
* code
  * coding[0] = $LNC#8694-2 "Physical findings of Abdomen"
  * text = "Physical findings of Abdomen"
* subject = Reference(Patient/Patient4) "นาง สมควร ใจดี"
* effectiveDateTime = "2018-03-11T12:30:02+07:00"
* valueString = "WNL"

Instance: ObsExt01
InstanceOf: Observation
Title: "การตรวจ Extremities"
Description: "Physical findings of Extremities"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#exam "Exam"
  * text = "Exam"
* code
  * coding[0] = $LNC#8703-1 "Physical findings of Extremities"
  * text = "Physical findings of Extremities"
* subject = Reference(Patient/Patient4) "นาง สมควร ใจดี"
* effectiveDateTime = "2018-03-11T12:30:02+07:00"
* valueString = "WNL"

Instance: ObsNeu01
InstanceOf: Observation
Title: "การตรวจ Neuro"
Description: "Physical findings of Nervous system"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#exam "Exam"
  * text = "Exam"
* code
  * coding[0] = $LNC#8705-6 "Physical findings of Nervous system"
  * text = "Physical findings of Nervous system"
* subject = Reference(Patient/Patient4) "นาง สมควร ใจดี"
* effectiveDateTime = "2018-03-11T12:30:02+07:00"
* valueString = "WNL"

Instance: ObsMisc01
InstanceOf: Observation
Title: "การตรวจอื่น ๆ"
Description: "Miscellaneous Physical findings"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#exam "Exam"
  * text = "Exam"
* code
  * coding[0] = $LNC#29544-4 "Physical findings"
  * text = "Physical findings"
* subject = Reference(Patient/Patient4) "นาง สมควร ใจดี"
* effectiveDateTime = "2018-03-11T12:30:02+07:00"
* valueString = "WNL"