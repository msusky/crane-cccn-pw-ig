// NOTE: Represents the CraNE CCCN lung cancer pathway with no alternatives, strategies or options
Instance: crane-cccn-definition-pathway
InstanceOf: CraNE_CCCN_Lung_Cancer_Pathway
Title: "CraNE CCCN Lung Cancer Pathway Definition"
Description: "CraNE Comprehensive Cancer Care Network Lung Cancer Pathway Definition"
Usage: #definition
* insert Header
// NOTE: Pathway with single strategy
* type = #clinical-protocol

// NOTE: Intention of the pathway
// TODO: Probably needs expert validation
* goal.description = $SCT#363358000 "Malignant tumor of lung (disorder)"
* goal.addresses = $ICD10#C34- "Malignant neoplasm of bronchus and lung"

// NOTE: Main pathway strategy
* action.title = "CCCN Lung Cancer Process Flow Recommendation"
* action.description = "Process flow recommendation for the treatment of lung cancer patients within a CCCN"
* action.code = #guideline-based-treatment
* action.definitionCanonical = Canonical(crane-cccn-definition-process-flow)

// NOTE: Represents the CraNE CCCN lung cancer pathway process flow
Instance: crane-cccn-definition-process-flow
InstanceOf: CraNE_CCCN_Lung_Cancer_Pathway_Process_Flow
Title: "CraNE CCCN Lung Cancer Pathway Process Flow Definition"
Description: "CraNE Comprehensive Cancer Care Network Lung Cancer Pathway Process Flow Definition"
Usage: #definition
* insert Header

// BPMN Group: Screening
* action[+].id = "cccn-pre-entry"
* action[=].title = "Screening"
* action[=].description = "Screening"
* action[=].code = #determine-diagnosis
* action[=].relatedAction.actionId = "cccn-entry"
* action[=].relatedAction.relationship = #before-start
* action[=].selectionBehavior = #all
* action[=].definitionCanonical = Canonical(crane-cccn-definition-activity-screening)

// BPMN Group: CCCN Entry
// TODO: Check loop implementation of "Follow-Up [Recurrence]" -> "Patient Consultation"
// TODO: Eventually remove relatedAction.actionId = cccn-post-care
* action[+].id = "cccn-entry"
* action[=].title = "CCCN Entry"
* action[=].description = "CCCN Entry"
* action[=].code = #provide-counseling
* action[=].relatedAction[+].actionId = "cccn-post-care"
* action[=].relatedAction[=].relationship = #after-end
* action[=].relatedAction[+].actionId = "cccn-pre-entry"
* action[=].relatedAction[=].relationship = #after-end
* action[=].relatedAction[+].actionId = "cccn-post-entry"
* action[=].relatedAction[=].relationship = #before-start
* action[=].selectionBehavior = #all
* action[=].definitionCanonical = Canonical(crane-cccn-definition-activity-patient-consultation)

// BPMN Group: Staging Diagnostics
* action[+].id = "cccn-post-entry"
* action[=].title = "Staging Diagnostics"
* action[=].description = "Staging Diagnostics"
* action[=].code = #diagnostic-testing
* action[=].relatedAction[+].actionId = "cccn-entry"
* action[=].relatedAction[=].relationship = #after-end
* action[=].relatedAction[+].actionId = "cccn-pre-care"
* action[=].relatedAction[=].relationship = #before-start
* action[=].selectionBehavior = #all
* action[=].definitionCanonical = Canonical(crane-cccn-definition-activity-staging-diagnostics)

// BPMN Group: Treatment Planning
* action[+].id = "cccn-pre-care"
* action[=].title = "Treatment Planning"
* action[=].description = "Treatment Planning"
* action[=].code = #guideline-based-care
* action[=].relatedAction[+].actionId = "cccn-post-entry"
* action[=].relatedAction[=].relationship = #after-end
* action[=].relatedAction[+].actionId = "cccn-care"
* action[=].relatedAction[=].relationship = #before-start
* action[=].selectionBehavior = #all
* action[=].definitionCanonical = Canonical(crane-cccn-definition-activity-treatment-planning)

// BPMN Group: Treatment
* action[+].id = "cccn-care"
* action[=].title = "Treatment"
* action[=].description = "Treatment / End-of-life Care"
* action[=].code = #guideline-based-care
* action[=].relatedAction[+].actionId = "cccn-pre-care"
* action[=].relatedAction[=].relationship = #after-end
* action[=].relatedAction[+].actionId = "cccn-post-care"
* action[=].relatedAction[=].relationship = #before-start
* action[=].selectionBehavior = #all
* action[=].definitionCanonical = Canonical(crane-cccn-definition-activity-treatment)

// BPMN Group: Follow-Up / End-of-life Care
* action[+].id = "cccn-post-care"
* action[=].title = "Follow-Up / End-of-life Care"
* action[=].description = "Follow-Up / End-of-life Care"
* action[=].code = #monitor-and-follow-up-of-patient
* action[=].relatedAction[+].actionId = "cccn-care"
* action[=].relatedAction[=].relationship = #after-end
* action[=].relatedAction[+].actionId = "cccn-exit"
* action[=].relatedAction[=].relationship = #before-start
* action[=].selectionBehavior = #all
* action[=].definitionCanonical = Canonical(crane-cccn-definition-activity-follow-up)

// BPMN Group: End of CCCN Care
* action[+].id = "cccn-exit"
* action[=].title = "End of CCCN Care"
* action[=].description = "End of CCCN Care"
* action[=].code = #dischage-referral-of-patient
* action[=].relatedAction[+].actionId = "cccn-post-care"
* action[=].relatedAction[=].relationship = #after-end
* action[=].selectionBehavior = #all
* action[=].definitionCanonical = Canonical(crane-cccn-definition-activity-end-of-care)