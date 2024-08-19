Instance: crane-cccn-definition-activity-screening
InstanceOf: CraNE_CCCN_Pathway_Activity
Title: "CraNE CCCN Pathway Activity Screening Definition"
Description: "CraNE Comprehensive Cancer Care Network Pathway Activity Screening Definition"
Usage: #definition
* insert Header

* title = "Screening"

// BPMN Task: Screening (LDCT)
* action[+].title = "Screening (LDCT)"
* action[=].description = "Screening by low-dose computer tomography (LDCT)"
* action[=].code = $SCT#241540006 "Computed tomography of lungs (procedure)"
* action[=].requiredBehavior = #must-unless-documented
* action[=].cardinalityBehavior = #multiple
* action[=].condition[+].kind = #start
* action[=].condition[=].expression.description = "Citizen is heavy smoker"
* action[=].condition[=].expression.language = #text/cql
* action[=].condition[=].expression.expression = "Is Heavy Smoker"
* action[=].condition[+].kind = #start
* action[=].condition[=].expression.description = "Citizen is 55 - 74 years old"
* action[=].condition[=].expression.language = #text/cql
* action[=].condition[=].expression.expression = "Age Between 55 and 74 Years"
* action[=].condition[+].kind = #start
* action[=].condition[=].expression.description = "Citizen is at least considered as candidate for a European Society for Medical Oncology (ESMO) program"
* action[=].condition[=].expression.language = #text/cql
* action[=].condition[=].expression.expression = "At Least Candidate for ESMO Program"

// TODO: Check alternative; which representation is more understandable and correct
//* action[=].condition.kind = #start
//* action[=].condition.expression.description = "Citizen with high risk for lung cancer"
//* action[=].condition.expression.language = #text/cql
//* action[=].condition.expression.expression = "Is Heavy Smoker and Age Between 55 and 74 Years and Candidate for European Society for Medical Oncology (ESMO) Program"