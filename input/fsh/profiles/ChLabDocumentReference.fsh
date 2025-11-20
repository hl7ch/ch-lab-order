Profile: ChLabOrderDocumentReference
Parent: CHCoreDocumentReference
Id: ch-lab-order-document-reference
Title: "CH LAB-Order DocumentReference"
Description: "Definition of the DocumentReference resource to describe how to provide a reference to a document to make it available to a healthcare system."
* . ^short = "CH LAB-Order DocumentReference"
* status MS
* type MS
* type ^short = "Precise type of clinical document"
* category MS
* category ^short = "High-level kind of a clinical document at a macro level"
* subject MS
* subject only Reference(CHCorePatient)
* author MS
* author only Reference(CHCorePractitionerRole)
* content MS
* content.attachment MS
* content.attachment.contentType MS
* content.attachment.data MS
* context MS
* context.related MS
