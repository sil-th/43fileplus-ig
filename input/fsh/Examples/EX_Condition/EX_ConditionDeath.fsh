// From http://build.fhir.org/ig/HL7/vrdr/StructureDefinition-vrdr-cause-of-death-part1.html
// They use Observation for cause of death report, but we switch to Condition

Instance: condition-cause-of-death1
InstanceOf: $SD_Condition_Base
Title: "ตัวอย่าง Condition: สาเหตุการเสียชีวิตของผู้ป่วยรายที่ 3"
Description: "แสดงการเสียชีวิตจาก cardiac arrest"
Usage: #example
* category = $CS_HL7_ConditionCategory#encounter-diagnosis "Encounter Diagnosis"
* code
  * coding[0] = $SCT#410430005 "Cardiorespiratory arrest (disorder)"
  * coding[+] = $ICD10#I46.1 "Sudden cardiac death, so described"
  * text = "2022-04-25T12:30:02+07:00"
* subject = Reference(Patient/patient-patient3)
* recordedDate = "2022-01-01T12:30:02+07:00"
* asserter = Reference(Practitioner/practitioner-doctor1) "พญ. สมหญิง จริงใจ"


Instance: condition-cause-of-death2
InstanceOf: $SD_Condition_Base
Title: "ตัวอย่าง Condition: รหัสโรคหรือภาวะอื่นที่เป็นเหตุหนุน"
Description: "แสดงการมีภาวะความดันโลหิตสูงวิกฤติหนุ่น"
Usage: #example
* category = $CS_HL7_ConditionCategory#encounter-diagnosis "Encounter Diagnosis"
* code
  * coding[0] = $SCT#706882009 "Hypertensive crisis (disorder)"
  * text = "Hypertensive crisis"
* subject = Reference(Patient/patient-patient3)
* recordedDate = "2022-01-01T12:30:02+07:00"
* asserter = Reference(Practitioner/practitioner-doctor1) "พญ. สมหญิง จริงใจ"