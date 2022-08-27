Profile: Moph43pDeviceRequest
Parent: DeviceRequest
Id: moph43p-devicerequest
Title: "DeviceRequest (MoPH43p)"
Description: "การสั่งอุปกรณ์/เวชภัณฑ์"
* ^url = $SD_DeviceRequest
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension ^min = 0
* extension contains
    $EX_TH_ProductUseLocation named productUseLocation 0..* MS
* extension[productUseLocation] ^short = "ประเภทการใช้"
* extension[productUseLocation] ^min = 0
* status MS
* intent MS
* priority MS
* code[x] only Reference
* code[x] MS
* code[x] ^slicing.discriminator.type = #type
* code[x] ^slicing.discriminator.path = "$this"
* code[x] ^slicing.rules = #open
* codeReference only Reference($SD_Device)
* codeReference MS
* codeReference ^sliceName = "codeReference"
* parameter MS
* parameter.value[x] only Quantity
* parameter.value[x] MS
* parameter.value[x] ^slicing.discriminator.type = #type
* parameter.value[x] ^slicing.discriminator.path = "$this"
* parameter.value[x] ^slicing.rules = #open
* parameter.valueQuantity only Quantity
* parameter.valueQuantity ^sliceName = "valueQuantity"
* subject only Reference($SD_Patient)
* subject MS
* encounter MS
* authoredOn MS
* requester only Reference($SD_Practitioner)
* requester MS