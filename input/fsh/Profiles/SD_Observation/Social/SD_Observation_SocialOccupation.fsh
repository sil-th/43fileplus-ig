Profile: MophPcObservationSocialOccupation
Parent: $SD_Observation_SocialBase
Id: mophpc-observation-social-occupation
Title: "MoPH-PC Observation: Social-Occupation"
Description: "ข้อมูลอาชีพของประชาชนในเขตรับผิดชอบ และผู้ที่มาใช้บริการ"
* ^url = $SD_Observation_SocialOccupation
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* code.coding[code43Plus]
  * system 1..1 MS
  * system = $LNC (exactly)
  * code 1..1 MS
  * code = #11341-5 (exactly)
* component MS
* component ^slicing.discriminator[0].type = #pattern
* component ^slicing.discriminator[=].path = "code"
* component ^slicing.rules = #open
* component contains
    employer 0..1 and
    isCurrentJob 0..1 and
    annualIncome 0..1
* component[employer] ^short = "หน่วยงาน"
* component[employer].code = $LNC#80427-8
* component[employer].value[x] 1..
* component[employer].value[x] only string
* component[isCurrentJob] ^short = "เป็นงานปัจจุบันหรือไม่"
* component[isCurrentJob].code = $LNC#67875-5
* component[isCurrentJob].value[x] 1..
* component[isCurrentJob].value[x] only boolean
* component[annualIncome] ^short = "ระดับรายได้"
* component[annualIncome].code = $LNC#87707-6
* component[annualIncome].value[x] 1..
* component[annualIncome].value[x] only CodeableConcept