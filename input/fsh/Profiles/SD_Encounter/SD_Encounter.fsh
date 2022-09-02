Profile: Moph43pEncounter
Parent: Encounter
Id: moph43p-encounter
Title: "MoPH43p Encounter"
Description: "การรับบริการ"
* ^url = $SD_Encounter
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* extension contains
    $EX_TH_EncounterDeathLocType named deathLocationType 0..1 and
    $EX_TH_EncounterDeathPregnancy named deathPregnancy 0..1 and
    $EX_TH_EncounterServiceHour named serviceHour 0..1 and
    $EX_TH_EncounterServiceLocationType named serviceLocationType 0..1 and
    $EX_TH_EncounterServiceTypeTH named serviceType 0..1 MS and
    $EX_TH_EncounterFpCaseType named familyPlanningType 0..1 and
    $EX_TH_EncounterReferCategory named referCategory 0..1 and
    $EX_TH_EncounterReferResult named referResult 0..1 and
    $EX_TH_EncounterReferResultReason named referResultReason 0..1 and
    $EX_TH_EncounterLeaveDay named encounterLeaveDay 0..1
* identifier MS
* identifier ^slicing.discriminator[0].type = #pattern
* identifier ^slicing.discriminator[=].path = "$this"
* identifier ^slicing.rules = #open
* identifier contains
    vn 0..1 MS
* identifier[vn] ^short = "เลขที่การรับบริการ (VN)"
* identifier[vn]
  * type = $CS_HL7_IdentifierType#VN
  * system 1..
  * system obeys VN-uri
  * system ^example.label = "VN namespace"
  * system ^example.valueUri = "https://terms.sil-th.org/hcode/5/XXXXX/VN"
  * value 1..
* status MS
* class MS
* priority MS
* priority.coding ^slicing.discriminator[0].type = #pattern
* priority.coding ^slicing.discriminator[=].path = "$this"
* priority.coding ^slicing.rules = #open
* priority.coding contains
    hl7 0..1 and
    thcc 1..1 MS
* priority.coding[hl7] from $VS_HL7_Priority (extensible)
* priority.coding[hl7].system 1..
* priority.coding[hl7].system = $CS_HL7_Priority (exactly)
* priority.coding[hl7].code 1..
* priority.coding[thcc] from $VS_43Plus_ServicePriority (extensible)
* priority.coding[thcc].system 1..
* priority.coding[thcc].system = $CS_43Plus_ServicePriority (exactly)
* priority.coding[thcc].code 1..
* subject MS
* subject only Reference($SD_Patient)
  * extension contains
    $EX_TH_EncounterPatientLocationType named patientLocationType 0..1 MS
  * extension[patientLocationType] ^short = "รหัสที่ตั้งของที่อยู่ผู้รับบริการ"
* basedOn MS
* basedOn only Reference($SD_ServiceRequest_Refer)
* participant MS
* participant.type.coding ^slicing.discriminator[0].type = #value
* participant.type.coding ^slicing.discriminator[=].path = "system"
* participant.type.coding ^slicing.rules = #open
* participant.type.coding contains
    hl7 0..1 and
    thcc 1..1 MS
* participant.type.coding[hl7] from $VS_HL7_ParticipantType (extensible)
* participant.type.coding[hl7].system 1..
* participant.type.coding[hl7].system = $CS_HL7_ParticipantType (exactly)
* participant.type.coding[hl7].code 1..
* participant.type.coding[thcc] from $VS_Meta_ParticipantType (extensible)
* participant.type.coding[thcc].system 1..
* participant.type.coding[thcc].system = $CS_Meta_ParticipantType (exactly)
* participant.type.coding[thcc].code 1..
* participant.individual only Reference($SD_Practitioner)
* period MS
* period.extension contains
    $EX_TH_EncounterServiceHour named serviceHour 0..1 MS
* reasonCode MS
* reasonCode.coding ^slicing.discriminator.type = #value
* reasonCode.coding ^slicing.discriminator.path = "system"
* reasonCode.coding ^slicing.rules = #open
* reasonCode.coding contains
    icd10 0..1 MS and
    snomed 0..1
* reasonCode.coding[icd10].system 1..
* reasonCode.coding[icd10].system = $ICD10 (exactly)
* reasonCode.coding[icd10].code 1..
* reasonCode.coding[snomed].system 1..
* reasonCode.coding[snomed].system = $SCT (exactly)
* reasonCode.coding[snomed].code 1..
* account only Reference($SD_Account)
* hospitalization MS
* hospitalization.extension contains
    $EX_TH_EncounterDischargeStatus named dischargeStatus 0..1 MS and
    $EX_TH_EncounterDischargeInstruction named dischargeInstruction  0..1 MS and
    $EX_TH_EncounterIpdDischargeStatus named ipdDischargeStatus 0..1 MS and
    $EX_TH_EncounterIpdDischargeType named ipdDischargeType 0..1 MS
* hospitalization.origin MS
* hospitalization.origin only Reference($SD_Organization_Provider)
* hospitalization.admitSource MS
* hospitalization.admitSource.coding ^slicing.discriminator[0].type = #value
* hospitalization.admitSource.coding ^slicing.discriminator[=].path = "system"
* hospitalization.admitSource.coding ^slicing.rules = #open
* hospitalization.admitSource.coding contains
    hl7 0..1 and
    thcc 1..1 MS
* hospitalization.admitSource.coding[hl7] from $VS_HL7_AdmitSource (extensible)
* hospitalization.admitSource.coding[hl7].system 1..
* hospitalization.admitSource.coding[hl7].system = $CS_HL7_AdmitSource (exactly)
* hospitalization.admitSource.coding[hl7].code 1..
* hospitalization.admitSource.coding[thcc] from $VS_THCC_AdmitSource (extensible)
* hospitalization.admitSource.coding[thcc].system 1..
* hospitalization.admitSource.coding[thcc].system = $CS_THCC_AdmitSource (exactly)
* hospitalization.admitSource.coding[thcc].code 1..
* hospitalization.destination only Reference($SD_Organization_Provider)
* hospitalization.destination.extension contains
    $EX_TH_EncounterReferOutID named referOutId 0..1 MS
* location MS
* location.extension contains
    $EX_TH_EncounterServiceLocationType named locationType 0..1 MS and
    $EX_TH_EncounterIpdJourney named ipdJourney 0..* MS
* serviceProvider MS
* serviceProvider only Reference($SD_Organization_Provider)
* serviceProvider.extension contains
    $EX_TH_EncounterProviderType named providerType 0..1 MS
* serviceProvider.extension[providerType] ^short = "ประเภทสถานพยาบาลที่รักษา"
