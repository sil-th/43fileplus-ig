Instance: AccidentEncounter1
InstanceOf: Encounter
Title: "ตัวอย่าง Encounter: การรับบริการแผนกฉุกเฉิน"
Description: "แสดงการรับบริการแผนกฉุกเฉินโดยทั่วไป"
Usage: #example
* identifier[0]
  * use = #secondary
  * type = $CS_HL7_IdentifierType#VN "Visit number"
  * system = $ID_LO_VN
  * value = "65-XXXXX"
* status = #finished
* class = $CS_HL7_EncounterClass#EMER "emergency"
* priority
  * coding[0] = $CS_HL7_Priority#EM "emergency"
  * coding[+] = $CS_THCC_AccidentPriority#2 "emergency"
  * text = "emergency"
* subject = Reference(Patient/Patient4) "นาง สมควร ใจดี"
* participant[0]
  * type
    * coding[0] = $CS_HL7_ParticipantType#PPRF "primary performer"
    * coding[+] = $CS_THCC_ParticipantType#PPRF "แพทย์เจ้าของคนไข้"
  * individual = Reference(Practitioner/PractitionerDoctor1) "พญ. สมหญิง จริงใจ"
* period
  * start = "2022-03-01T12:30:02+07:00"
  * end = "2022-03-01T14:30:02+07:00"
* diagnosis[0]
  * condition = Reference(Condition/AccidentCondition1)
  * use = $CS_HL7_DiagRole#AD "Admission diagnosis"
* account = Reference(Account/AccountAccidentEncounter1)
* hospitalization
  * extension[0]
    * url = $EX_TH_DischargeStatus 
    * valueCodeableConcept = $CS_THCC_DischargeStatus#3 "ส่งต่อไปยังสถานพยาบาลอื่น"
  * admitSource
    * coding[0] = $CS_HL7_AdmitSource#other "Other"
    * coding[+] = $CS_THCC_AccidentAdmitSource#2 "ได้รับการส่งตัวโดย First responder"
    * text = "ได้รับการส่งตัวโดย First responder"
  * destination = Reference(Organization/OrganizationThird)
    * insert GeneralReference($ID_Hcode, "XXXXX", "โรงพยาบาลตติยภูมิ")
    * extension[0]
      * url = $EX_TH_ReferOutID
      * valueReference = Reference(ServiceRequest/ReferOutAccidentEncounter1)
        * insert GeneralReference($ID_LO_Refer, "XXXXX", "ใบส่งตัวเลขที่ XXXXX")
* serviceProvider = Reference(Organization/OrganizationMain)
  * insert GeneralReference($ID_Hcode, "XXXXX", "โรงพยาบาลตัวอย่าง")



// Refer Out
Instance: ReferOutAccidentEncounter1
InstanceOf: ServiceRequest
Title: "ตัวอย่าง ServiceRequest: การส่งต่อผู้ป่วยหลังจากรับบริการแผนกฉุกเฉิน"
Description: "การส่งต่อผู้ป่วยหลังจากรับบริการแผนกฉุกเฉิน"
Usage: #example
* identifier[0]
  * use = #secondary
  * system = $ID_LO_Refer
  * value = "XXXXXXXX"
* status = #active
* intent = #order
* code = $CS_THCC_ReferReason#1 "เพื่อการวินิจฉัยและรักษา"
* subject = Reference(Patient/Patient4) "นาง สมควร ใจดี"
* encounter = Reference(Encounter/AccidentEncounter1)
* authoredOn = "2022-03-01"
* requester = Reference(Practitioner/PractitionerDoctor1) "พญ. สมหญิง จริงใจ"




// Account
Instance: AccountAccidentEncounter1
InstanceOf: Account
Title: "ตัวอย่าง Account: ข้อมูลทางการเงินของผู้ป่วยมารับบริการแผนกฉุกเฉิน"
Description: "ข้อมูลทางการเงินของผู้ป่วยมารับบริการแผนกฉุกเฉิน"
Usage: #example
* extension[0]
  * url = $CS_THCC_AccidentCoverage
  * valueCodeableConcept = $CS_THCC_AccidentCoverage#V "ใช้ พรบ. ผู้ประสบภัยจากรถ"
* status = #active
* name = "บัญชี นางสมควร ใจดี VN 65-XXXXX"
* subject = Reference(Patient/Patient4) "นาง สมควร ใจดี"
* servicePeriod
  * start = "2022-01-01T12:30:02+07:00"
  * end = "2022-01-01T14:30:02+07:00"
* coverage[0]
  * coverage = Reference(Coverage/CoverageUC) "หลักประกันสุขภาพถ้วนหน้า"
  * priority = 1
* coverage[+]
  * coverage = Reference(Coverage/CoverageSSO) "กองทุนประกันสังคม"
  * priority = 2
* owner = Reference(Organization/OrganizationMain)




