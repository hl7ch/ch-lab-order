var fhirQ = {
  "resourceType": "Questionnaire",
  "id": "0-generic",
  "meta": {
    "versionId": "1",
    "lastUpdated": "2019-04-01T20:17:53.340+00:00",
    "profile": [
      "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-questionnaire",
      "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire",
      "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-extract"
    ]
  },
  "url": "http://fhir.ch/ig/ch-lab-order/Questionnaire/0-generic",
  "extension": [
    {
      "url": "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-targetStructureMap",
      "valueCanonical": "http://fhir.ch/ig/ch-orf/StructureMap/OrfQrToBundle"
    },
    {
      "url": "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-sourceStructureMap",
      "valueCanonical": "http://fhir.ch/ig/ch-orf/StructureMap/OrfPrepopBundleToQr"
    },
    {
      "extension": [
        {
          "url": "name",
          "valueId": "Bundle"
        },
        {
          "url": "type",
          "valueCode": "Bundle"
        },
        {
          "url": "description",
          "valueString": "The Bundle that is to be used to pre-populate the form"
        }
      ],
      "url": "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-launchContext"
    }
  ],
  "version": "0.9.1",
  "name": "LabOrderFormExample",
  "title": "Lab Order Form Example",
  "status": "active",
  "subjectType": [
    "Patient"
  ],
  "date": "2020-12-17",
  "publisher": "HL7 Switzerland",
  "contact": [
    {
      "name": "HL7 Switzerland",
      "telecom": [
        {
          "system": "url",
          "value": "https://www.hl7.ch/"
        }
      ]
    }
  ],
  "jurisdiction": [
    {
      "coding": [
        {
          "code": "CH",
          "system": "urn:iso:std:iso:3166"
        }
      ]
    }
  ],
  "copyright": "CC-BY-SA-4.0",
  "item": [
    {
      "linkId": "order",
      "text": "Auftrag",
      "type": "group",
      "required": true,
      "item": [
        {
          "linkId": "order.title",
          "text": "Titel",
          "type": "string"
        },
        {
          "linkId": "order.type",
          "text": "Typ",
          "type": "choice",
          "answerValueSet": "http://fhir.ch/ig/ch-epr-term/ValueSet/DocumentEntry.typeCode"
        },
        {
          "linkId": "order.category",
          "text": "Kategorie",
          "type": "choice",
          "answerValueSet": "http://fhir.ch/ig/ch-epr-term/ValueSet/DocumentEntry.classCode"
        },
        {
          "linkId": "order.placerOrderIdentifier",
          "text": "Auftragsnummer des Auftraggebers",
          "type": "string"
        },
        {
          "extension": [
            {
              "url": "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden",
              "valueBoolean": true
            }
          ],
          "linkId": "order.placerOrderIdentifierDomain",
          "text": "Identifier Domain der Auftragsnummer des Auftraggebers",
          "type": "string"
        },
        {
          "linkId": "order.fillerOrderIdentifier",
          "text": "Auftragsnummer des Auftragsempfängers",
          "type": "string"
        },
        {
          "extension": [
            {
              "url": "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden",
              "valueBoolean": true
            }
          ],
          "linkId": "order.fillerOrderIdentifierDomain",
          "text": "Identifier Domain der Auftragsnummer des Auftragsempfängers",
          "type": "string"
        },
        {
          "extension": [
            {
              "url": "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden",
              "valueBoolean": true
            }
          ],
          "linkId": "order.precedentDocumentIdentifier",
          "text": "Identifier des Vorgängerdokuments",
          "type": "string"
        },
        {
          "linkId": "order.notificationContactDocument",
          "text": "Dringender Benachrichtigungskontakt für dieses Dokument",
          "type": "group",
          "item": [
            {
              "linkId": "order.notificationContactDocument.practitioner",
              "text": "Zu benachrichtigende Person",
              "type": "group",
              "item": [
                {
                  "linkId": "order.notificationContactDocument.practitioner.title",
                  "text": "Titel",
                  "type": "string"
                },
                {
                  "linkId": "order.notificationContactDocument.practitioner.familyName",
                  "text": "Name",
                  "type": "string"
                },
                {
                  "linkId": "order.notificationContactDocument.practitioner.givenName",
                  "text": "Vorname",
                  "type": "string"
                },
                {
                  "linkId": "order.notificationContactDocument.practitioner.phone",
                  "text": "Telefon",
                  "type": "string"
                },
                {
                  "linkId": "order.notificationContactDocument.practitioner.email",
                  "text": "E-Mail",
                  "type": "string"
                }
              ]
            }
          ]
        },
        {
          "linkId": "order.notificationContactDocumentResponse",
          "text": "Dringender Benachrichtigungskontakt für die Antwort auf dieses Dokument",
          "type": "group",
          "item": [
            {
              "linkId": "order.notificationContactDocumentResponse.practitioner",
              "text": "Zu benachrichtigende Person",
              "type": "group",
              "item": [
                {
                  "linkId": "order.notificationContactDocumentResponse.practitioner.title",
                  "text": "Titel",
                  "type": "string"
                },
                {
                  "linkId": "order.notificationContactDocumentResponse.practitioner.familyName",
                  "text": "Name",
                  "type": "string"
                },
                {
                  "linkId": "order.notificationContactDocumentResponse.practitioner.givenName",
                  "text": "Vorname",
                  "type": "string"
                },
                {
                  "linkId": "order.notificationContactDocumentResponse.practitioner.phone",
                  "text": "Telefon",
                  "type": "string"
                },
                {
                  "linkId": "order.notificationContactDocumentResponse.practitioner.email",
                  "text": "E-Mail",
                  "type": "string"
                }
              ]
            }
          ]
        },
        {
          "linkId": "order.priority",
          "text": "Auftragspriorität",
          "type": "choice",
          "answerOption": [
            {
              "valueCoding": {
                "code": "stat",
                "system": "http://hl7.org/fhir/request-priority",
                "display": "Die Anfrage sollte sofort bearbeitet werden - höchstmögliche Priorität. Z.B. bei einem Notfall."
              },
              "initialSelected": true
            }
          ]
        }
      ]
    },
    {
      "linkId": "receiver",
      "text": "Empfänger",
      "type": "group",
      "item": [
        {
          "linkId": "receiver.practitioner",
          "text": "Empfangende Person",
          "type": "group",
          "item": [
            {
              "linkId": "receiver.practitioner.title",
              "text": "Titel",
              "type": "string"
            },
            {
              "linkId": "receiver.practitioner.familyName",
              "text": "Name",
              "type": "string"
            },
            {
              "linkId": "receiver.practitioner.givenName",
              "text": "Vorname",
              "type": "string"
            },
            {
              "linkId": "receiver.practitioner.gln",
              "text": "GLN",
              "type": "string"
            },
            {
              "linkId": "receiver.practitioner.phone",
              "text": "Telefon",
              "type": "string"
            },
            {
              "linkId": "receiver.practitioner.email",
              "text": "E-Mail",
              "type": "string"
            }
          ]
        },
        {
          "linkId": "receiver.organization",
          "text": "Empfangende Organisation",
          "type": "group",
          "item": [
            {
              "linkId": "receiver.organization.name",
              "text": "Name der Organisation",
              "type": "string"
            },
            {
              "linkId": "receiver.organization.streetAddressLine",
              "text": "Strasse, Hausnummer, Postfach etc.",
              "type": "string",
              "repeats": true
            },
            {
              "linkId": "receiver.organization.postalCode",
              "text": "PLZ",
              "type": "string"
            },
            {
              "linkId": "receiver.organization.city",
              "text": "Ort",
              "type": "string"
            },
            {
              "linkId": "receiver.organization.country",
              "text": "Land",
              "type": "string"
            }
          ]
        }
      ]
    },
    {
      "linkId": "patient",
      "text": "Patient",
      "type": "group",
      "item": [
        {
          "linkId": "patient.familyName",
          "text": "Name",
          "type": "string"
        },
        {
          "linkId": "patient.maidenName",
          "text": "Ledigname",
          "type": "string"
        },
        {
          "linkId": "patient.givenName",
          "text": "Vorname",
          "type": "string"
        },
        {
          "linkId": "patient.localPid",
          "text": "Lokale Patienten-ID",
          "type": "string"
        },
        {
          "linkId": "patient.birthDate",
          "text": "Geburtsdatum",
          "type": "date"
        },
        {
          "linkId": "patient.gender",
          "text": "Geschlecht",
          "type": "choice",
          "answerOption": [
            {
              "valueCoding": {
                "code": "other",
                "system": "http://hl7.org/fhir/administrative-gender",
                "display": "Anderes"
              },
              "initialSelected": true
            }
          ]
        },
        {
          "linkId": "patient.phone",
          "text": "Telefon",
          "type": "string"
        },
        {
          "linkId": "patient.email",
          "text": "E-Mail",
          "type": "string"
        },
        {
          "linkId": "patient.streetAddressLine",
          "text": "Strasse, Hausnummer, Postfach etc.",
          "type": "string",
          "repeats": true
        },
        {
          "linkId": "patient.postalCode",
          "text": "PLZ",
          "type": "string"
        },
        {
          "linkId": "patient.city",
          "text": "Ort",
          "type": "string"
        },
        {
          "linkId": "patient.country",
          "text": "Land",
          "type": "string"
        }
      ]
    },
    {
      "linkId": "sender",
      "text": "Absender",
      "type": "group",
      "required": true,
      "item": [
        {
          "linkId": "sender.author",
          "text": "Verantwortlicher",
          "type": "group",
          "required": true,
          "item": [
            {
              "linkId": "sender.author.practitioner",
              "text": "Verantwortliche Person",
              "type": "group",
              "item": [
                {
                  "linkId": "sender.author.practitioner.title",
                  "text": "Titel",
                  "type": "string"
                },
                {
                  "linkId": "sender.author.practitioner.familyName",
                  "text": "Name",
                  "type": "string"
                },
                {
                  "linkId": "sender.author.practitioner.givenName",
                  "text": "Vorname",
                  "type": "string"
                },
                {
                  "linkId": "sender.author.practitioner.gln",
                  "text": "GLN",
                  "type": "string"
                },
                {
                  "linkId": "sender.author.practitioner.phone",
                  "text": "Telefon",
                  "type": "string"
                },
                {
                  "linkId": "sender.author.practitioner.email",
                  "text": "E-Mail",
                  "type": "string"
                }
              ]
            },
            {
              "linkId": "sender.author.organization",
              "text": "Verantwortliche Organisation",
              "type": "group",
              "item": [
                {
                  "linkId": "sender.author.organization.name",
                  "text": "Name der Organisation",
                  "type": "string"
                },
                {
                  "linkId": "sender.author.organization.streetAddressLine",
                  "text": "Strasse, Hausnummer, Postfach etc.",
                  "type": "string",
                  "repeats": true
                },
                {
                  "linkId": "sender.author.organization.postalCode",
                  "text": "PLZ",
                  "type": "string"
                },
                {
                  "linkId": "sender.author.organization.city",
                  "text": "Ort",
                  "type": "string"
                },
                {
                  "linkId": "sender.author.organization.country",
                  "text": "Land",
                  "type": "string"
                }
              ]
            }
          ]
        },
        {
          "linkId": "sender.dataenterer",
          "text": "Erfasser",
          "type": "group",
          "item": [
            {
              "linkId": "sender.dataenterer.practitioner",
              "text": "Erfassende Person",
              "type": "group",
              "item": [
                {
                  "linkId": "sender.dataenterer.practitioner.familyName",
                  "text": "Name",
                  "type": "string"
                },
                {
                  "linkId": "sender.dataenterer.practitioner.givenName",
                  "text": "Vorname",
                  "type": "string"
                },
                {
                  "linkId": "sender.dataenterer.practitioner.phone",
                  "text": "Telefon",
                  "type": "string"
                },
                {
                  "linkId": "sender.dataenterer.practitioner.email",
                  "text": "E-Mail",
                  "type": "string"
                }
              ]
            }
          ]
        }
      ]
    },
    {
      "linkId": "receiverCopies",
      "text": "Kopieempfänger",
      "type": "group",
      "item": [
        {
          "linkId": "receiverCopy",
          "text": "Kopieempfangende Organisation oder Person",
          "type": "group",
          "repeats": true,
          "item": [
            {
              "linkId": "receiverCopy.organization.name",
              "text": "Name der Organisation",
              "type": "string"
            },
            {
              "linkId": "receiverCopy.title",
              "text": "Titel",
              "type": "string"
            },
            {
              "linkId": "receiverCopy.familyName",
              "text": "Name",
              "type": "string"
            },
            {
              "linkId": "receiverCopy.givenName",
              "text": "Vorname",
              "type": "string"
            },
            {
              "linkId": "receiverCopy.phone",
              "text": "Telefon",
              "type": "string"
            },
            {
              "linkId": "receiverCopy.email",
              "text": "E-Mail",
              "type": "string"
            },
            {
              "linkId": "receiverCopy.streetAddressLine",
              "text": "Strasse, Hausnummer, Postfach etc.",
              "type": "string",
              "repeats": true
            },
            {
              "linkId": "receiverCopy.postalCode",
              "text": "PLZ",
              "type": "string"
            },
            {
              "linkId": "receiverCopy.city",
              "text": "Ort",
              "type": "string"
            },
            {
              "linkId": "receiverCopy.country",
              "text": "Land",
              "type": "string"
            }
          ]
        }
      ]
    },
    {
      "linkId": "labSpecialties",
      "text": "Labor Sparten",
      "type": "group",
      "item": [
        {
          "definition": "18723-7",
          "linkId": "labSpecialties.hematology",
          "text": "Hematology",
          "type": "boolean",
          "item": [
            {
              "linkId": "labSpecialties.hematology.panels",
              "text": "Hematology Panels",
              "type": "group",
              "enableWhen": [
                {
                  "question": "labSpecialties.hematology",
                  "operator": "=",
                  "answerBoolean": true
                }
              ],
              "item": [
                {
                  "definition": "24360-0",
                  "linkId": "labSpecialties.hematology.panels.hemoglobinHematocritPanelBlood",
                  "text": "Hemoglobin and Hematocrit panel - Blood",
                  "type": "boolean"
                },
                {
                  "definition": "43113-0",
                  "linkId": "labSpecialties.hematology.panels.hemoglobinElectrophoresisPanelBlood",
                  "text": "Hemoglobin electrophoresis panel in Blood",
                  "type": "boolean"
                },
                {
                  "definition": "57021-8",
                  "linkId": "labSpecialties.hematology.panels.CBCWAutoDifferentialPanelBlood",
                  "text": "CBC W Auto Differential panel - Blood",
                  "type": "boolean"
                },
                {
                  "definition": "58410-2",
                  "linkId": "labSpecialties.hematology.panels.CBCPanelBloodAutomatedCount",
                  "text": "CBC panel - Blood by Automated count",
                  "type": "boolean"
                },
                {
                  "definition": "57023-4",
                  "linkId": "labSpecialties.hematology.panels.AutoDifferentialPanelBlood",
                  "text": "Auto Differential panel - Blood",
                  "type": "boolean"
                }
              ]
            },
            {
              "definition": "18720-3",
              "linkId": "labSpecialties.coagulation",
              "text": "Coagulation",
              "type": "boolean",
              "item": [
                {
                  "linkId": "labSpecialties.coagulation.panels",
                  "text": "Coagulation Panels",
                  "type": "group",
                  "enableWhen": [
                    {
                      "question": "labSpecialties.coagulation",
                      "operator": "=",
                      "answerBoolean": true
                    }
                  ],
                  "item": [
                    {
                      "definition": "55398-2",
                      "linkId": "labSpecialties.coagulation.panels.ShortFibrinDdimerPlateletpoorplasma",
                      "text": "Short Fibrin D-dimer FEU and DDU panel - Platelet poor plasma",
                      "type": "boolean"
                    },
                    {
                      "definition": "38875-1",
                      "linkId": "labSpecialties.coagulation.panels.INRplateletPoorPlasmaCoagulationAssay",
                      "text": "INR in Platelet poor plasma or blood by Coagulation assay",
                      "type": "boolean"
                    }
                  ]
                }
              ]
            },
            {
              "definition": "18719-5",
              "linkId": "labSpecialties.chemistry",
              "text": "Clinical Chemistry",
              "type": "boolean",
              "item": [
                {
                  "linkId": "labSpecialties.chemistry.panels",
                  "text": "Chemistry Panels",
                  "type": "group",
                  "enableWhen": [
                    {
                      "question": "labSpecialties.chemistry",
                      "operator": "=",
                      "answerBoolean": true
                    }
                  ],
                  "item": [
                    {
                      "definition": "1988-5",
                      "linkId": "labSpecialties.chemistry.panels.CRP-MassProVolumeSerumPlasma",
                      "text": "C reactive protein [Mass/Volume] in Serum or Plasma",
                      "type": "boolean"
                    },
                    {
                      "definition": "76485-2",
                      "linkId": "labSpecialties.chemistry.panels.CRP-MolesProVolumeSerumPlasma",
                      "text": "C reactive protein [Moles/volume] in Serum or Plasma",
                      "type": "boolean"
                    }
                  ]
                }
              ]
            },
            {
              "definition": "18725-2",
              "linkId": "labSpecialties.microbiol",
              "text": "Microbiology",
              "type": "boolean",
              "item": [
                {
                  "linkId": "labSpecialties.microbiol.panels",
                  "text": "Microbiology Panels",
                  "type": "group",
                  "enableWhen": [
                    {
                      "question": "labSpecialties.microbiol",
                      "operator": "=",
                      "answerBoolean": true
                    }
                  ],
                  "item": [
                    {
                      "definition": "90441-7",
                      "linkId": "labSpecialties.microbiol.panels.BordPertParaperDNA",
                      "text": "Bordetella pertussis & Bordetella parapertussis DNA panel",
                      "type": "boolean"
                    }
                  ]
                }
              ]
            }
          ]
        }
      ]
    },
    {
      "linkId": "consent",
      "definition": "http://fhir.ch/ig/ch-lab-order/StructureDefinition/ch-lab-order-servicerequest#ServiceRequest.supportingInfo",
      "text": "Einverständniserklärung",
      "type": "group",
      "item": [
        {
          "linkId": "consent.treatment",
          "text": "Einverständnis des Patienten zur Behandlung",
          "type": "string"
        },
        {
          "linkId": "consent.patientPrivacy",
          "text": "Einverständnis des Patienten zum Datenschutz",
          "type": "string"
        },
        {
          "linkId": "consent.research",
          "text": "Einverständnis des Patienten zur Forschung",
          "type": "string"
        },
        {
          "linkId": "consent.advancedCareDirective",
          "text": "Patientenverfügung",
          "type": "string"
        }
      ]
    },
    {
      "linkId": "coverage",
      "definition": "http://fhir.ch/ig/ch-lab-order/StructureDefinition/ch-lab-order-servicerequest#ServiceRequest.insurance",
      "text": "Kostenträger",
      "type": "group",
      "item": [
        {
          "linkId": "coverage.uvg",
          "text": "Unfallversicherung (nach UVG)",
          "type": "string"
        },
        {
          "linkId": "coverage.kvg",
          "text": "Grundversicherung (nach KVG)",
          "type": "string"
        },
        {
          "linkId": "coverage.vvg",
          "text": "Zusatzversicherung (nach VVG)",
          "type": "string"
        },
        {
          "linkId": "coverage.vvgOther",
          "text": "Andere (nach VVG)",
          "type": "string"
        }
      ]
    },
    {
      "linkId": "previousResult",
      "definition": "http://fhir.ch/ig/ch-lab-order/StructureDefinition/ch-lab-order-servicerequest#ServiceRequest.supportingInfo",
      "text": "Vorheriges Untersuchungsresultat",
      "type": "group",
      "item": [
        {
          "linkId": "previousResult.result",
          "text": "Untersuchungsresultat",
          "type": "string",
          "repeats": true
        }
      ]
    }
  ]
}


// Add the form to the page
LForms.Util.addFormToPage(fhirQ, 'formContainer');


// Define the function for showing the QuestionnaireResponse
function showQR() {
  var qr = LForms.Util.getFormFHIRData('QuestionnaireResponse', 'R4');
  window.alert(JSON.stringify(qr, null, 2));
}


