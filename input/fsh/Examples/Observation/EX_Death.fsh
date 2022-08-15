// Inspired from http://build.fhir.org/ig/HL7/vrdr/StructureDefinition-vrdr-cause-of-death-part1.html
// They use Observation for cause of death report

Instance: observation-cause-of-death1
InstanceOf: Observation
Title: "ตัวอย่าง Observation: สาเหตุการเสียชีวิตของผู้ป่วยรายที่ 3"
Description: "แสดงการเสียชีวิตจาก cardiac arrest"
Usage: #example
* status = #final
* code = $LNC#79378-6 "Cause of death"
* subject = Reference(Patient/patient-patient3)
* effectivePeriod.start = "2022-04-25T12:30:02+07:00"
* valueCodeableConcept
  * coding[0] = $SCT#410430005 "Cardiorespiratory arrest (disorder)"
  * coding[+] = $ICD10#I46.1 "Sudden cardiac death, so described"
  * text = "Cardiorespiratory arrest"
* component[0]
  * code = $SCT#272396007 "Ranked categories (qualifier value)"
  * valueInteger = 1

Instance: observation-cause-of-death2
InstanceOf: Observation
Title: "ตัวอย่าง Observation: รหัสโรคหรือภาวะอื่นที่เป็นเหตุหนุน"
Description: "แสดงการมีภาวะความดันโลหิตสูงวิกฤติหนุ่น"
Usage: #example
* status = #final
* code = $LNC#69441-4 "Other significant causes or conditions of death"
* subject = Reference(Patient/patient-patient3)
* effectivePeriod.start = "2022-04-25T12:30:02+07:00"
* valueCodeableConcept
  * coding[0] = $SCT#706882009 "Hypertensive crisis (disorder)"
  * text = "Hypertensive crisis"