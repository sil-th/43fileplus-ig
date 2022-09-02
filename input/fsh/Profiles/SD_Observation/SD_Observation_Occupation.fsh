Profile: Moph43pObservationOccupation
Parent: Observation
Id: moph43p-observation-occupation
Title: "MoPH43p Observation: Occupation"
Description: "ข้อมูลอาชีพของประชาชนในเขตรับผิดชอบ และผู้ที่มาใช้บริการ"
* ^url = $SD_Observation_Occupation
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* status MS
* category MS
* category ^slicing.discriminator[0].type = #pattern
* category ^slicing.discriminator[=].path = "$this"
* category ^slicing.rules = #open
* category contains SocialHistory 0..1
* category[SocialHistory] = $CS_HL7_ObservationCat#social-history (exactly)
* code MS
* code.coding ^slicing.discriminator[0].type = #pattern
* code.coding ^slicing.discriminator[=].path = "$this"
* code.coding ^slicing.rules = #open
* code.coding contains loinc 0..1
* code.coding[loinc] = $LNC#11341-5  (exactly)
* subject 1.. MS
* subject only Reference($SD_Patient)
* effective[x] MS
* value[x] only CodeableConcept
* value[x] MS
* value[x].coding ^slicing.discriminator[0].type = #value
* value[x].coding ^slicing.discriminator[=].path = "system"
* value[x].coding ^slicing.rules = #open
* value[x].coding contains thcc 0..1
* value[x].coding[thcc] from $VS_THCC_Occupation (extensible)
* value[x].coding[thcc].system 1..
* value[x].coding[thcc].system = $CS_THCC_Occupation (exactly)
* value[x].coding[thcc].code 1..
* component MS
* component ^slicing.discriminator[0].type = #pattern
* component ^slicing.discriminator[=].path = "code"
* component ^slicing.rules = #open
* component contains
    employer 0..1 and
    isCurrentJob 0..1 and
    annualIncome 0..1
* component[employer].code.coding = $LNC#80427-8 (exactly)
* component[employer].value[x] 1..
* component[employer].value[x] only string
* component[isCurrentJob].code.coding = $LNC#80427-8 (exactly)
* component[isCurrentJob].value[x] 1..
* component[isCurrentJob].value[x] only boolean
* component[annualIncome].code.coding = $LNC#87707-6 (exactly)
* component[annualIncome].value[x] 1..
* component[annualIncome].value[x] only CodeableConcept