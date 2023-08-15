Instance: mcode-sender-patients-and-cancer-conditions
InstanceOf: CapabilityStatement
Usage: #definition
* description = "Uses `_include` to retrieve a Bundle of Condition resources with a code in mCODE's cancer condition value set, along with the associated Patient resources. Use ONLY when reverse chaining is not available on the system."
* name = "CapabilityStatementSenderPatientsAndCancerConditions"
* title = "mCODE Data Sender CapabilityStatement: Get in-scope patients (and associated Conditions) using _include"
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><h2 id=\"title\">mCODE Data Sender CapabilityStatement: Get in-scope patients (and associated Conditions) using _include</h2><ul><li><b>Official URL:</b><code>http://hl7.org/fhir/us/mcode/CapabilityStatement/mcode-sender-patients-and-cancer-conditions</code></li><li><b>Implementation Guide Version:</b> None</li><li><b>FHIR Version:</b> 4.0.1</li><li><b>Intended Use:</b> Requirements</li><li><b>Supported Formats: </b>XML, JSON</li><li><b>Published:</b> 2020-10-30 07:15:00.000000-04:00</li><li><b>Published by:</b> None</li><li><b>Status:</b> Draft (experimental)</li></ul><p>Uses <code>_include</code> to retrieve a Bundle of Condition resources with a code in mCODE's cancer condition value set, along with the associated Patient resources. Use ONLY when reverse chaining is not available on the system.</p><!-- No support expectation extension --><h3 class=\"no_toc\" id=\"igs\">Support the Following Implementation Guides:</h3><ul><li><a href=\"http://hl7.org/fhir/us/mcode/ImplementationGuide/hl7.fhir.us.mcode\">minimal Common Oncology Data Elements (mCODE) Implementation Guide</a></li></ul><!-- Imports --><h3 class=\"no_toc\" id=\"should_css\">Include And Support Everything In The Following CapabilityStatements:</h3><ul><li><a href=\"http://hl7.org/fhir/us/core/CapabilityStatement/us-core-server\">US Core Server CapabilityStatement</a></li></ul><!-- REST Behavior --><h3 id=\"behavior\">FHIR Server RESTful Capabilities</h3><p>An mCODE Server <strong>SHALL</strong>:</p><ol><li>Support all profiles defined in this Implementation Guide..</li><li>Implement the RESTful behavior according to the FHIR specification.</li><li>Return the following response classes:<ul><li>(Status 400): invalid parameter</li><li>(Status 401/4xx): unauthorized request</li><li>(Status 403): insufficient scope</li><li>(Status 404): unknown resource</li><li>(Status 410): deleted resource.</li></ul></li><li>Support json source formats for all mCODE interactions.</li><li>Identify the mCODE  profiles supported as part of the FHIR <code>meta.profile</code> attribute for each instance.</li><li>Support the searchParameters on each profile individually and in combination.</li></ol><p>The mCODE Server <strong>SHOULD</strong>:</p><ol><li>Support xml source formats for all mCODE interactions.</li></ol><p id=\"security\"><strong>Security:</strong></p><ol><li>See the <a href=\"https://www.hl7.org/fhir/security.html#general\">General Security Considerations</a> section for requirements and recommendations.</li><li>A server <strong>SHALL</strong> reject any unauthorized requests by returning an <code>HTTP 401</code> unauthorized response code.</li></ol><h3 class=\"no_toc\" id=\"resource--details\">RESTful Capabilities by Resource/Profile:</h3><p><strong>Summary</strong></p><p><i>&#x2666; = <b>SHALL</b> expectation</i>;<i>&#x22C4; = <b>SHOULD</b> expectation</i>;<i>&#x25BF; = <b>MAY</b> expectation</i>;</p><table class=\"grid\"><thead><tr><th>Resource Type</th><th>Supported Interactions</th><th>Supported Profiles</th><th>Supported Searches</th><th>Supported <code>_includes</code></th><th>Supported <code>_revincludes</code></th><th>Supported Operations</th></tr></thead><tbody><tr><td><a href=\"#patient\"><span style=\"white-space: nowrap;\">Patient<span title=\"SHALL\"><sup>&#x2666;</sup></span></span></a></td><td><span style=\"white-space: nowrap;\">read<span title=\"SHALL\"><sup>&#x2666;</sup></span></span></td><!-- Supported Profiles --><td><span style=\"white-space: nowrap;\"><a href=\"http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-cancer-patient\">Cancer Patient Profile</a><span title=\"SHALL\"><sup>&#x2666;</sup></span></span></td><!-- Supported Searches will need to do some sort of mapping instead of join to get the expectations printed out --><td></td><!-- Supported _includes --><td></td><!-- Supported _revincludes --><td><!----></td><!-- Supported Operations --><td></td></tr><tr><td><a href=\"#condition\"><span style=\"white-space: nowrap;\">Condition<span title=\"SHALL\"><sup>&#x2666;</sup></span></span></a></td><td><span style=\"white-space: nowrap;\">search-type<span title=\"SHALL\"><sup>&#x2666;</sup></span></span></td><!-- Supported Profiles --><td><span style=\"white-space: nowrap;\"><a href=\"http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-cancer-patient\">Cancer Patient Profile</a></span></td><!-- Supported Searches will need to do some sort of mapping instead of join to get the expectations printed out --><td><span style=\"white-space: nowrap;\">code:in<span title=\"SHALL\"><sup>&#x2666;</sup></span></span></td><!-- Supported _includes --><td>Condition:subject</td><!-- Supported _revincludes --><td><!----></td><!-- Supported Operations --><td></td></tr><tr><td><a href=\"#group\"><span style=\"white-space: nowrap;\">Group<span title=\"SHALL\"><sup>&#x2666;</sup></span></span></a></td><td><span style=\"white-space: nowrap;\">search-type<span title=\"SHALL\"><sup>&#x2666;</sup></span></span></td><!-- Supported Profiles --><td></td><!-- Supported Searches will need to do some sort of mapping instead of join to get the expectations printed out --><td><span style=\"white-space: nowrap;\">code<span title=\"SHALL\"><sup>&#x2666;</sup></span></span></td><!-- Supported _includes --><td></td><!-- Supported _revincludes --><td><!----></td><!-- Supported Operations --><td></td></tr></tbody></table><!-- Resource Details --><h4 class=\"no_toc\" id=\"patient\">Patient</h4><p>Conformance Expectation:<strong>SHALL</strong></p><p>Supported Profiles:</p><ul><li><strong>SHALL</strong> support:<a href=\"http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-cancer-patient\">Cancer Patient Profile</a></li></ul><p>Profile Interaction Summary:</p><ul><li><strong>SHALL</strong> support <code>read</code>.</li></ul>ns.n<p>Fetch and Search Criteria:</p><ul><li>A Server <strong>SHALL</strong> be capable of returning a Patient resource using:<code class=\"highlighter-rouge\">GET [base]/Patient/[id]</code></li></ul><h4 class=\"no_toc\" id=\"condition\">Condition</h4><p>Conformance Expectation:<strong>SHALL</strong></p><p>Supported Profiles:</p><ul><li><a href=\"http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-cancer-patient\">Cancer Patient Profile</a></li></ul><p>Profile Interaction Summary:</p><ul><li><strong>SHALL</strong> support <code>search-type</code><sup>&#8224;</sup>.</li></ul><blockquote><p>search-type<sup>&#8224;</sup></p><p>Identify Patient resources conforming to mCODE's CancerPatient profile via searching for conditions in a specific ValueSet.</p></blockquote>ns.n<p>Fetch and Search Criteria:</p><ul><li>A Server <strong>SHALL</strong> be capable of returning resources matching a search query using:<code class=\"highlighter-rouge\">GET [base]/Condition/[id]{?[parameters]{&amp;_format=[mime-type]}}</code></li><li>A Server <strong>(conformance expectation undefined)</strong> be capable of supporting the following _includes:<ul><li>Condition:subject - <code class=\"highlighter-rouge\">GET [base]/Condition?[parameter=value]&amp;_include=Condition:subject</code></li></ul></li></ul><!-- Only included search parameters that are not MAY or there is no conformance requirement included --><p>Search Parameter Summary:</p><table class=\"grid\"><thead><tr><th>Conformance</th><th>Parameter</th><th>Type</th><th>Example</th></tr></thead><tbody><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/R4/condition.html#search\">code:in</a></td><td>uri</td><td><code class=\"highlighter-rouge\">GET [base]/Condition?code:in=[uri]</code></td></tr></tbody></table><h4 class=\"no_toc\" id=\"group\">Group</h4><p>Conformance Expectation:<strong>SHALL</strong></p><p>Profile Interaction Summary:</p><ul><li><strong>SHALL</strong> support <code>search-type</code><sup>&#8224;</sup>.</li></ul><blockquote><p>search-type<sup>&#8224;</sup></p><p>Retrieve Group of references to Patient resources conforming to mCODE.</p></blockquote>ns.n<p>Fetch and Search Criteria:</p><ul><li>A Server <strong>SHALL</strong> be capable of returning resources matching a search query using:<code class=\"highlighter-rouge\">GET [base]/Group/[id]{?[parameters]{&amp;_format=[mime-type]}}</code></li></ul><!-- Only included search parameters that are not MAY or there is no conformance requirement included --><p>Search Parameter Summary:</p><table class=\"grid\"><thead><tr><th>Conformance</th><th>Parameter</th><th>Type</th><th>Example</th></tr></thead><tbody><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/R4/group.html#search\">code</a></td><td>token</td><td><code class=\"highlighter-rouge\">GET [base]/Group?code=[system]|[code]</code></td></tr></tbody></table></div>"
* text.status = #generated
* insert mCODE_CapabilityStatement_Server_Common

* insert mCODE_CapabilityStatement_Patient_Server_Common_Rules // Has to be here to make indexing work for the Condition RuleSet below

// GET [base]/Condition?code:in=http://hl7.org/fhir/us/mcode/ValueSet/mcode-primary-cancer-disorder-vs&_include=Condition:subject
// GET [base]/Group?code=mcode-cancer-patient
* insert mCODE_CapabilityStatement_Condition_Server_Common_Rules

* rest[0].resource[1].searchInclude[0] = "Condition:subject"
