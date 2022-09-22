Profile: MophPcEncounterBase
Parent: Encounter
Id: mophpc-encounter-base
Title: "MoPH43p Encounter"
Description: "การรับบริการโดยทั่วไป"
* ^url = $SD_Encounter_Base
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* extension contains
    $EX_TH_EncounterPatientLocationType named patientLocationType 0..1 MS and
    $EX_TH_EncounterServiceHour named serviceHour 0..1 MS and
    $EX_TH_EncounterServiceTypeTH named serviceTypeTH 0..1 MS and
    $EX_TH_EncounterFpCaseType named familyPlanningType 0..1 MS
* identifier MS
* identifier ^slicing.discriminator[0].type = #pattern
* identifier ^slicing.discriminator[=].path = "type"
* identifier ^slicing.rules = #open
* identifier contains
    vn 0..1 MS and
    an 0..1 MS
* identifier[vn] ^short = "เลขที่การรับบริการ (VN)"
* identifier[vn]
  * type = $CS_TH_IdentifierType#localVn
  * system 1..
  * system obeys VN-uri
  * system ^example.label = "VN namespace"
  * system ^example.valueUri = $ID_LO_VN
  * value 1..
* identifier[an] ^short = "เลขที่ผู้่ปวยใน (AN)"
* identifier[an]
  * type = $CS_TH_IdentifierType#localAn
  * system 1..
  * system obeys AN-uri
  * system ^example.label = "AN namespace"
  * system ^example.valueUri = $ID_LO_AN
  * value 1..
* status MS
* class MS
* priority MS
* priority.coding ^slicing.discriminator[0].type = #value
* priority.coding ^slicing.discriminator[=].path = "system"
* priority.coding ^slicing.rules = #open
* priority.coding contains
    hl7 0..1 and
    43plus 0..1 MS and
    thccAccident 0..1 MS
* priority.coding[hl7] from $VS_HL7_Priority (extensible)
* priority.coding[hl7].system 1..
* priority.coding[hl7].system = $CS_HL7_Priority (exactly)
* priority.coding[hl7].code 1..
* priority.coding[43plus] from $VS_43Plus_ServicePriority (extensible)
* priority.coding[43plus].system 1..
* priority.coding[43plus].system = $CS_43Plus_ServicePriority (exactly)
* priority.coding[43plus].code 1..
* priority.coding[thccAccident] from $VS_THCC_AccidentPriority (extensible)
* priority.coding[thccAccident].system 1..
* priority.coding[thccAccident].system = $CS_THCC_AccidentPriority (exactly)
* priority.coding[thccAccident].code 1..
* subject MS
* subject only Reference($SD_Patient_Base or Group)
* basedOn MS
* basedOn only Reference($SD_ServiceRequest_Refer)
* participant MS
* participant.type.coding ^slicing.discriminator[0].type = #value
* participant.type.coding ^slicing.discriminator[=].path = "system"
* participant.type.coding ^slicing.rules = #open
* participant.type.coding contains
    hl7 0..1 and
    43plus 0..1 MS
* participant.type.coding[hl7] from $VS_HL7_ParticipantType (extensible)
* participant.type.coding[hl7].system 1..
* participant.type.coding[hl7].system = $CS_HL7_ParticipantType (exactly)
* participant.type.coding[hl7].code 1..
* participant.type.coding[43plus] from $VS_Meta_ParticipantType (extensible)
* participant.type.coding[43plus].system 1..
* participant.type.coding[43plus].system = $CS_Meta_ParticipantType (exactly)
* participant.type.coding[43plus].code 1..
* participant.individual only Reference($SD_Practitioner_Base)
* period MS
* period.extension contains
    $EX_TH_EncounterServiceHour named serviceHour 0..1 MS
* length MS
* reasonCode MS
* reasonCode.coding ^slicing.discriminator.type = #value
* reasonCode.coding ^slicing.discriminator.path = "system"
* reasonCode.coding ^slicing.rules = #open
* reasonCode.coding contains
    icd10 0..1 MS and
    snomed 0..1 MS
* reasonCode.coding[icd10] from $VS_ICD10 (extensible)
* reasonCode.coding[icd10].system 1..
* reasonCode.coding[icd10].system = $ICD10 (exactly)
* reasonCode.coding[icd10].code 1..
* reasonCode.coding[snomed] from $VS_SNOMED_INT (extensible)
* reasonCode.coding[snomed].system 1..
* reasonCode.coding[snomed].system = $SCT (exactly)
* reasonCode.coding[snomed].code 1..
* diagnosis MS
  * use.coding ^slicing.discriminator.type = #value
  * use.coding ^slicing.discriminator.path = "system"
  * use.coding ^slicing.rules = #open
  * use.coding contains
      hl7 0..1 MS and
      43plus 0..1 MS and
      addition 0..1
  * use.coding[hl7] from $VS_HL7_DiagRole (extensible)
  * use.coding[hl7].system = $CS_HL7_DiagRole
  * use.coding[43plus] from $VS_43Plus_EncounterDiagnosisRole (extensible)
  * use.coding[43plus].system = $CS_43Plus_EncounterDiagnosisRole
  * use.coding[addition] from $VS_Meta_ExtendedHL7DiagnosisRole (extensible)
  * use.coding[addition].system = $CS_Meta_ExtendedHL7DiagnosisRole
* account only Reference($SD_Account_Base)
* hospitalization MS
* hospitalization.extension contains
    $EX_TH_EncounterDischargeStatus named dischargeStatus 0..1 MS and
    $EX_TH_EncounterDischargeInstruction named dischargeInstruction  0..1 MS
* hospitalization.origin MS
* hospitalization.origin only Reference($SD_Organization_Provider)
* hospitalization.admitSource MS
* hospitalization.admitSource.coding ^slicing.discriminator[0].type = #value
* hospitalization.admitSource.coding ^slicing.discriminator[=].path = "system"
* hospitalization.admitSource.coding ^slicing.rules = #open
* hospitalization.admitSource.coding contains
    hl7 0..1 and
    thcc 0..1 MS and
    thccAccident 0..1 MS
* hospitalization.admitSource.coding[hl7] from $VS_HL7_AdmitSource (extensible)
* hospitalization.admitSource.coding[hl7].system 1..
* hospitalization.admitSource.coding[hl7].system = $CS_HL7_AdmitSource (exactly)
* hospitalization.admitSource.coding[hl7].code 1..
* hospitalization.admitSource.coding[thcc] from $VS_THCC_AdmitSource (extensible)
* hospitalization.admitSource.coding[thcc].system 1..
* hospitalization.admitSource.coding[thcc].system = $CS_THCC_AdmitSource (exactly)
* hospitalization.admitSource.coding[thcc].code 1..
* hospitalization.admitSource.coding[thccAccident] from $VS_THCC_AccidentAdmitSource (extensible)
* hospitalization.admitSource.coding[thccAccident].system 1..
* hospitalization.admitSource.coding[thccAccident].system = $CS_THCC_AccidentAdmitSource (exactly)
* hospitalization.admitSource.coding[thccAccident].code 1..
* hospitalization.destination only Reference($SD_Organization_Provider)
* hospitalization.destination.extension contains
    $EX_TH_EncounterReferOutID named referOutId 0..1 MS
* location MS
* location.extension contains
    $EX_TH_EncounterServiceLocationType named serviceLocationType 0..1 MS
* serviceProvider MS
* serviceProvider only Reference($SD_Organization_Provider)
* serviceProvider.extension contains
    $EX_TH_EncounterProviderType named providerType 0..1 MS
* serviceProvider.extension[providerType] ^short = "ประเภทสถานพยาบาลที่รักษา"
