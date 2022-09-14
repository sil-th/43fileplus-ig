Profile: Moph43pObservationVitalBP
Parent: $SD_Observation_VitalBase
Id: moph43p-observation-vital-bp
Title: "MoPH43p Observation: Vital-BP"
Description: "ความดันโลหิต (Blood pressure)"
* ^url = $SD_Observation_VitalBp
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* code.coding[code43Plus] = $LNC#85354-9 (exactly)
* value[x] ..0
* component ..2
* component ^slicing.discriminator[0].type = #pattern
* component ^slicing.discriminator[=].path = "code."
* component ^slicing.rules = #open
* component contains
    SBP 1..1 MS and
    DBP 1..1 MS
* component[SBP].code = $LNC#8480-6 (exactly)
* component[SBP].value[x] only Quantity
* component[SBP].value[x].value 1..
* component[SBP].value[x].unit 0..
* component[SBP].value[x].system 0..
* component[SBP].value[x].system = $UCUM (exactly)
* component[SBP].value[x].code 0..
* component[SBP].value[x].code = #mm[Hg] (exactly)
* component[DBP].code = $LNC#8462-4 (exactly)
* component[DBP].value[x] only Quantity
* component[DBP].value[x].value 1..
* component[DBP].value[x].unit 0..
* component[DBP].value[x].system 0..
* component[DBP].value[x].system = $UCUM (exactly)
* component[DBP].value[x].code 0..
* component[DBP].value[x].code = #mm[Hg] (exactly)
