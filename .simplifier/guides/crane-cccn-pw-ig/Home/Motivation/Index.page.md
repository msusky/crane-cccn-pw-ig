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

The patient pathway template was modeled using the Business Process and Modeling Notation (BPMN) as reported in [Deliverable D6.4.2](https://crane4health.eu/wp6-organization-of-comprehensive-high-quality-cancer-care-in-comprehensive-cancer-care-networks-cccns/). BPMN is suitable to capture, depict and describe the different roles, events, decisions, activities, sequences of activities and data flows involved in the treatment of lung cancer patients.

Representing the patient pathway using BPMN has the advantage, that the patient pathway is provided in an understandable way to non-technical stakeholders and, additionally, when stored in a standardized format using BPMN eXtensible Markup Landuage (XML), it enables the processing and exchange of information related to the patient pathway while increasing interoperability. On the other site, due to the broad application domain of BPMN language, some limitations regarding the semantic interoperability exists, esp. with regards to the complex concepts of various health information domains. Despite the fact that BPMN is extensible and further supporting modeling languages, such as Decision Model and Notation (DMN), exist, other international standards evolved and have been established in health information domains in recent years. For example, the use of the [HL7 FHIR standard](https://hl7.org/fhir/) was recommended by the European Commission to Member States, when developing solutions for the exchange of electronic health data (see [Commission Recommendation on a European Electronic Health Record exchange format incl. Annex](https://digital-strategy.ec.europa.eu/en/library/recommendation-european-electronic-health-record-exchange-format)).

Due to the nature of the CraNE Joint Action by involving CCCNs of different EU Member States and following the recommendation of the European Commission regarding the exchange of health information in the European Union, the developed patient pathway, currently modeled using the BPMN language, should be specified using HL7 FHIR to address this recommendation and to provide the foundation for a sustainable standardized digital implementation of the patient pathway.

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