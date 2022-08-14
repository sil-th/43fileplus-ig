Instance: LipidDiagnosticReport
InstanceOf: DiagnosticReport
Title: "ผลการตรวจทางห้องปฏิบัติการ Lipid Profile"
Description: "ผลการตรวจทางห้องปฏิบัติการ Lipid Profile"
Usage: #example
* identifier
  * system = $ID_LO_Lab
  * value = "XXXXXX"
* status = #final
* category = $CS_HL7_DiagServiceCat#CH "Chemistry"
* code
  * coding[0] = $LNC#57698-3 "Lipid panel with direct LDL - Serum or Plasma"
  * coding[+] = $CS_TMLT#320259 "Lipid profile (Cholesterol, HDL-chol, LDL-chol, TG)"
  * coding[+] = $CS_ICD10TM_Lab#0544002 "Lipids (total), serum/plasma\" \"การตรวจหา ลิปิด (ทั้งหมด)  ในซีรั่ม / พลาสม่า"
  * text = "Lipid Profile"
* subject = Reference(Patient/Patient4) "นาง สมควร ใจดี"
* issued = "2022-04-01T12:30:02+07:00"
* performer = Reference(Organization/OrganizationMain)
  * insert GeneralReference($ID_Hcode, "XXXXX", "โรงพยาบาลตัวอย่าง")
* specimen = Reference(SpecimenLipid)
* result[0] = Reference(ObsChol)
* result[+] = Reference(ObsTG)
* result[+] = Reference(ObsLDL)
* result[+] = Reference(ObsHDL)



Instance: ObsChol
InstanceOf: Observation
Title: "ผลการตรวจ Cholesterol"
Description: "ผลการตรวจ Cholesterol"
Usage: #example
* status = #final
* code
  * coding[0] = $LNC#2093-3 "Cholesterol [Mass/volume] in Serum or Plasma"
  * coding[+] = $CS_TMLT#320070 "Cholesterol [mg/dL] in Serum or Plasma"
  * coding[+] = $CS_THCC_2DigitLab#07 "ตรวจ Total Cholesterol"
  * text = "Cholesterol"
* subject = Reference(Patient/Patient4) "นาง สมควร ใจดี"
* valueQuantity = 200 'mg/dL' "mg/dL"
* interpretation = $CS_HL7_ObsInterpret#N "Normal"
* note.text = "หมายเหตุเพิ่มเติม (ถ้ามี)"
* referenceRange
  * high = 200 'mg/dL' "mg/dL"


Instance: ObsTG
InstanceOf: Observation
Title: "ผลการตรวจ Triglyceride"
Description: "ผลการตรวจ Triglyceride"
Usage: #example
* status = #final
* code
  * coding[0] = $LNC#2571-8 "Triglyceride [Mass/volume] in Serum or Plasma"
  * coding[+] = $CS_TMLT#320072 "Triglyceride [mg/dL] in Serum or Plasma"
  * coding[+] = $CS_THCC_2DigitLab#06 "ตรวจ Triglyceride"
  * text = "Triglyceride"
* subject = Reference(Patient/Patient4) "นาง สมควร ใจดี"
* valueQuantity = 80 'mg/dL' "mg/dL"
* interpretation = $CS_HL7_ObsInterpret#N "Normal"
* note.text = "หมายเหตุเพิ่มเติม (ถ้ามี)"
* referenceRange
  * high = 150 'mg/dL' "mg/dL"


Instance: ObsLDL
InstanceOf: Observation
Title: "ผลการตรวจ LDL"
Description: "ผลการตรวจ LDL"
Usage: #example
* status = #final
* code
  * coding[0] = $LNC#13457-7 "Cholesterol in LDL [Mass/volume] in Serum or Plasma by calculation"
  * coding[+] = $CS_TMLT#320293 "Cholesterol in LDL [mg/dL] in Serum or Plasma by calculation"
  * coding[+] = $CS_THCC_2DigitLab#09 "ตรวจ LDL Cholesterol"
  * text = "LDL"
* subject = Reference(Patient/Patient4) "นาง สมควร ใจดี"
* valueQuantity = 80 'mg/dL' "mg/dL"
* interpretation = $CS_HL7_ObsInterpret#N "Normal"
* note.text = "หมายเหตุเพิ่มเติม (ถ้ามี)"
* referenceRange
  * high = 160 'mg/dL' "mg/dL"


Instance: ObsHDL
InstanceOf: Observation
Title: "ผลการตรวจ HDL"
Description: "ผลการตรวจ HDL"
Usage: #example
* status = #final
* code
  * coding[0] = $LNC#2085-9 "Cholesterol in HDL [Mass/volume] in Serum or Plasma"
  * coding[+] = $CS_TMLT#320071 "Cholesterol in HDL [mg/dL] in Serum or Plasma"
  * coding[+] = $CS_THCC_2DigitLab#08 "ตรวจ HDL Cholesterol"
  * text = "HDL"
* subject = Reference(Patient/Patient4) "นาง สมควร ใจดี"
* valueQuantity = 60 'mg/dL' "mg/dL"
* interpretation = $CS_HL7_ObsInterpret#N "Normal"
* note.text = "หมายเหตุเพิ่มเติม (ถ้ามี)"
* referenceRange
  * low = 40 'mg/dL' "mg/dL"



Instance: SpecimenLipid
InstanceOf: Specimen
Title: "สิ่งส่งตรวจ Lipid Profile"
Description: "สิ่งส่งตรวจ Lipid Profile"
Usage: #example
* type = $SCT#119364003 "Serum specimen"
* subject = Reference(Patient/Patient4) "นาง สมควร ใจดี"
* receivedTime = "2022-04-01T13:30:02+07:00"
* collection
  * collectedDateTime = "2022-04-01T14:30:02+07:00"
* processing
  * timeDateTime = "2022-04-01T15:30:02+07:00"





