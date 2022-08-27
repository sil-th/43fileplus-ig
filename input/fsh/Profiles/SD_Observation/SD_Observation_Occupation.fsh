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
* category ^slicing.discriminator[0].type = #value
* category ^slicing.discriminator[=].path = "coding.code"
* category ^slicing.discriminator[+].type = #value
* category ^slicing.discriminator[=].path = "coding.system"
* category ^slicing.rules = #open
* category contains SocialHistory 1..1
* category[SocialHistory].coding.system 1..
* category[SocialHistory].coding.system = $CS_HL7_ObservationCat (exactly)
* category[SocialHistory].coding.code 1..
* category[SocialHistory].coding.code = #social-history (exactly)
* code MS
* code.coding ^slicing.discriminator[0].type = #value
* code.coding ^slicing.discriminator[=].path = "system"
* code.coding ^slicing.rules = #open
* code.coding contains loinc 0..1
* code.coding[loinc].system 1..
* code.coding[loinc].system = $LNC (exactly)
* code.coding[loinc].code 1..
* code.coding[loinc].code = #11341-5 (exactly)
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
* component ^slicing.discriminator[0].type = #value
* component ^slicing.discriminator[=].path = "code.coding.system"
* component ^slicing.discriminator[+].type = #value
* component ^slicing.discriminator[=].path = "code.coding.code"
* component ^slicing.rules = #open
* component contains
    employer 0..1 and
    annualIncome 0..1 MS
* component[employer].code.coding.system 1..
* component[employer].code.coding.system = $LNC (exactly)
* component[employer].code.coding.code 1..
* component[employer].code.coding.code = #80427-8 (exactly)
* component[employer].value[x] 1..
* component[employer].value[x] only string
* component[annualIncome].code.coding ^slicing.discriminator[0].type = #value
* component[annualIncome].code.coding ^slicing.discriminator[=].path = "system"
* component[annualIncome].code.coding ^slicing.rules = #open
* component[annualIncome].code.coding contains
    loinc 0..1 and
    thcc 0..1
* component[annualIncome].code.coding[loinc].system 1..
* component[annualIncome].code.coding[loinc].system = $LNC (exactly)
* component[annualIncome].code.coding[loinc].code 1..
* component[annualIncome].code.coding[loinc].code = #87707-6 (exactly)
* component[annualIncome].code.coding[thcc] from $VS_THCC_SocialObsType (extensible)
* component[annualIncome].code.coding[thcc].system 1..
* component[annualIncome].code.coding[thcc].system = $CS_THCC_SocialObsType (exactly)
* component[annualIncome].code.coding[thcc].code 1..
* component[annualIncome].code.coding[thcc].code = #annual-income (exactly)
* component[annualIncome].value[x] 1..
* component[annualIncome].value[x] only CodeableConcept