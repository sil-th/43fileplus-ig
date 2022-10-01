Profile: MophPcDeviceRequestBase
Parent: DeviceRequest
Id: mophpc-devicerequest-base
Title: "MoPH-PC DeviceRequest"
Description: "การสั่งอุปกรณ์/เวชภัณฑ์"
* ^url = $SD_DeviceRequest_Base
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* extension contains
    $EX_TH_DeviceRequestUseLocation named productUseLocation 0..* MS
* extension[productUseLocation] ^short = "ประเภทการใช้"
* code[x] MS
* code[x] only Reference($SD_Device_Base) or CodeableConcept
* parameter MS
* parameter ^slicing.discriminator.type = #pattern
* parameter ^slicing.discriminator.path = "code"
* parameter ^slicing.rules = #open
* parameter contains
    quanity 0..1 MS
* parameter[quanity].code = $SCT#246205007
* parameter[quanity].value[x] only Quantity
* parameter[quanity].value[x] MS
* subject only Reference($SD_Patient_Base)
* subject MS
* requester only Reference($SD_Practitioner_Base)
* requester MS