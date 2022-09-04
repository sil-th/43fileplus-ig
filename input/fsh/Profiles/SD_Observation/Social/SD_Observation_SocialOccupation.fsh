Profile: Moph43pObservationSocialOccupation
Parent: $SD_Observation_SocialBase
Id: moph43p-observation-social-occupation
Title: "MoPH43p Observation: Social-Occupation"
Description: "ข้อมูลอาชีพของประชาชนในเขตรับผิดชอบ และผู้ที่มาใช้บริการ"
* ^url = $SD_Observation_SocialOccupation
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* code.coding[code43Plus] = $LNC#11341-5 (exactly)
* component MS
* component ^slicing.discriminator[0].type = #pattern
* component ^slicing.discriminator[=].path = "code"
* component ^slicing.rules = #open
* component contains
    employer 0..1 and
    isCurrentJob 0..1 and
    annualIncome 0..1
* component[employer] ^short = "หน่วยงาน"
* component[employer].code.coding = $LNC#80427-8 (exactly)
* component[employer].value[x] 1..
* component[employer].value[x] only string
* component[isCurrentJob] ^short = "เป็นงานปัจจุบันหรือไม่"
* component[isCurrentJob].code.coding = $LNC#80427-8 (exactly)
* component[isCurrentJob].value[x] 1..
* component[isCurrentJob].value[x] only boolean
* component[annualIncome] ^short = "ระดับรายได้"
* component[annualIncome].code.coding = $LNC#87707-6 (exactly)
* component[annualIncome].value[x] 1..
* component[annualIncome].value[x] only CodeableConcept