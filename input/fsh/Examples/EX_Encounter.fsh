Instance: OpdEncounter1
InstanceOf: Encounter
Title: "การรับบริการ OPD"
Description: "แสดงการรับบริการ OPD โดยทั่วไป"
Usage: #example
* extension[0]
  * url = $EX_TH_ServiceTypeTH 
  * valueCodeableConcept = $CS_THCC_ServiceTypeTH#0 "Refer ในบัญชีเครือข่ายเดียวกัน"
* identifier[0]
  * use = #secondary
  * type = $CS_HL7_IdentifierType#VN "Visit number"
  * system = $ID_LO_VN
  * value = "65-XXXXX"
* status = #finished
* class = $CS_HL7_EncounterClass#AMB "ambulatory"
* priority
  * coding[0] = $CS_HL7_Priority#R "routine"
  * coding[+] = $CS_THCC_ServicePriority#1 "ปกติ"
  * text = "ปกติ"
* subject = Reference(Patient/Patient4) "นาง สมควร ใจดี"
  * extension
    * url = $EX_TH_PatientLocationType 
    * valueCodeableConcept = $CS_THCC_PatientLocationType#1 "ในเขตรับผิดชอบ"
* basedOn = Reference(ServiceRequest/ReferInOpdEncounter1)
* participant[0]
  * type
    * coding[0] = $CS_HL7_ParticipantType#PPRF "primary performer"
    * coding[+] = $CS_THCC_ParticipantType#PPRF "แพทย์เจ้าของคนไข้"
  * individual = Reference(Practitioner/PractitionerDoctor1) "พญ. สมหญิง จริงใจ"
* period
  * extension
    * url = $EX_TH_ServiceHour 
    * valueCodeableConcept = $CS_THCC_ServiceHour#1 "ในเวลาราชการ"
  * start = "2022-01-01T12:30:02+07:00"
  * end = "2022-01-01T14:30:02+07:00"
* reasonCode[0]
  * coding[0] = $SCT#386661006 "Fever"
  * text = "มีไข้ 3 วัน"
* account = Reference(Account/AccountOpdEncounter1)
* hospitalization
  * extension[0]
    * url = $EX_TH_DischargeStatus 
    * valueCodeableConcept = $CS_THCC_DischargeStatus#3 "ส่งต่อไปยังสถานพยาบาลอื่น"
  * extension[+]
    * url = $EX_TH_DischargeInstruction
    * valueAnnotation
      * text = "ใส่คำแนะนำหลังการเข้ารับบริการ"
  * origin = Reference(Organization/OrganizationSecond)
    * insert GeneralReference($ID_Hcode, "XXXXX", "โรงพยาบาลเครือข่าย")
  * admitSource
    * coding[0] = $CS_HL7_AdmitSource#gp "General Practitioner referral"
    * coding[+] = $CS_THCC_AdmitSource#3 "ได้รับการส่งต่อจากสถานพยาบาลอื่น"
    * text = "มารับบริการเอง"
  * destination = Reference(Organization/OrganizationThird)
    * insert GeneralReference($ID_Hcode, "XXXXX", "โรงพยาบาลตติยภูมิ")
* location
  * extension
    * url = $EX_TH_ServiceLocationType 
    * valueCodeableConcept = $CS_THCC_ServiceLocationType#1 "ในสถานบริการ"
  * location = Reference(Location/OpdGPClinic1) "OPD GP Clinic 1 โรงพยาบาลตัวอย่าง"
  * physicalType = $CS_THCC_ServiceLocation#1 "ในสถานบริการ"
* serviceProvider = Reference(Organization/OrganizationMain)
  * insert GeneralReference($ID_Hcode, "XXXXX", "โรงพยาบาลตัวอย่าง")
  * extension
    * url = $EX_TH_ProviderType 
    * valueCodeableConcept = $CS_THCC_ProviderType#1 "Main Contractor"



// Refer In
Instance: ReferInOpdEncounter1
InstanceOf: ServiceRequest
Title: "การส่งต่อผู้ป่วยมารับบริการ OPD"
Description: "แสดงการส่งต่อผู้ป่วยมารับบริการ OPD"
Usage: #example
* status = #active
* intent = #order
* category = $SCT#103696004 "Patient referral to specialist"
* code = $CS_THCC_ReferReason#1 "เพื่อการวินิจฉัยและรักษา"
* subject = Reference(Patient/Patient4) "นาง สมควร ใจดี"
* authoredOn = "2021-12-01"
* requester = Reference(Practitioner/PractitionerDoctor2) "พญ. สมศรี จริงใจ"


// Refer Out
Instance: ReferOutOpdEncounter1
InstanceOf: ServiceRequest
Title: "การส่งต่อผู้ป่วยมารับบริการ OPD"
Description: "แสดงการส่งต่อผู้ป่วยมารับบริการ OPD"
Usage: #example
* extension[0]
  * url = $EX_TH_ReferOutcome 
  * valueCodeableConcept = $CS_THCC_ReferOutcome#1 "สถานบริการปลายทางรับการส่งต่อผู้ป่วย"
* status = #active
* intent = #order
* category = $SCT#703978000 "Referral to primary care service"
* code = $CS_THCC_ReferReason#4 "เพื่อการดูแลต่อใกล้บ้าน"
* subject = Reference(Patient/Patient4) "นาง สมควร ใจดี"
* encounter = Reference(Encounter/OpdEncounter1)
* authoredOn = "2022-01-01"
* requester = Reference(Practitioner/PractitionerDoctor1) "พญ. สมหญิง จริงใจ"


// Account
Instance: AccountOpdEncounter1
InstanceOf: Account
Title: "ข้อมูลทางการเงินของผู้ป่วยมารับบริการ OPD"
Description: "ข้อมูลทางการเงินของผู้ป่วยมารับบริการ OPD"
Usage: #example
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




Instance: SurvEncounter1
InstanceOf: Encounter
Title: "การรับบริการ Surveillance"
Description: "แสดงการรับบริการของผู้ป่วยด้วยโรคที่ต้องเฝ้าระวัง"
Usage: #example
* identifier[0]
  * use = #secondary
  * type = $CS_HL7_IdentifierType#VN "Visit number"
  * system = $ID_LO_VN
  * value = "65-XXXXX"
* identifier[+]
  * use = #secondary
  * type = $CS_HL7_IdentifierType#AN "Admission number"
  * system = $ID_LO_AN
  * value = "65-XXXXX"
* status = #finished
* class = $CS_HL7_EncounterClass#AMB "ambulatory"
* priority
  * coding[0] = $CS_HL7_Priority#R "routine"
  * coding[+] = $CS_THCC_ServicePriority#1 "ปกติ"
  * text = "ปกติ"
* subject = Reference(Patient/Patient4) "นาง สมควร ใจดี"
  * extension
    * url = $EX_TH_PatientLocationType 
    * valueCodeableConcept = $CS_THCC_PatientLocationType#1 "ในเขตรับผิดชอบ"
* participant[0]
  * type
    * coding[0] = $CS_HL7_ParticipantType#PPRF "primary performer"
    * coding[+] = $CS_THCC_ParticipantType#PPRF "แพทย์เจ้าของคนไข้"
  * individual = Reference(Practitioner/PractitionerDoctor1) "พญ. สมหญิง จริงใจ"
* period
  * extension
    * url = $EX_TH_ServiceHour 
    * valueCodeableConcept = $CS_THCC_ServiceHour#1 "ในเวลาราชการ"
  * start = "2022-01-01T12:30:02+07:00"
  * end = "2022-01-01T14:30:02+07:00"
* reasonCode[0]
  * coding[0] = $CS_THCC_SurvGroup#0005 "ไข้ มีผื่น ปวดกล้ามเนื้อ ปวดกระดูกหรือข้อ ปวดศรีษะ ปวดกระบอกตา เลือกออกตามผิวหนัง"
* diagnosis[0]
  * condition = Reference(Condition/SurvCondition1)
  * use = $CS_HL7_DiagRole#AD "Admission diagnosis"
* diagnosis[+]
  * condition = Reference(Condition/SurvCondition2)
  * use = $CS_HL7_DiagRole#DD "Discharge diagnosis"
* serviceProvider = Reference(Organization/OrganizationMain)
  * insert GeneralReference($ID_Hcode, "XXXXX", "โรงพยาบาลตัวอย่าง")




Instance: LabEncounter1
InstanceOf: Encounter
Title: "การรับบริการตรวจทางห้องปฏิบัติการ"
Description: "การรับบริการตรวจทางห้องปฏิบัติการ"
Usage: #example
* identifier[0]
  * use = #secondary
  * type = $CS_HL7_IdentifierType#VN "Visit number"
  * system = $ID_LO_VN
  * value = "65-XXXXX"
* identifier[+]
  * use = #secondary
  * type = $CS_HL7_IdentifierType#AN "Admission number"
  * system = $ID_LO_AN
  * value = "65-XXXXX"
* status = #finished
* class = $CS_HL7_EncounterClass#AMB "ambulatory"
* priority
  * coding[0] = $CS_HL7_Priority#R "routine"
  * coding[+] = $CS_THCC_ServicePriority#1 "ปกติ"
  * text = "ปกติ"
* subject = Reference(Patient/Patient4) "นาง สมควร ใจดี"
* period
  * start = "2022-04-01T12:30:02+07:00"
  * end = "2022-04-01T17:30:02+07:00"
* serviceProvider = Reference(Organization/OrganizationMain)
  * insert GeneralReference($ID_Hcode, "XXXXX", "โรงพยาบาลตัวอย่าง")



Instance: IpdEncounter1
InstanceOf: Encounter
Title: "การรับบริการ IPD"
Description: "แสดงการรับบริการ IPD โดยทั่วไป"
Usage: #example
// * extension[0]
//   * url = $EX_TH_ServiceTypeTH 
//   * valueCodeableConcept = $CS_THCC_ServiceTypeTH#0 "Refer ในบัญชีเครือข่ายเดียวกัน"
* identifier[0]
  * use = #secondary
  * type = $CS_HL7_IdentifierType#VN "Visit number"
  * system = $ID_LO_VN
  * value = "65-XXXXX"
* identifier[+]
  * use = #secondary
  * type = $CS_HL7_IdentifierType#VN "Visit number"
  * system = $ID_LO_AN
  * value = "65-XXXXX"
* status = #finished
* class = $CS_HL7_EncounterClass#IMP "inpatient encounter"
* priority
  * coding[0] = $CS_HL7_Priority#R "routine"
  * coding[+] = $CS_THCC_ServicePriority#1 "ปกติ"
  * text = "ปกติ"
* subject = Reference(Patient/Patient4) "นาง สมควร ใจดี"
  * extension
    * url = $EX_TH_PatientLocationType 
    * valueCodeableConcept = $CS_THCC_PatientLocationType#1 "ในเขตรับผิดชอบ"
* basedOn = Reference(ServiceRequest/ReferInOpdEncounter1)
* participant[0]
  * type
    * coding[0] = $CS_HL7_ParticipantType#PPRF "primary performer"
    * coding[+] = $CS_THCC_ParticipantType#PPRF "แพทย์เจ้าของคนไข้"
  * individual = Reference(Practitioner/PractitionerDoctor1) 
    * insert GeneralReference($ID_LO_Provider, "XXXXXXXX", "พญ. สมหญิง จริงใจ")
* period
  * start = "2022-05-01T12:30:02+07:00"
  * end = "2022-05-10T14:30:02+07:00"
* length = 5 'd' "days"
// * account = Reference(Account/AccountIpdEncounter1)
* hospitalization
  * extension[0]
    * url = $EX_TH_IpdDischargeStatus 
    * valueCodeableConcept = $CS_THCC_IpdDischargeStatus#1 "Complete Recovery"
  * extension[+]
    * url = $EX_TH_IpdDischargeType 
    * valueCodeableConcept = $CS_THCC_IpdDischargeType#1 "With Approval"
  // * extension[+]
  //   * url = $EX_TH_DischargeInstruction
  //   * valueAnnotation
  //     * text = "ใส่คำแนะนำหลังการเข้ารับบริการ"
  // * origin = Reference(Organization/OrganizationSecond)
  //   * insert GeneralReference($ID_Hcode, "XXXXX", "โรงพยาบาลเครือข่าย")
  // * admitSource
  //   * coding[0] = $CS_HL7_AdmitSource#gp "General Practitioner referral"
  //   * coding[+] = $CS_THCC_AdmitSource#3 "ได้รับการส่งต่อจากสถานพยาบาลอื่น"
  //   * text = "มารับบริการเอง"
  * destination = Reference(Organization/OrganizationThird)
    * insert GeneralReference($ID_Hcode, "XXXXX", "โรงพยาบาลตติยภูมิ")
* location[0]
  * extension[0]
    * url = $EX_TH_IpdJourney 
    * valueCodeableConcept = $CS_THCC_IpdJourney#first "รหัสแผนกที่รับผู้ป่วย"
  * location
    * identifier
      * system = $ID_LO_DepCode
      * value = "ER"
    * display = "แผนกฉุกเฉิน"
* location[+]
  * extension[0]
    * url = $EX_TH_IpdJourney 
    * valueCodeableConcept = $CS_THCC_IpdJourney#admit "รหัสแผนกที่ส่งผู้ป่วยให้เป็นผู้ป่วยใน (admit clinic)"
  * location
    * identifier
      * system = $ID_LO_DepCode
      * value = "Sx-ward"
    * display = "แผนกศัลยกรรม"
* location[+]
  * extension[0]
    * url = $EX_TH_IpdJourney 
    * valueCodeableConcept = #discharge "รหัสแผนกที่จำหน่ายผู้ป่วย (discharge clinic)"
  * location
    * identifier
      * system = $ID_LO_DepCode
      * value = "Md-ward"
    * display = "แผนกอายุรกรรม"
* serviceProvider = Reference(Organization/OrganizationMain)
  * insert GeneralReference($ID_Hcode, "XXXXX", "โรงพยาบาลตัวอย่าง")
  // * extension
  //   * url = $EX_TH_ProviderType 
  //   * valueCodeableConcept = $CS_THCC_ProviderType#1 "Main Contractor"