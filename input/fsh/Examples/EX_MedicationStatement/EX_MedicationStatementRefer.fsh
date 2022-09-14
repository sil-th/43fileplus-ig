Instance: medicationstatement-refer-example1
InstanceOf: $SD_MedicationStatement_Base
Title: "ตัวอย่าง MedicationStatement: ประวัติการได้รับยา ของผู้ป่วยที่ได้รับการส่งต่อ"
Description: "แสดงประวัติการได้รับยา ของผู้ป่วยที่ได้รับการส่งต่อ"
Usage: #example
* extension
  * url = $EX_TH_MedicationRequestSource
  * valueCodeableConcept = $CS_Std15_MedicationSource#1 "ยาที่ให้จาก รพ.ต้นทาง"
* status = #completed
* medicationCodeableConcept
  * coding[0] = $CS_TMT#227162 "AAMOX 500 (ห้างขายยาตราเจ็ดดาว) (amoxicillin 500 mg) film-coated tablet, 1 tablet"
  * coding[+] = $CS_24Drug#100176000004493120381620 "AMOXICILLIN 500 MG TABLET, ORAL"
  * coding[+] = $ID_LO_Drug#1233 "Local code amoxycillin 500 mg"
  * text = "Amoxycillin 500 mg"
* subject = Reference(Patient/patient-patient4) "นาง สมควร ใจดี"
* effectivePeriod
  * start = "2021-03-24"
  * end = "2021-03-31"
* dateAsserted = "2021-03-31T12:30:02+07:00"
* informationSource = Reference(Organization/organization-main) "โรงพยาบาลตัวอย่าง"
* dosage
  * text = "1 tablet three times per day"
  * timing 
    * repeat
      * frequency = 1
      * period = 1
      * periodUnit = #d
  * route = $SCT#260548002 "Oral"
  * doseAndRate
    * doseQuantity
      * value = 1
      * unit = "Tab"
      * system = $CS_HL7_DoseForm
      * code = #TAB
  
