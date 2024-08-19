Instance: crane-cccn-definition-activity-follow-up
InstanceOf: CraNE_CCCN_Pathway_Activity
Title: "CraNE CCCN Pathway Activity Follow-Up Definition"
Description: "CraNE Comprehensive Cancer Care Network Pathway Activity Follow-Up Definition"
Usage: #definition
* insert Header

* title = "Follow-Up"

// BPMN Task: Therapy / End-of-life care/ best supportive care
* action[+].id = "eol-supportive-care"
* action[=].title = "End-of-life Care/ Supportive Care"
* action[=].description = "End-of-life Care/ Supportive Care"
* action[=].code = $SCT#713058002 "End of life care planning (procedure)"
* action[=].code = $SCT#362964009 "Palliative procedure (procedure)"
* action[=].condition[+].kind = #start
* action[=].condition[=].expression.description = "Conduct End-of-life (EOLC) or Best Supportive Care (BSC)? [Yes]"
* action[=].condition[=].expression.language = #text/cql
* action[=].condition[=].expression.expression = "No Follow-Up"

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
* action[=].condition[+].kind = #stop
* action[=].condition[=].expression.description = "End of follow-up according to follow-up timeframes"
* action[=].condition[=].expression.language = #text/cql
* action[=].condition[=].expression.expression = "Planned End of Follow-Up"
* action[=].condition[+].kind = #stop
* action[=].condition[=].expression.description = "Suspicion of secondary metastases or recurrence"
* action[=].condition[=].expression.language = #text/cql
* action[=].condition[=].expression.expression = "Local or Distant Recurrence Suspicion"
* action[=].relatedAction.actionId = "follow-up-planning"
* action[=].relatedAction.relationship = #after-end
* action[=].relatedAction.actionId = "follow-up-end"
* action[=].relatedAction.relationship = #before-start
* action[=].cardinalityBehavior = #multiple

// BPMN Task: End of Follow-Up Consultation
* action[+].id = "follow-up-end"
* action[=].title = "End of Follow-Up Consultation"
* action[=].description = "End of Follow-Up Consultation"
* action[=].code = $SCT#281036007 "Follow-up consultation (procedure)"
* action[=].trigger.type = #named-event
* action[=].trigger.name = "End of Follow-Up Accorting to Follow-Up Treatment"
* action[=].relatedAction.actionId = "follow-up-care"
* action[=].relatedAction.relationship = #after-end