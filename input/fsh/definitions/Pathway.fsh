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
* action[=].selectionBehavior = #any
* action[=].definitionCanonical = Canonical(crane-cccn-definition-activity-screening)

// BPMN Group: CCCN Entry
* action[+].id = "cccn-entry"
* action[=].title = "CCCN Entry"
* action[=].description = "CCCN Entry"
* action[=].code = #provide-counseling
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
* action[=].description = "Treatment"
* action[=].code = #guideline-based-care
* action[=].relatedAction[+].actionId = "cccn-pre-care"
* action[=].relatedAction[=].relationship = #after-end
* action[=].relatedAction[+].actionId = "cccn-post-care"
* action[=].relatedAction[=].relationship = #before-start
* action[=].selectionBehavior = #one-or-more

// BPMN Group: Follow-Up / End-of-life Care
* action[+].id = "cccn-post-care"
* action[=].title = "Follow-Up / End-of-life Care"
* action[=].description = "Follow-Up / End-of-life Care"
* action[=].code = #monitor-and-follow-up-of-patient
* action[=].relatedAction[+].actionId = "cccn-care"
* action[=].relatedAction[=].relationship = #after-end
* action[=].relatedAction[+].actionId = "cccn-exit"
* action[=].relatedAction[=].relationship = #before-start
* action[=].selectionBehavior = #one-or-more

// BPMN Group: End of CCCN Care
* action[+].id = "cccn-exit"
* action[=].title = "End of CCCN Care"
* action[=].description = "End of CCCN Care"
* action[=].code = #dischage-referral-of-patient
* action[=].relatedAction[+].actionId = "cccn-post-care"
* action[=].relatedAction[=].relationship = #after-end
* action[=].selectionBehavior = #all

/*
* action[+].id = "Activity_0xkex58"
* action[=].title = "therapy"
* action[=].groupingBehavior = #logical-group
* action[=].selectionBehavior = #any
* action[=].action[0].id = "Activity_1tnk1np"
* action[=].action[=].title = "surgery"
* action[=].action[+].id = "Activity_1fc895b"
* action[=].action[=].title = "systemic therapy"
* action[=].action[+].id = "Activity_0vb4x4m"
* action[=].action[=].title = "radio(chemo)-therapy"
* action[=].action[+].id = "Activity_1mvnvbc"
* action[=].action[=].title = "other therapy"
* action[=].action[+].id = "Activity_1vyn60u"
* action[=].action[=].title = "end-of-life care/ best supportive care"
* action[+].id = "Activity_1o0prcl"
* action[=].title = "end of follow-up consultation"
* action[=].relatedAction.actionId = "Activity_1lzf9md"
* action[=].relatedAction.relationship = #after-end
* action[+].id = "Activity_1lzf9md"
* action[=].title = "follow-up care, surveillance"
* action[=].relatedAction.actionId = "Activity_0sqh02u"
* action[=].relatedAction.relationship = #after-end
* action[+].id = "Activity_0sqh02u"
* action[=].title = "follow-up planning"
* action[=].relatedAction[0].actionId = "Activity_0d6f9vx"
* action[=].relatedAction[=].relationship = #after-end
* action[=].relatedAction[+].actionId = "Activity_04dz2ib"
* action[=].relatedAction[=].relationship = #after-end
* action[=].relatedAction[+].actionId = "Activity_1lzf9md"
* action[=].relatedAction[=].relationship = #before-start
* action[+].id = "Activity_0d6f9vx"
* action[=].title = "rehabilitation (optional)"
* action[=].relatedAction.actionId = "Activity_1kfbd29"
* action[=].relatedAction.relationship = #after-end
* action[+].id = "Activity_04dz2ib"
* action[=].title = "supportive care/ early integration of palliative care"
* action[=].relatedAction.actionId = "Activity_1kfbd29"
* action[=].relatedAction.relationship = #after-end
* action[+].id = "Activity_0j2qg6r"
* action[=].title = "post-operative/-\ntherapeutic/\nmid-therapeutic\nTB/MTB meeting"
* action[=].relatedAction.actionId = "Activity_0xkex58"
* action[=].relatedAction.relationship = #after-end
* action[+].id = "Activity_1kfbd29"
* action[=].title = "patient consultation after diagnosis with shared decision-making"
* action[=].relatedAction[0].actionId = "Activity_0xkex58"
* action[=].relatedAction[=].relationship = #before-start
* action[=].relatedAction[+].actionId = "Activity_0d6f9vx"
* action[=].relatedAction[=].relationship = #before-start
* action[=].relatedAction[+].actionId = "Activity_04dz2ib"
* action[=].relatedAction[=].relationship = #before-start
* action[+].id = "Activity_1f73x26"
* action[=].title = "molecular tumorboard (MTB) meeting"
* action[=].relatedAction.actionId = "Activity_1oagskd"
* action[=].relatedAction.relationship = #after-end
* action[=].groupingBehavior = #logical-group
* action[=].selectionBehavior = #any
* action[+].id = "Activity_1oagskd"
* action[=].title = "standard tumorboard (TB) meeting"
* action[=].groupingBehavior = #logical-group
* action[=].selectionBehavior = #any
* action[+].id = "Activity_16oze6f"
* action[=].title = "staging diagnostics"
* action[=].groupingBehavior = #logical-group
* action[=].selectionBehavior = #any
* action[+].id = "Activity_08dp53e"
* action[=].title = "CCCN discharge"
* action[=].relatedAction.actionId = "Activity_16oze6f"
* action[=].relatedAction.relationship = #after-end
* action[+].id = "Activity_1rdfhgh"
* action[=].title = "patient consultation"
* action[=].groupingBehavior = #logical-group
* action[=].selectionBehavior = #any
* action[+].id = "Activity_09q6006"
* action[=].title = "screening (LDCT)"
* action[=].relatedAction.actionId = "Activity_1rdfhgh"
* action[=].relatedAction.relationship = #before-start
* action[+].id = "Activity_13q8utx"
* action[=].title = "end-of-life / best supportive care"
* action[=].relatedAction[0].actionId = "Activity_0d6f9vx"
* action[=].relatedAction[=].relationship = #after-end
* action[=].relatedAction[+].actionId = "Activity_04dz2ib"
* action[=].relatedAction[=].relationship = #after-end
*/