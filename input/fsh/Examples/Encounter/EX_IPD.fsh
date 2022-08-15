Instance: IpdEncounter1
InstanceOf: Encounter
Title: "ตัวอย่าง Encounter: การรับบริการ IPD"
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