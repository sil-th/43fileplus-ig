Instance: DisabilityCondition1
InstanceOf: Condition
Title: "ความพิการของผู้ป่วยรายที่ 3"
Description: "แสดงการประวัติความพิการของผู้ป่วยรายที่ 3"
Usage: #example
* extension[0]
  * url = $EX_HL7_ConditionDueTo
  * valueCodeableConcept
    * coding[0] = $CS_THCC_DisabilityReason#3 "ความพิการจากโรค"
    * text = "ความพิการจากโรค"
* extension[+]
  * url = $EX_TH_DisabilityType
  * valueCodeableConcept
    * coding[0] = $CS_THCC_DisabilityType#3 "ความพิการการเคลื่อนไหวหรือทางร่างกาย"
    * text = "ความพิการการเคลื่อนไหวหรือทางร่างกาย"
* category.coding = $CS_HL7_ConditionCategory#problem-list-item "Problem List Item"
* severity = $SCT#6736007 "Moderate"
* code
  * coding[0] = $ICD10#I63.9 "Cerebral infarction, unspecified"
  * text = "Cerebral infarction"
* subject = Reference(Patient/Patient3) "นาง สมปอง ใจดี"
* onsetDateTime = "2018-01-01T12:30:02+07:00" 
* recordedDate = "2019-01-01T12:30:02+07:00"
* recorder = Reference(Practitioner/PractitionerDoctor1) "พญ. สมหญิง จริงใจ"