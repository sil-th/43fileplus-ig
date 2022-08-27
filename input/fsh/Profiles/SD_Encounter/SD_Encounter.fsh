Profile: Moph43pEncounter
Parent: Encounter
Id: moph43p-encounter
Title: "Encounter (MoPH43p)"
Description: "การรับบริการ"
* ^url = $SD_Encounter
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* extension ^slicing.discriminator[0].type = #value
* extension ^slicing.discriminator[=].path = "url"
* extension ^slicing.rules = #open
* extension ^min = 0
* extension contains
    $EX_TH_ServiceTypeTH named serviceType 0..1 MS
* extension[serviceType] ^short = "ประเภทบริการ"
// * extension[serviceType] from $VS_THCC_ServiceTypeTH (extensible)
* identifier MS
* identifier ^slicing.discriminator[0].type = #pattern
* identifier ^slicing.discriminator[=].path = "$this"
* identifier ^slicing.rules = #open
* identifier contains
    vn 0..1 MS
* identifier[vn] ^short = "เลขที่การรับบริการ (VN)"
* identifier[vn] ^patternIdentifier.type = $CS_HL7_IdentifierType#VN
* identifier[vn].system 1..
* identifier[vn].system obeys VN-uri
* identifier[vn].system ^example.label = "VN namespace"
* identifier[vn].system ^example.valueUri = "https://terms.sil-th.org/hcode/5/XXXXX/VN"
* identifier[vn].value 1..
* status MS
* class MS
* priority MS
* priority.coding ^slicing.discriminator[0].type = #value
* priority.coding ^slicing.discriminator[=].path = "system"
* priority.coding ^slicing.rules = #open
* priority.coding contains
    hl7 0..1 and
    thcc 1..1 MS
* priority.coding[hl7] from $VS_HL7_Priority (extensible)
* priority.coding[hl7].system 1..
* priority.coding[hl7].system = $CS_HL7_Priority (exactly)
* priority.coding[hl7].code 1..
* priority.coding[thcc] from $VS_THCC_ServicePriority (extensible)
* priority.coding[thcc].system 1..
* priority.coding[thcc].system = $CS_THCC_ServicePriority (exactly)
* priority.coding[thcc].code 1..
* subject MS
* subject only Reference($SD_Patient)
* subject.extension ^slicing.discriminator[0].type = #value
* subject.extension ^slicing.discriminator[=].path = "url"
* subject.extension ^slicing.rules = #open
* subject.extension ^min = 0
* subject.extension contains
    $EX_TH_PatientLocationType named locationType 0..1 MS
* subject.extension[locationType] ^short = "ประภทเขตรับผิดชอบ"
// * subject.extension[locationType] from $VS_THCC_PatientLocationType (extensible)
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
* participant.type.coding[thcc] from $VS_THCC_ParticipantType (extensible)
* participant.type.coding[thcc].system 1..
* participant.type.coding[thcc].system = $CS_THCC_ParticipantType (exactly)
* participant.type.coding[thcc].code 1..
* participant.individual only Reference($SD_Practitioner)
* period MS
* period.extension ^slicing.discriminator[0].type = #value
* period.extension ^slicing.discriminator[=].path = "url"
* period.extension ^slicing.rules = #open
* period.extension ^min = 0
* period.extension contains
    $EX_TH_ServiceHour named serviceHour 0..1 MS
* period.extension[serviceHour] ^short = "ช่วงเวลาการใช้บริการ"
// * period.extension[serviceHour] from $VS_THCC_ServiceHour (extensible)
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
* hospitalization.extension ^slicing.discriminator[0].type = #value
* hospitalization.extension ^slicing.discriminator[=].path = "url"
* hospitalization.extension ^slicing.rules = #open
* hospitalization.extension ^min = 0
* hospitalization.extension contains
    $EX_TH_DischargeStatus named dischargeStatus 0..1 MS and
    $EX_TH_DischargeInstruction named dischargeInstruction  0..1 MS
* hospitalization.extension[dischargeStatus] ^short = "สถานะการจำหน่ายผู้ป่วย"
// * hospitalization.extension[dischargeStatus] from $VS_THCC_DischargeStatus (extensible)
* hospitalization.extension[dischargeInstruction] ^short = "คำแนะนำหลังการเข้ารับบริการ"
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
* location MS
* location.extension ^slicing.discriminator[0].type = #value
* location.extension ^slicing.discriminator[=].path = "url"
* location.extension ^slicing.rules = #open
* location.extension ^min = 0
* location.extension contains
    $EX_TH_ServiceLocationType named locationType 0..1 MS
* location.extension[locationType] ^short = "ประเภทสถานที่ที่ให้บริการ"
// * hospitalization.extension[locationType] from $VS_THCC_ServiceLocationType (extensible)
* serviceProvider MS
* serviceProvider only Reference($SD_Organization_Provider)
* serviceProvider.extension ^slicing.discriminator[0].type = #value
* serviceProvider.extension ^slicing.discriminator[=].path = "url"
* serviceProvider.extension ^slicing.rules = #open
* serviceProvider.extension ^min = 0
* serviceProvider.extension contains
    $EX_TH_ProviderType named providerType 0..1 MS
* serviceProvider.extension[providerType] ^short = "ประเภทสถานพยาบาลที่รักษา"
// * hospitalization.extension[locationType] from $VS_THCC_ProviderType (extensible)
