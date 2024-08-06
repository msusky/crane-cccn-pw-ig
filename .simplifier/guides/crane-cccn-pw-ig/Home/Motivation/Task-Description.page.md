<style>
    html, body, header, nav, table * {
        font-family: "Work Sans", sans-serif;
        font-size: 100%;
        line-height: 2em;
    }

    body,
    table * {
        background-color: #cfdbd9 !important;
    }

    nav *,
    th,
    .under-construction span,
    .dropdown.open > a:hover {
        color: #cfdbd9 !important;
    }

    h1,
    h2,
    h3,
    nav *,
    th,
    .under-construction span {
        text-transform: uppercase !important;
    }

    th,
    nav.navbar {
        background-color: #81368d !important;
    }

    content a,
    h1,
    h2,
    h3,
    nav.navbar a:hover,
    .dropdown-menu *,
    .title *,
    .hl {
        color: #81368d !important;
    }

    .title {
        text-align: center;
    }

    a,
    .title *,
    .under-construction span {
        font-weight: bold;
    }

    .hl7-logo a {
        display: none;
    }

    .hl7-logo {
        background-image: url("https://crane4health.eu/wp-content/uploads/2023/01/cropped-cropped-cranelogo.png");
        background-repeat: no-repeat;
        background-size: 86px 70px;
        height: 90px;
    }

    .under-construction {
        width: 100%;
        height: 3em;
        line-height: 3em;
        text-align: center;
        background-color: #da4453;
    }

    .under-construction span {
        vertical-align: middle;
    }
</style>

<div class="under-construction">
    <span>Disclaimer: This FHIR Implementation Guide is under construction. The content neither can be considered stable nor completed.</span>
</div>

## {{page-title}}

This implementation guide has been developed as part of [Work Package 6 - Organization of comprehensive, High-Quality Cancer Care in Comprehensive Cancer Care Networks](https://crane4health.eu/wp6-organization-of-comprehensive-high-quality-cancer-care-in-comprehensive-cancer-care-networks-cccns/). In Task 6.4 the methodology to create patient pathways was enhanced and now stronger includes the patient voice and patient-centeredness elements. In addition, interoperability guidelines for the digitalization of patient pathways in CCCNs and CCC were prepared.

This implementation guide targets the latter sub-task with the overall objective of creating interoperability guidelines for the developed patient pathway. The overall interoperability will be increased by addressing syntactic and semantic interoperability of the patient pathway using the HL7 FHIR standard and standardized terminology of the health care domain. The following steps will be performed to fulfill the sub-task:

1. Create an implementation guide which describe the patient pathway and its HL7 FHIR specification
2. Transfer the BPMN process model of the patient pathway using HL7 FHIR
3. Annotate the core elements of the patient pathway with standardized terminology
4. Optional: Increase reusability and decrease redundancy of core elements