Profile: Moph43pObservationComStatus
Parent: Observation
Id: moph43p-observation-community-status
Title: "MoPH43p Observation: Status in Community"
Description: "ข้อมูลสถานะในชุมชน"
* ^url = $SD_Observation_CommunityStatus
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* status MS
* category MS
* category ^slicing.discriminator[0].type = #value
* category ^slicing.discriminator[=].path = "coding.code"
* category ^slicing.discriminator[+].type = #value
* category ^slicing.discriminator[=].path = "coding.system"
* category ^slicing.rules = #open
* category contains
    SocialHistory 1..1 MS
* category[SocialHistory].coding.system 1..
* category[SocialHistory].coding.system = $CS_HL7_ObservationCat (exactly)
* category[SocialHistory].coding.code 1..
* category[SocialHistory].coding.code = #social-history (exactly)
* code MS
* code.coding ^slicing.discriminator[0].type = #value
* code.coding ^slicing.discriminator[=].path = "system"
* code.coding ^slicing.rules = #open
* code.coding contains
    thcc 0..1 MS
* code.coding[thcc] from $VS_Meta_SocialObsType (extensible)
* code.coding[thcc].system 1..
* code.coding[thcc].system = $CS_Meta_SocialObsType (exactly)
* code.coding[thcc].code 1..
* code.coding[thcc].code = #vstatus (exactly)
* subject 1.. MS
* subject only Reference($SD_Patient)
* effective[x] MS
* value[x] only CodeableConcept
* value[x] MS
* value[x].coding ^slicing.discriminator[0].type = #value
* value[x].coding ^slicing.discriminator[=].path = "system"
* value[x].coding ^slicing.rules = #open
* value[x].coding contains thcc 0..1
* value[x].coding[thcc] from $VS_THCC_StatusInVillage (extensible)
* value[x].coding[thcc].system 1..
* value[x].coding[thcc].code 1..