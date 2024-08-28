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

    footer,
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

    footer,
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
    hl,
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

    footer.footer {
        display: flex;
        flex-direction: row;
        flex-wrap: nowrap;
        justify-content: center;
        align-items: center;
        height: auto;
        padding: 0;
        margin: 200px 0 0 0;
    }

    footer.footer * {
        height: auto;
        width: auto;
        margin: 10px;
    }
</style>
<!--
<div class="under-construction">
    <span>Disclaimer: This FHIR Implementation Guide is under construction. The content neither can be considered stable nor completed.</span>
</div>
-->

## {{page-title}}

### Description

This FHIR Implementation Guide (IG) has been developed as part of [Work Package 6 - Organization of comprehensive, High-Quality Cancer Care in Comprehensive Cancer Care Networks](https://crane4health.eu/wp6-organization-of-comprehensive-high-quality-cancer-care-in-comprehensive-cancer-care-networks-cccns/), Task 6.4 in which the methodology to create patient pathways was enhanced and now stronger includes the patient voice and patient-centeredness elements. This includes Sub-Task 6.4.4, the preparations for a standardized digital implementation of patient pathways in CCCNs.

### Approach

To address this task, the following steps have been performed:

1. Research for preliminary work to represent patient pathways (or the more general understanding and concept of pathways and guidelines) using HL7 FHIR.

2. Derive appropriate FHIR profiles from any identified preliminary work, esp. the [FHIR Clinical Guidelines Implementation Guide (CPG IG)](https://build.fhir.org/ig/HL7/cqf-recommendations/), to represent the BPMN model elements used to model the patient pathway.

3. Create a FHIR definitions using the derived FHIR profiles based on the BPMN model of the patient pathway.

4. Improve semantic interoperability by using standardized international terminologies for the medical and health information domains, e.g. [SNOMED Clinical Terms (CT)](https://snomed.org) or [International Classification of Diseases (ICD)](https://www.who.int/standards/classifications/classification-of-diseases).

5. Create an FHIR Implementation Guide to present the developed FHIR profiles and definitions for the patient pathway.

<footer class="footer">
<div class="eu-logo"><img src="https://crane4health.eu/wp-content/uploads/2022/10/cofounded-eu-logo.png"/></div>
<div>
<h4>Project Management Team</h4>
<p>
National Institute of Public Health<br>
of the Republic of Slovenia (NIJZ)<br>
Trubarjeva 2, SI-1000 Ljubljana<br>
Email: crane@nijz.si<br>
Tel:  +386 1 330 2697
</p>
</div>
<div>
<h4>Dissemination Team</h4>
<p>
Regional Health Authority of Attica (1st YPE)<br>
3, Zacharof Str., 11521, Athens, Greece<br>
Email: crane.dissemination@1dype.gov.gr<br>
Tel: +30 2132010552-474-483<br>
Website: www.1dype.gov.gr
</p>
</div>
</footer>