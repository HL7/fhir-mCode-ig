Instance: primary-cancer-condition-nsclc
InstanceOf: PrimaryCancerCondition
Description: "Example of Primary Cancer Condition"
* clinicalStatus = ClinStatus#active "Active"
* verificationStatus = VerStatus#confirmed "Confirmed"
* category = CondCat#problem-list-item
* code = SCT#254637007 "Non-small cell lung cancer (disorder)"
* extension[histologyMorphologyBehavior].valueCodeableConcept = SCT#1187332001 "Adenocarcinoma (morphologic abnormality)"
* bodySite = SCT#39607008 "Lung structure (body structure)"
* bodySite.extension[lateralityQualifier].valueCodeableConcept = SCT#7771000 "Left (qualifier value)"
* subject = Reference(cancer-patient-john-anyperson)
* onsetDateTime = "2019-04-01"
* asserter = Reference(us-core-practitioner-kyle-anydoc)
* stage.summary = SCT#1222806003 "American Joint Committee on Cancer stage IIIC (qualifier value)"
* stage.assessment = Reference(tnm-clinical-stage-group-3c)

Instance: primary-cancer-condition-cll
InstanceOf: PrimaryCancerCondition
Description: "Example of Primary Cancer Condition - hematologic cancer"
* clinicalStatus = ClinStatus#active "Active"
* verificationStatus = VerStatus#confirmed "Confirmed"
* category = CondCat#problem-list-item
* code = SCT#92814006 "Chronic lymphoid leukemia, disease (disorder)"
* subject = Reference(cancer-patient-adam-everyman)
* onsetDateTime = "2020-05-12"
* asserter = Reference(us-core-practitioner-kyle-anydoc)
* stage.summary = NCIT#C80135 "Binet Stage B"
//* stage.assessment = Reference(binet-stage-group-B)

Instance: secondary-cancer-condition-brain-mets
InstanceOf: SecondaryCancerCondition
Description: "Example of Secondary Cancer Condition"
* extension[relatedPrimaryCancerCondition].valueReference = Reference(primary-cancer-condition-nsclc)
* clinicalStatus = ClinStatus#active "Active"
* verificationStatus = VerStatus#confirmed "Confirmed"
* category = CondCat#problem-list-item
* code = SCT#94225005 "Secondary malignant neoplasm of brain"
* subject = Reference(cancer-patient-john-anyperson)
* onsetDateTime = "2019-05-01"
* asserter = Reference(us-core-practitioner-kyle-anydoc)

Instance: cancer-disease-status-improved
InstanceOf: CancerDiseaseStatus
Description: "Example of Cancer Disease Status"
* extension[evidenceType].valueCodeableConcept = SCT#108257001 "Anatomic pathology procedure (procedure)"
* status = #final "final"
* subject = Reference(cancer-patient-john-anyperson)
* effectiveDateTime = "2019-04-01"
* performer = Reference(us-core-practitioner-kyle-anydoc)
* valueCodeableConcept = SCT#268910001 "Patient's condition improved (finding)"

Instance: cancer-related-comorbidities-john-anyperson
InstanceOf: Comorbidities
Description: "Example of Cancer-Related Comorbidities"
* subject = Reference(cancer-patient-john-anyperson)
* performer = Reference(us-core-practitioner-kyle-anydoc)
* focus = Reference(primary-cancer-condition-nsclc)
* status = #final "final"
* effectiveDateTime = "2019-04-01"
// present
* extension[comorbidConditionPresent].valueReference = Reference(john-anyperson-chf)
// absent
* extension[comorbidConditionAbsent][0].valueCodeableConcept = SCT#414916001 "Obesity (disorder)"
* extension[comorbidConditionAbsent][1].valueCodeableConcept = SCT#19829001 "Disorder of lung (disorder)"
* category = ObsCat#social-history "Social History"

Instance: john-anyperson-chf
InstanceOf: USCoreCondition
Description: "Example of comorbid condition (congestive heart failure) present"
* subject = Reference(cancer-patient-john-anyperson)
* asserter = Reference(us-core-practitioner-kyle-anydoc)
* category = CondCat#problem-list-item "Problem List Item"
* code = ICD10CM#I50.32 "Chronic diastolic (congestive) heart failure"
* verificationStatus = VerStatus#confirmed
* clinicalStatus = ClinStatus#active "Active"
* extension[condition-assertedDate].valueDateTime = "2019-04-01"

Instance: cancer-patient-john-anyperson
InstanceOf: CancerPatient
Description: "Example of Patient"
* identifier.use = #usual
* identifier.type = IDTYPE#MR "Medical Record Number"
* identifier.system = "http://hospital.example.org"
* identifier.value = "m123"
* name.family = "Anyperson"
* name.given[0] = "John"
* name.given[1] = "B."
* contact.telecom[0].system = #phone
* contact.telecom[0].value = "555-555-5555"
* contact.telecom[0].use = #home
* contact.telecom[1].system = #email
* contact.telecom[1].value = "john.anyperson@example.com"
* gender = #male
* birthDate = "1951-01-20"
* address.line = "123 Main St"
* address.city = "Anytown"
* address.postalCode = "12345"
* address.country = "US"
* communication.language = urn:ietf:bcp:47#en-US "English (United States)"
* communication.language.text = "English"
* extension[USCoreRace].extension[ombCategory].valueCoding = OmbRaceCat#2054-5 "Black or African American"
* extension[USCoreRace].extension[text].valueString = "Black or African American"
* extension[USCoreEthnicity].extension[ombCategory].valueCoding = OmbRaceCat#2186-5 "Not Hispanic or Latino"
* extension[USCoreEthnicity].extension[text].valueString = "Not Hispanic or Latino"
* extension[USCoreBirthSex].valueCode = #M

Instance: cancer-patient-eve-anyperson
InstanceOf: CancerPatient
Description: "Example of Patient"
// The following lines must use the slice names, not the defining URLs
// * extension[race].url = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-race"
// * extension[race].extension[ombCategory].url = "ombCategory"
* extension[race].extension[ombCategory].valueCoding = OmbRaceCat#1002-5 "American Indian or Alaska Native"
// * extension[race].extension[text].url = "text"
* extension[race].extension[text].valueString = "Lakota and Crow"
* extension[birthsex].valueCode = #F
* identifier.use = #usual
* identifier.type = IDTYPE#MR "Medical Record Number"
* identifier.system = "http://hospital.example.org"
* identifier.value = "m456"
* name.family = "Anyperson"
* name.given[0] = "Eve"
* name.given[1] = "A."
* contact.telecom[0].system = #phone
* contact.telecom[0].value = "999-999-9999"
* contact.telecom[0].use = #home
* contact.telecom[1].system = #email
* contact.telecom[1].value = "eve.anyperson@example.com"
* gender = #female
* birthDate = "1955-05-20"
* address.line = "456 Smith Lane"
* address.city = "Anytown"
* address.state = "MA"
* address.postalCode = "12345"
* address.country = "US"
* communication.language = urn:ietf:bcp:47#en-US "English (United States)"
* communication.language.text = "English"
* extension[USCoreRace].extension[ombCategory].valueCoding = OmbRaceCat#2106-3 "White"
* extension[USCoreRace].extension[text].valueString = "White"
* extension[USCoreEthnicity].extension[ombCategory].valueCoding = OmbRaceCat#2135-2 "Hispanic or Latino"
* extension[USCoreEthnicity].extension[text].valueString = "Hispanic or Latino"
* extension[USCoreBirthSex].valueCode = #F

Instance: cancer-patient-adam-everyman
InstanceOf: CancerPatient
Description: "Example of Patient"
* identifier.use = #usual
* identifier.type = IDTYPE#MR "Medical Record Number"
* identifier.system = "http://hospital.example.org"
* identifier.value = "m123"
* name.family = "Everyman"
* name.given[0] = "Adam"
* name.given[1] = "A."
* contact.telecom[0].system = #phone
* contact.telecom[0].value = "333-555-5555"
* contact.telecom[0].use = #home
* contact.telecom[1].system = #email
* contact.telecom[1].value = "adam.everyman@example.com"
* gender = #male
* birthDate = "1962-02-05"
* address.line = "234 Anyway St"
* address.city = "Anytown"
* address.postalCode = "12345"
* address.country = "US"
* communication.language = urn:ietf:bcp:47#en-US "English (United States)"
* communication.language.text = "English"
* extension[USCoreRace].extension[ombCategory].valueCoding = OmbRaceCat#2106-3 "White"
* extension[USCoreRace].extension[text].valueString = "White"
* extension[USCoreEthnicity].extension[ombCategory].valueCoding = OmbRaceCat#2186-5 "Not Hispanic or Latino"
* extension[USCoreEthnicity].extension[text].valueString = "Not Hispanic or Latino"
* extension[USCoreBirthSex].valueCode = #M

Instance: us-core-practitioner-kyle-anydoc
InstanceOf: USCorePractitioner
Description: "Example of Practitioner"
* identifier[NPI].value = "9988776651"
* name.family = "Anydoc"
* name.given = "Kyle"
* name.prefix = "Dr."
* gender = #male
* address.use = #home
* address.line = "567 Healthcare Drive"
* address.city = "Anytown"
* address.state = "MA"
* address.postalCode = "12345"
* address.country = "US"
* qualification.code = http://terminology.hl7.org/CodeSystem/v2-0360#MD "Doctor of Medicine"

Instance: ecog-performance-status-fully-active
InstanceOf: ECOGPerformanceStatus
Description: "Example of ECOG Performance Status"
* status = #final "final"
* code = LNC#89247-1 "ECOG Performance Status score"
* method = SCT#5880005 "Clinical examination"
* subject = Reference(cancer-patient-john-anyperson)
* effectiveDateTime = "2019-04-01"
* performer = Reference(us-core-practitioner-kyle-anydoc)
* valueInteger = 0
* interpretation = LNC#LA9622-7 "Fully active, able to carry on all pre-disease performance without restriction"
* category = ObsCat#survey "Survey"

Instance: karnofsky-performance-status-normal-activity
InstanceOf: KarnofskyPerformanceStatus
Description: "Example of Karnofsky Performance Status"
* status = #final "final"
* code = LNC#89243-0 "Karnofsky Performance Status score"
* method = SCT#5880005 "Clinical examination"
* subject = Reference(cancer-patient-john-anyperson)
* effectiveDateTime = "2019-04-01"
* performer = Reference(us-core-practitioner-kyle-anydoc)
* valueInteger = 90
* interpretation = LNC#LA29176-7 "Able to carry on normal activity; minor signs or symptoms of disease"
* category = ObsCat#survey "Survey"

Instance: cancer-related-surgical-procedure-lobectomy
InstanceOf: CancerRelatedSurgicalProcedure
Description: "Example of Cancer Related Surgical Procedure"
* status = #completed "completed"
* code = SCT#359615001 "Partial lobectomy of lung (procedure)"
* subject = Reference(cancer-patient-john-anyperson)
* asserter = Reference(us-core-practitioner-kyle-anydoc)
* performedDateTime = "2019-03-01"
* extension[treatmentIntent].valueCodeableConcept = SCT#373808002 "Curative - procedure intent"
* reasonReference = Reference(primary-cancer-condition-nsclc)
* bodySite = SCT#31094006  "Structure of lobe of lung (body structure)"
* bodySite.extension[lateralityQualifier].valueCodeableConcept = SCT#7771000 "Left (qualifier value)"
* bodySite.extension[locationQualifier].valueCodeableConcept = SCT#261122009 "Lower (qualifier value)"

Instance: john-anyperson-treatment-volume
InstanceOf: RadiotherapyVolume
Description: "Anatomic volume for John Anyperson's brachytherapy."
* patient = Reference(cancer-patient-john-anyperson)
* description = "Structure of lower lobe of left lung"
* location = SCT#31094006  "Structure of lobe of lung (body structure)"
* locationQualifier[0] = SCT#261122009 "Lower (qualifier value)"
* locationQualifier[1] = SCT#7771000 "Left (qualifier value)"

Instance: tnm-clinical-stage-group-3c
InstanceOf: TNMStageGroup
Description: "Example of TNM Clinical Stage Group"
//* code = LNC#21908-9 "Stage group.clinical Cancer"
* code = SCT#399537006 "Clinical TNM stage grouping"
* valueCodeableConcept = SCT#1222806003 "American Joint Committee on Cancer stage IIIC (qualifier value)"
* status = #final "final"
* method = SCT#897275008 "American Joint Commission on Cancer, Cancer Staging Manual, 8th edition neoplasm staging system (tumor staging)"
* subject = Reference(cancer-patient-john-anyperson)
* focus = Reference(primary-cancer-condition-nsclc)  // added requirement STU3
* effectiveDateTime = "2019-04-01"
* performer = Reference(us-core-practitioner-kyle-anydoc)
* hasMember[0] = Reference(tnm-clinical-primary-tumor-category-cT3)
* hasMember[1] = Reference(tnm-clinical-regional-nodes-category-cN3)
* hasMember[2] = Reference(tnm-clinical-distant-metastases-category-cM0)
* category = ObsCat#imaging "Imaging"

Instance: tnm-clinical-distant-metastases-category-cM0
InstanceOf: TNMDistantMetastasesCategory
Description: "Example of TNM Clinical Distant Metastases Category"
//* code = LNC#21907-1 "Distant metastases.clinical [Class] Cancer"
* code = SCT#399387003 "cM category"
* status = #final "final"
* method = SCT#897275008 "American Joint Commission on Cancer, Cancer Staging Manual, 8th edition neoplasm staging system (tumor staging)"
* subject = Reference(cancer-patient-john-anyperson)
* performer = Reference(us-core-practitioner-kyle-anydoc)
* effectiveDateTime = "2019-04-01"
* valueCodeableConcept = SCT#1229901006 "American Joint Committee on Cancer cM0 (qualifier value)"
* category = ObsCat#imaging "Imaging"

Instance: tnm-clinical-primary-tumor-category-cT3
InstanceOf: TNMPrimaryTumorCategory
Description: "Example of TNM Clinical Primary Tumor Category"
//* code = LNC#21905-5 "Primary tumor.clinical [Class] Cancer"
* code = SCT#399504009 "cT category"
* valueCodeableConcept = SCT#1228938002 "American Joint Committee on Cancer cT3 (qualifier value)"
* status = #final "final"
* method = SCT#897275008 "American Joint Commission on Cancer, Cancer Staging Manual, 8th edition neoplasm staging system (tumor staging)"
* subject = Reference(cancer-patient-john-anyperson)
* performer = Reference(us-core-practitioner-kyle-anydoc)
* effectiveDateTime = "2019-04-01"
* category = ObsCat#imaging "Imaging"

Instance: tnm-clinical-regional-nodes-category-cN3
InstanceOf: TNMRegionalNodesCategory
Description: "Example of TNM Clinical Regional Nodes Category"
//* code = LNC#21906-3 "Regional lymph nodes.clinical [Class] Cancer"
* code = SCT#399534004 "cN category"
* valueCodeableConcept = SCT#1229984001 "American Joint Committee on Cancer cN3 (qualifier value)"
* status = #final "final"
* method = SCT#897275008 "American Joint Commission on Cancer, Cancer Staging Manual, 8th edition neoplasm staging system (tumor staging)"
* subject = Reference(cancer-patient-john-anyperson)
* performer = Reference(us-core-practitioner-kyle-anydoc)
* effectiveDateTime = "2019-04-01"
* category = ObsCat#imaging "Imaging"

Instance: cancer-related-medication-request-gefitinib
InstanceOf: CancerRelatedMedicationRequest
Description: "Example of CancerRelatedMedicationRequest"
* subject = Reference(cancer-patient-john-anyperson)
* status = MedReqStatus#active
* intent = MedReqIntent#order
* authoredOn = "2019-04-01"
* medicationCodeableConcept = RXN#349472 "gefitinib 250 MG Oral Tablet"
* reasonCode = SCT#254637007 "Non-small cell lung cancer (disorder)"
* requester = Reference(us-core-practitioner-kyle-anydoc)
* extension[treatmentIntent].valueCodeableConcept = SCT#373808002 "Curative - procedure intent"
* extension[normalizationBasis].valueCodeableConcept = SCT#301898006 "Body surface area (observable entity)"
* dosageInstruction.text = "250mg orally once daily with or without food"
* dosageInstruction.route = SCT#26643006 "Oral use"
* dosageInstruction.doseAndRate.doseQuantity = 250.0 'mg' "mg"
* dosageInstruction.timing.event = "2019-04-01"
* dosageInstruction.timing.repeat.frequency = 1  // frequency, period and periodUnit to reflect "once per day"
* dosageInstruction.timing.repeat.period = 1
* dosageInstruction.timing.repeat.periodUnit = UCUM#d
* dosageInstruction.timing.repeat.boundsPeriod.start = "2019-04-01"
* dosageInstruction.timing.repeat.boundsPeriod.start = "2019-04-30"
* dosageInstruction.timing.code = TimingAbbreviation#QD // prescriber abbreviation for once daily

Instance: cancer-related-medication-request-cisplatin
InstanceOf: CancerRelatedMedicationRequest
Description: "Example of CancerRelatedMedicationRequest - Chemo Infusion"
* subject = Reference(cancer-patient-john-anyperson)
* status = MedReqStatus#completed
* intent = MedReqIntent#order
* authoredOn = "2019-04-01"
* medicationCodeableConcept = RXN#309311 "cisplatin 1 MG/ML Injectable Solution"
* reasonCode = SCT#254637007 "Non-small cell lung cancer (disorder)"
* requester = Reference(us-core-practitioner-kyle-anydoc)
* extension[treatmentIntent].valueCodeableConcept = SCT#373808002 "Curative - procedure intent"
* dosageInstruction.text = "calculate absolute dose on day of administration."
* dosageInstruction.route = SCT#47625008 "Intravenous use"
* dosageInstruction.doseAndRate.doseQuantity = 75 'mg/m2' "mg/m2"
* dosageInstruction.timing.event = "2019-06-15"
* dosageInstruction.timing.repeat.count = 1  // frequency is one-time on day 1 of first cycle so there should be no repeat."
* note.text = "Day 1 of NSCLC regimen: Cisplatin 75 mg/m2 day 1; docetaxel 75 mg/m2 day 1 every 21 days for 4 cycles."
//* extension[terminationReason].valueCodeableConcept = SCT#182992009  "Treatment completed (situation)"

Instance: cancer-related-medication-request-cisplatin-stopped
InstanceOf: CancerRelatedMedicationRequest
Description: "Example of CancerRelatedMedicationRequest - Chemo Infusion"
* subject = Reference(cancer-patient-john-anyperson)
* status = MedReqStatus#stopped
* statusReason = SCT#407563006 "Treatment not tolerated (situation)"
* intent = MedReqIntent#order
* authoredOn = "2019-05-15"
* medicationCodeableConcept = RXN#309311 "cisplatin 1 MG/ML Injectable Solution"
* reasonCode = SCT#254637007 "Non-small cell lung cancer (disorder)"
* requester = Reference(us-core-practitioner-kyle-anydoc)
* extension[treatmentIntent].valueCodeableConcept = SCT#373808002 "Curative - procedure intent"
* priorPrescription = Reference(cancer-related-medication-request-cisplatin)
* note.text = "Stopped due to blood in urine, possible kidney damage."

Instance: lab-result-observation-hemoglobin
InstanceOf: USCoreObservationLab
Description: "Hemoglobin lab result to support TNMStageGroup example"
* subject = Reference(cancer-patient-adam-everyman)
* status = ObsStatus#final
* code = LNC#718-7 "Hemoglobin [Mass/volume] in Blood"
* effectiveDateTime = "2020-03-06"
* performer = Reference(us-core-practitioner-owen-oncologist)
* valueQuantity = 13.5 'g/dl' "g/dl"
* category[us-core] = ObsCat#laboratory "laboratory"

Instance: history-of-cancer-metastatic-to-liver
InstanceOf: HistoryOfMetastaticCancer
Description: "Example showing history of metastatic cancer in the liver."
* status = #final 
* code = SCT#1098951000119108 "History of cancer metastatic to liver (situation)"
* subject = Reference(cancer-patient-adam-everyman)
* effectiveDateTime = "2018-11-16"
* performer = Reference(us-core-practitioner-owen-oncologist)
* category = ObsCat#social-history "Social History"

Instance: no-history-of-metastatic-cancer 
InstanceOf: HistoryOfMetastaticCancer
Description: "Example showing no history of metastatic cancer"
* status = #final 
* code = SCT#1287652008 "History of metastatic malignant neoplasm (situation)"
* subject = Reference(cancer-patient-john-anyperson)
* effectiveDateTime = "2018-11-16"
* performer = Reference(us-core-practitioner-owen-oncologist)
* valueBoolean = false
* category = ObsCat#social-history "Social History"

Instance: histologic-behavior-and-type-non-small-cell
InstanceOf: HistologicBehaviorAndType
Description: "Example of non-small cell lung cancer."
* extension[relatedCondition].valueReference = Reference(primary-cancer-condition-nsclc)
* subject = Reference(cancer-patient-john-anyperson)
* effectiveDateTime = "2019-04-01"
* valueCodeableConcept = ICDO3#80463/3 "Non-small cell carcinoma"
* specimen = Reference(human-specimen-lung)
* status = #final "final"
* performer = Reference(us-core-practitioner-kyle-anydoc)

Instance: histologic-grade-intermediate
InstanceOf: HistologicGrade
Description: "Example of intermediate histologic grade."
* extension[relatedCondition].valueReference = Reference(primary-cancer-condition-nsclc)
* subject = Reference(cancer-patient-john-anyperson)
* effectiveDateTime = "2019-04-01"
* valueCodeableConcept = SCT#1286893008 "Intermediate histologic grade (qualifier value)"
* method = SCT#1149430001 "World Health Organization classification of tumors histologic grading system fifth edition"
* specimen = Reference(human-specimen-lung)
* status = #final "final"
* performer = Reference(us-core-practitioner-kyle-anydoc)

Instance: tumor-morphology-report-non-small-cell-intermediate-grade
InstanceOf: TumorMorphology
Description: "Example of a tumor morphology report showing non-small cell cancer with an intermediate histologic grade."
* category[us-core] = ObsCat#laboratory
* extension[relatedCondition].valueReference = Reference(primary-cancer-condition-nsclc)
* subject = Reference(cancer-patient-john-anyperson)
* effectiveDateTime = "2019-04-01"
* specimen = Reference(human-specimen-lung)
* hasMember[0] = Reference(histologic-grade-intermediate)
* hasMember[+] = Reference(histologic-behavior-and-type-non-small-cell)
* status = #final "final"
* issued = "2019-04-15T13:28:17.239+02:00"
* performer = Reference(us-core-practitioner-kyle-anydoc)

Instance: rhabdomyosarcoma-risk-assessment-low
InstanceOf: RhabdomyosarcomaRiskAssessment
Description: "Example of rhabdomyosarcoma with a low risk assessment."
* category[us-core] = ObsCat#laboratory
* valueCodeableConcept = SCT#723505004 "Low risk (qualifier value)"
* status = #final "final"
* subject = Reference(cancer-patient-john-anyperson)
* focus = Reference(primary-cancer-condition-nonspecific)
* effectiveDateTime = "2021-04-01"
* performer = Reference(us-core-practitioner-kyle-anydoc)

Instance: all-risk-assessment-high
InstanceOf: ALLRiskAssessment
Description: "Example of leukemia with a standard risk assessment."
* category[us-core] = ObsCat#laboratory
* valueCodeableConcept = NCIT#C122458 "High Risk Acute Leukemia"
* status = #final "final"
* subject = Reference(cancer-patient-john-anyperson)
* focus = Reference(primary-cancer-condition-nonspecific)
* effectiveDateTime = "2021-04-01"
* performer = Reference(us-core-practitioner-kyle-anydoc)

Instance: john-anyperson-hd
InstanceOf: USCoreCondition
Description: "Example of past heart disease"
* subject = Reference(cancer-patient-john-anyperson)
* asserter = Reference(us-core-practitioner-kyle-anydoc)
* category = CondCat#problem-list-item "Problem List Item"
* code = SCT#49601007 "Disorder of cardiovascular system (disorder)"
* verificationStatus = VerStatus#confirmed
* clinicalStatus = ClinStatus#resolved "Resolved"
* extension[condition-assertedDate].valueDateTime = "2000-04-01"

Instance: cancer-patient-lucy-child
InstanceOf: CancerPatient
Description: "Example of Patient"
* identifier.use = #usual
* identifier.type = IDTYPE#MR "Medical Record Number"
* identifier.system = "http://hospital.example.org"
* identifier.value = "m456"
* name.family = "Child"
* name.given[0] = "Lucy"
* name.given[1] = "L."
* gender = #female
* birthDate = "2023-02-05"
* address.line = "567 Anyway St"
* address.city = "Anytown"
* address.postalCode = "12345"
* address.country = "US"
* communication.language = urn:ietf:bcp:47#en-US "English (United States)"
* communication.language.text = "English"
* extension[USCoreRace].extension[ombCategory].valueCoding = OmbRaceCat#2106-3 "White"
* extension[USCoreRace].extension[text].valueString = "White"
* extension[USCoreEthnicity].extension[ombCategory].valueCoding = OmbRaceCat#2186-5 "Not Hispanic or Latino"
* extension[USCoreEthnicity].extension[text].valueString = "Not Hispanic or Latino"
* extension[USCoreBirthSex].valueCode = #F

Instance: lansky-play-performance-status-twenty
InstanceOf: LanskyPlayPerformanceStatus
Description: "Example of Lansky Play Performance Status."
* status = #final "final"
* method = SCT#5880005 "Clinical examination"
* category = ObsCat#exam "Exam"
* subject = Reference(cancer-patient-lucy-child)
* effectiveDateTime = "2019-04-01"
* performer = Reference(us-core-practitioner-kyle-anydoc)
* valueInteger = 20
* interpretation = NCIT#C70540 "Lansky Performance Status 20"

Instance: deauville-scale-five
InstanceOf: DeauvilleScale
Description: "Example of Deauville Scale."
* focus = Reference(primary-cancer-condition-nonspecific)
* category = ObsCat#exam "Exam"
* subject = Reference(cancer-patient-john-anyperson)
* performer = Reference(us-core-practitioner-kyle-anydoc)
* valueInteger = 5
* interpretation = NCIT#C99750 "London Deauville Criteria Point Scale 5"
* status = #final "final"
* effectiveDateTime = "2019-04-01"

Instance: body-surface-area-example
InstanceOf: BodySurfaceArea
Description: "Example of body surface area."
* valueQuantity = 0.27 'm^2' "m^2"
* status = #final "final"
* subject = Reference(cancer-patient-lucy-child)
* effectiveDateTime = "2023-04-01"
* performer = Reference(us-core-practitioner-kyle-anydoc)
