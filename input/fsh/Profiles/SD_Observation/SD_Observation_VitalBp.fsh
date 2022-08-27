Profile: Moph43pObservationBP
Parent: $SD_Observation_Vital
Id: moph43p-observation-vital-bp
Title: "Observation - Vital-BP (MoPH43p)"
Description: "ความดันโลหิต (Blood pressure)"
* ^url = $SD_Observation_VitalBp
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* code.coding[loinc] ^sliceName = "loinc"
* code.coding[loinc] ^mustSupport = true
* code.coding[loinc].code = #85354-9 (exactly)
* code.coding[snomed] ^sliceName = "snomed"
* code.coding[snomed].code = #75367002 (exactly)
* value[x] ..0
* component ..2
* component ^slicing.discriminator[0].type = #value
* component ^slicing.discriminator[=].path = "code.coding.code"
* component ^slicing.discriminator[+].type = #value
* component ^slicing.discriminator[=].path = "code.coding.system"
* component ^slicing.ordered = false
* component ^slicing.rules = #open
* component contains
    SBP 1..1 MS and
    DBP 1..1 MS
* component[SBP].code.coding ^slicing.discriminator[0].type = #value
* component[SBP].code.coding ^slicing.discriminator[=].path = "system"
* component[SBP].code.coding ^slicing.rules = #open
* component[SBP].code.coding contains
    loinc 1..1 and
    snomed 0..1
* component[SBP].code.coding[loinc].system 1..
* component[SBP].code.coding[loinc].system = "loinc" (exactly)
* component[SBP].code.coding[loinc].code 1..
* component[SBP].code.coding[loinc].code = #8480-6 (exactly)
* component[SBP].code.coding[snomed].system 1..
* component[SBP].code.coding[snomed].system = "snomed" (exactly)
* component[SBP].code.coding[snomed].code 1..
* component[SBP].code.coding[snomed].code = #271649006 (exactly)
* component[SBP].value[x] 1..
* component[SBP].value[x] only Quantity
* component[SBP].value[x].value 1..
* component[SBP].value[x].unit 1..
* component[SBP].value[x].system 1..
* component[SBP].value[x].system = $UCUM (exactly)
* component[SBP].value[x].code 1..
* component[SBP].value[x].code = #mm[Hg] (exactly)
* component[DBP].code.coding ^slicing.discriminator[0].type = #value
* component[DBP].code.coding ^slicing.discriminator[=].path = "system"
* component[DBP].code.coding ^slicing.rules = #open
* component[DBP].code.coding contains
    loinc 1..1 and
    snomed 0..1
* component[DBP].code.coding[loinc].system 1..
* component[DBP].code.coding[loinc].system = "loinc" (exactly)
* component[DBP].code.coding[loinc].code 1..
* component[DBP].code.coding[loinc].code = #8462-4 (exactly)
* component[DBP].code.coding[snomed].system 1..
* component[DBP].code.coding[snomed].system = "snomed" (exactly)
* component[DBP].code.coding[snomed].code 1..
* component[DBP].code.coding[snomed].code = #271650006 (exactly)
* component[DBP].value[x] 1..
* component[DBP].value[x] only Quantity
* component[DBP].value[x].value 1..
* component[DBP].value[x].unit 1..
* component[DBP].value[x].system 1..
* component[DBP].value[x].system = $UCUM (exactly)
* component[DBP].value[x].code 1..
* component[DBP].value[x].code = #mm[Hg] (exactly)