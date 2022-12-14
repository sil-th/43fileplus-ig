Instance: encounter-ipd1
InstanceOf: $SD_Encounter_IPD
Title: "ตัวอย่าง Encounter: การรับบริการ IPD"
Description: "แสดงการรับบริการ IPD โดยทั่วไป"
Usage: #example
// * extension[0]
//   * url = $EX_TH_EncounterServiceTypeTH 
//   * valueCodeableConcept = $CS_eClaim_ServiceTypeTH#0 "Refer ในบัญชีเครือข่ายเดียวกัน"
* identifier[0]
  * use = #secondary
  * type
    // * coding[0] = $CS_HL7_IdentifierType#VN "Visit number"
    * coding[0] = $CS_TH_IdentifierType#localVn "เลข Visit Number (VN) ของหน่วยบริการ"
  * system = $ID_LO_VN
  * value = "65-XXXXX"
* identifier[+]
  * use = #secondary
  * type
    // * coding[0] = $CS_HL7_IdentifierType#VN "Visit number"
    * coding[0] = $CS_TH_IdentifierType#localAn "เลข Admission Number (AN) ของหน่วยบริการ"
  * system = $ID_LO_AN
  * value = "65-XXXXX"
* status = #finished
* class = $CS_HL7_EncounterClass#IMP "inpatient encounter"
* priority
  * coding[hl7] = $CS_HL7_Priority#R "routine"
  * coding[43plus] = $CS_43Plus_ServicePriority#1 "ปกติ"
  * text = "ปกติ"
* subject = Reference(Patient/patient-patient4) "นาง สมควร ใจดี"
  * extension
    * url = $EX_TH_EncounterPatientLocationType 
    * valueCodeableConcept = $CS_THCC_PatientLocationType#1 "ในเขตรับผิดชอบ"
* basedOn = Reference(ServiceRequest/servicerequest-refer-in-opd1)
* participant[0]
  * type
    * coding[hl7] = $CS_HL7_ParticipantType#PPRF "primary performer"
    * coding[43plus] = $CS_Meta_ParticipantType#PPRF "แพทย์เจ้าของคนไข้"
  * individual = Reference(Practitioner/practitioner-doctor1) 
    * insert GeneralReference($ID_LO_Provider, "XXXXXXXX", "พญ. สมหญิง จริงใจ")
* period
  * start = "2022-05-01T12:30:02+07:00"
  * end = "2022-05-10T14:30:02+07:00"
* length = 5 'd' "days"
// * account = Reference(Account/Accountencounter-ipd1)
* hospitalization
  * extension[0]
    * url = $EX_TH_EncounterIpdDischargeStatus
    * valueCodeableConcept = $CS_THCC_IpdDischargeStatus#1 "Complete Recovery"
  * extension[+]
    * url = $EX_TH_EncounterIpdDischargeType 
    * valueCodeableConcept = $CS_THCC_IpdDischargeType#1 "With Approval"
  * destination = Reference(Organization/organization-third)
    * insert GeneralReference($ID_Hcode, "XXXXX", "โรงพยาบาลตติยภูมิ")
* location[0]
  * extension[0]
    * url = $EX_TH_EncounterIpdJourney 
    * valueCodeableConcept = $CS_Meta_IpdJourney#first "รหัสแผนกที่รับผู้ป่วย"
  * location
    * identifier
      * type = $CS_TH_IdentifierType#localDep "รหัสประจำแผนก ของหน่วยบริการ"
      * system = $ID_LO_DepCode
      * value = "ER"
    * display = "แผนกฉุกเฉิน"
* location[+]
  * extension[0]
    * url = $EX_TH_EncounterIpdJourney 
    * valueCodeableConcept = $CS_Meta_IpdJourney#admit "รหัสแผนกที่ส่งผู้ป่วยให้เป็นผู้ป่วยใน (admit clinic)"
  * location
    * identifier
      * type = $CS_TH_IdentifierType#localDep "รหัสประจำแผนก ของหน่วยบริการ"
      * system = $ID_LO_DepCode
      * value = "Sx-ward"
    * display = "แผนกศัลยกรรม"
* location[+]
  * extension[0]
    * url = $EX_TH_EncounterIpdJourney 
    * valueCodeableConcept = $CS_Meta_IpdJourney#discharge "รหัสแผนกที่จำหน่ายผู้ป่วย (discharge clinic)"
  * location
    * identifier
      * type = $CS_TH_IdentifierType#localDep "รหัสประจำแผนก ของหน่วยบริการ"
      * system = $ID_LO_DepCode
      * value = "Md-ward"
    * display = "แผนกอายุรกรรม"
* serviceProvider = Reference(Organization/organization-main)
  * insert GeneralReference($ID_Hcode, "XXXXX", "โรงพยาบาลตัวอย่าง")



Instance: encounter-ipd2
InstanceOf: $SD_Encounter_IPD
Title: "ตัวอย่าง Encounter: การรับบริการ IPD แสดงการลากลับบ้าน"
Description: "แสดงการรับบริการ IPD โดยทั่วไป"
Usage: #example
* extension[0]
  * url = $EX_TH_EncounterLeaveDay
  * extension[0]
    * url = "id"
    * valueString = "XXXX"
  * extension[+]
    * url = "leaveDate"
    * valueDateTime = "2022-05-02"
  * extension[+]
    * url = "comeBack"
    * valueDateTime = "2022-05-03"
  * extension[+]
    * url = "duration"
    * valueDuration = 1 'd' "day"
* identifier[0]
  * use = #secondary
  * type
    // * coding[0] = $CS_HL7_IdentifierType#VN "Visit number"
    * coding[0] = $CS_TH_IdentifierType#localVn "เลข Visit Number (VN) ของหน่วยบริการ"
  * system = $ID_LO_VN
  * value = "65-XXXXX"
* identifier[+]
  * use = #secondary
  * type
    // * coding[0] = $CS_HL7_IdentifierType#VN "Visit number"
    * coding[0] = $CS_TH_IdentifierType#localAn "เลข Admission Number (AN) ของหน่วยบริการ"
  * system = $ID_LO_AN
  * value = "65-XXXXX"
* status = #finished
* class = $CS_HL7_EncounterClass#IMP "inpatient encounter"
* priority
  * coding[hl7] = $CS_HL7_Priority#R "routine"
  * coding[43plus] = $CS_43Plus_ServicePriority#1 "ปกติ"
  * text = "ปกติ"
* subject = Reference(Patient/patient-patient4) "นาง สมควร ใจดี"
* participant[0]
  * type
    * coding[hl7] = $CS_HL7_ParticipantType#PPRF "primary performer"
    * coding[43plus] = $CS_Meta_ParticipantType#PPRF "แพทย์เจ้าของคนไข้"
  * individual = Reference(Practitioner/practitioner-doctor1) 
    * insert GeneralReference($ID_LO_Provider, "XXXXXXXX", "พญ. สมหญิง จริงใจ")
* period
  * start = "2022-05-01T12:30:02+07:00"
  * end = "2022-05-10T14:30:02+07:00"
* length = 5 'd' "days"
* hospitalization
  * extension[0]
    * url = $EX_TH_EncounterIpdDischargeStatus
    * valueCodeableConcept = $CS_THCC_IpdDischargeStatus#1 "Complete Recovery"
  * extension[+]
    * url = $EX_TH_EncounterIpdDischargeType 
    * valueCodeableConcept = $CS_THCC_IpdDischargeType#1 "With Approval"
  * destination = Reference(Organization/organization-third)
    * insert GeneralReference($ID_Hcode, "XXXXX", "โรงพยาบาลตติยภูมิ")
* location[0]
  * extension[0]
    * url = $EX_TH_EncounterIpdJourney 
    * valueCodeableConcept = $CS_Meta_IpdJourney#first "รหัสแผนกที่รับผู้ป่วย"
  * location
    * identifier
      * type = $CS_TH_IdentifierType#localDep "รหัสประจำแผนก ของหน่วยบริการ"
      * system = $ID_LO_DepCode
      * value = "ER"
    * display = "แผนกฉุกเฉิน"
* location[+]
  * extension[0]
    * url = $EX_TH_EncounterIpdJourney 
    * valueCodeableConcept = $CS_Meta_IpdJourney#admit "รหัสแผนกที่ส่งผู้ป่วยให้เป็นผู้ป่วยใน (admit clinic)"
  * location
    * identifier
      * type = $CS_TH_IdentifierType#localDep "รหัสประจำแผนก ของหน่วยบริการ"
      * system = $ID_LO_DepCode
      * value = "Sx-ward"
    * display = "แผนกศัลยกรรม"
* location[+]
  * extension[0]
    * url = $EX_TH_EncounterIpdJourney 
    * valueCodeableConcept = $CS_Meta_IpdJourney#discharge "รหัสแผนกที่จำหน่ายผู้ป่วย (discharge clinic)"
  * location
    * identifier
      * type = $CS_TH_IdentifierType#localDep "รหัสประจำแผนก ของหน่วยบริการ"
      * system = $ID_LO_DepCode
      * value = "Md-ward"
    * display = "แผนกอายุรกรรม"
* serviceProvider = Reference(Organization/organization-ward1)
  * insert GeneralReference($ID_Hcode, "XXXXX", "โรงพยาบาลตัวอย่าง")