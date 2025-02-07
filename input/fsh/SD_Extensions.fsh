Extension: RelatedCondition
Id: mcode-related-condition
Title:  "Related Condition Extension"
Description: "A condition that has a relationship with the resource."
* insert ExtensionContext(DomainResource)
* insert ExtensionContext(Extension)
* insert ExtensionContext(Observation)
* insert ExtensionContext(DiagnosticReport)
* insert ExtensionContext(BodyStructure)
* ^extension[FMM].valueInteger = 4
* value[x] only CodeableConcept or Reference(Condition) 
* value[x] 1..1

Extension: RelatedConditionAbsent
Id: mcode-related-condition-absent
Title:  "Related Condition Absent Extension"
Description: "A condition that is NOT present, related to the resource."
* insert ExtensionContext(DomainResource)
* insert ExtensionContext(Extension)
* insert ExtensionContext(Observation)
* ^extension[FMM].valueInteger = 4
* value[x] only CodeableConcept
* value[x] 1..1

Extension: CancerDiseaseStatusEvidenceType
Id: mcode-cancer-disease-status-evidence-type
Title: "Cancer Disease Status Evidence Type Extension"
Description: "Categorization of the kind of evidence contributing to a clinical judgment on cancer disease progression."
* insert ExtensionContext(Observation)
* ^extension[FMM].valueInteger = 4
* value[x] only CodeableConcept
* value[x] from CancerDiseaseStatusEvidenceTypeVS (required)
* value[x] 1..1

Extension: HistologyMorphologyBehavior
Id: mcode-histology-morphology-behavior
Title: "Histology-Morphology-Behavior Extension"
Description: "An extension describing the morphologic and behavioral characteristics of the cancer."
* insert ExtensionContext(Condition)
* ^extension[FMM].valueInteger = 4
* value[x] only CodeableConcept
* value[x] from HistologyMorphologyBehaviorVS (extensible)
* value[x] 1..1

Extension: BodyLocationQualifier
Id: mcode-body-location-qualifier
Title: "Body Location Qualifier Extension"
Description: "Qualifier to refine an body location. These include qualifiers for relative location, directionality, number, and plane, and exclude qualifiers for laterality."
// context removed as per FHIR-32243 for STU2 // re-added as part of STU4 because radiation therapy IG was created
* insert ExtensionContext(Specimen.collection.bodySite)
* insert ExtensionContext(Procedure.bodySite)
* insert ExtensionContext(Condition.bodySite)
* insert ExtensionContext(Observation.bodySite)
* insert ExtensionContext(ServiceRequest.bodySite)
* insert ExtensionContext(DomainResource)
* insert ExtensionContext(Extension)
* insert ExtensionContext(CodeableConcept)
* ^extension[FMM].valueInteger = 4
* value[x] only CodeableConcept
* value[x] from BodyLocationQualifierVS (required)
* value[x] 1..1

Extension: LateralityQualifier
Id: mcode-laterality-qualifier
Title: "Laterality Qualifier Extension"
Description: "Qualifier to specify laterality."
// context removed as per FHIR-32243 for STU2 // re-added as part of STU4 because radiation therapy IG was created
* insert ExtensionContext(Specimen.collection.bodySite)
* insert ExtensionContext(Procedure.bodySite)
* insert ExtensionContext(Condition.bodySite)
* insert ExtensionContext(Observation.bodySite)
* insert ExtensionContext(DomainResource)
* insert ExtensionContext(Extension)
* insert ExtensionContext(CodeableConcept)
* insert ExtensionContext(ServiceRequest.bodySite)
* ^extension[FMM].valueInteger = 4
* value[x] only CodeableConcept
* value[x] from LateralityQualifierVS (required)
* value[x] 1..1

Extension: TreatmentTerminationReason
Id: mcode-treatment-termination-reason
Title: "Treatment Termination Reason Extension (deprecated)"
Description: "A code explaining the unplanned or premature termination, or normal completion, of a plan of treatment, course of medication, or research study.
This extension is deprecated since it is redundant with the statusReason field."
// context removed as per FHIR-32243 for STU2 // re-added as part of STU4 because radiation therapy IG was created
//* insert ExtensionContext(MedicationRequest) - not used in this profile anymore
* insert ExtensionContext(Procedure)       
* insert ExtensionContext(DomainResource)
* insert ExtensionContext(Extension)
* ^extension[FMM].valueInteger = 3
* value[x] only CodeableConcept
* value[x] from TreatmentTerminationReasonVS (extensible)
* value[x] 1..1
* ^status = #retired

Extension: ProcedureIntent
Id: mcode-procedure-intent
Title: "Procedure Intent Extension"
Description: "The purpose of a treatment, medication, or procedure."
// context removed as per FHIR-32243 for STU2 // re-added as part of STU4 because radiation therapy IG was created
* insert ExtensionContext(MedicationRequest)
* insert ExtensionContext(MedicationAdministration)
* insert ExtensionContext(Procedure)         
* insert ExtensionContext(DomainResource)
* insert ExtensionContext(Extension)
* insert ExtensionContext(ServiceRequest)
* ^extension[FMM].valueInteger = 4
* value[x] only CodeableConcept
* value[x] from ProcedureIntentVS (extensible)
* value[x] 1..1

Extension: NormalizationBasis
Id: mcode-normalization-basis
Title:  "Normalization Basis Extension"
Description: "The method (e.g., body weight, body surface area, flat dose, age) used to normalize the medication dosage."
* insert ExtensionContext(DomainResource)
* insert ExtensionContext(Extension)
* insert ExtensionContext(MedicationRequest)
* insert ExtensionContext(MedicationAdministration)
* ^extension[FMM].valueInteger = 4
* value[x] only CodeableConcept
* value[x] from NormalizationBasisVS (required)
* value[x] 1..1
