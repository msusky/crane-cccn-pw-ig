Instance: crane-cccn-definition-activity-follow-up
InstanceOf: CraNE_CCCN_Lung_Cancer_Pathway_Activity
Title: "CraNE CCCN Lung Cancer Pathway Activity Follow-Up Definition"
Description: "CraNE Comprehensive Cancer Care Network Lung Cancer Pathway Activity Follow-Up Definition"
Usage: #definition
* insert Header

* title = "Follow-Up"

// BPMN Task: Follow-Up Planning
// TODO: National lung cancer follow-up guidelines Input
* action[+].id = "follow-up-planning"
* action[=].title = "Follow-Up Planning"
* action[=].description = "Follow-Up Planning"
* action[=].code = $SCT#281036007 "Follow-up consultation (procedure)"
* action[=].code = $SCT#713603004 "Advance care planning (procedure)"
* action[=].condition[+].kind = #start
* action[=].condition[=].expression.description = "Conduct End-of-life (EOLC) or Best Supportive Care (BSC)? [No]"
* action[=].condition[=].expression.language = #text/cql
* action[=].condition[=].expression.expression = "Plan Follow-Up"
* action[=].relatedAction.actionId = "follow-up-care"
* action[=].relatedAction.relationship = #before-start

// BPMN Task: Follow-Up Care. Surveillance
// TODO: Check loop implementation of "Follow-Up [Recurrence]" -> "Patient Consultation"
// TODO: Eventually remove relatedAction.actionId = cccn-post-care
* action[+].id = "follow-up-care"
* action[=].title = "Follow-Up Care, Surveillance"
* action[=].description = "Follow-Up Care, Surveillance"
* action[=].code = $SCT#225304007 "Implementation of planned interventions (procedure)"
* action[=].code = $SCT#710993005 "Monitoring response to treatment (regime/therapy)"
* action[=].code = $SCT#225418004 "Surveillance of condition (regime/therapy)"
* action[=].condition[+].kind = #end
* action[=].condition[=].expression.description = "End of follow-up according to follow-up timeframes"
* action[=].condition[=].expression.language = #text/cql
* action[=].condition[=].expression.expression = "Planned End of Follow-Up"
* action[=].condition[+].kind = #end
* action[=].condition[=].expression.description = "Suspicion of secondary metastases or recurrence"
* action[=].condition[=].expression.language = #text/cql
* action[=].condition[=].expression.expression = "Local or Distant Recurrence Suspicion"
* action[=].relatedAction.actionId = "follow-up-planning"
* action[=].relatedAction.relationship = #after-end
* action[=].cardinalityBehavior = #multiple