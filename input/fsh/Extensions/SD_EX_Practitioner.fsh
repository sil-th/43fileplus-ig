// Alias: $EX_TH_QualificationIssuer = https://fhir-ig.sil-th.org/43filesplus/Extension/TH-qualification-issuer
// * qualification
//   * issuer = Reference(Organization/organization-medical-council)
//     * extension[0]
//       * url = $EX_TH_QualificationIssuer
//       * valueCodeableConcept
//         * coding[0] = $CS_THCC_QualificationIssuer#01 "แพทยสภา"
//         * text = "แพทยสภา"
Extension: EX_TH_QualificationIssuer
Id: ex-practitioner-qualification-issuer
Title: "รหัสสภาวิชาชีพ"
Description: "รหัสสภาวิชาชีพ"
* ^url = $EX_TH_QualificationIssuer
* ^version = "4.3.0"
* ^status = #draft
* ^experimental = false
* ^date = "2022-08-23T07:06:13+11:00"
* ^publisher = "SIL-TH"
* ^context.type = #element
* ^context.expression = "Practitioner.qualification.issuer"
* . 0..*
* . ^short = "รหัสสภาวิชาชีพ"
* . ^definition = "รหัสสภาวิชาชีพ"
* value[x] 1..
* value[x] only CodeableConcept
* value[x] from $VS_THCC_QualificationIssuer (extensible)
