### Etude de cas 1 : Suspicion de thrombose veineuse profonde

Un patient, Hans Guggindieluft, se présente au cabinet de groupe d'Olten du Dr méd. Marc Mustermann le 09.03.2016. Il s'identifie verbalement via ses données de base comme Hans Guggindieluft, 01.01.1981. Il rapporte une douleur peu claire dans la partie inférieure de la jambe gauche ainsi qu'une douleur respiratoire et une toux concomitantes. Le médecin procède à l'anamnèse et à l'examen physique et commande les paramètres de laboratoire suivants :

* Numération sanguine, y compris le différentiel
* CRP
* D-dimère

Le médecin effectue lui-même l'hémogramme et la détermination de la CRP à l'aide de diagnostics au point de service ; le diagnostic des D-dimères est prescrit en tant que diagnostic quantitatif dans un laboratoire expéditeur externe. Pour obtenir l'échantillon, une prise de sang est effectuée alors que le patient est allongé (1 tube EDTA, 2 tubes citrate de 5 ml). La commande est transmise au laboratoire externe et l'échantillon est envoyé au laboratoire d'expédition externe par courrier commandé par téléphone. Les résultats des diagnostics internes du point de service (numération sanguine et CRP) sont saisis dans la fiche de laboratoire du patient dans le logiciel du cabinet du médecin (manuellement ou via des interfaces électroniques installées localement). Une ordonnance du médecin est donc délivrée au patient pour l'auto-administration d'un agent antithrombotique.
Les résultats du laboratoire expéditeur arrivent électroniquement chez le médecin généraliste le soir même et sont également inscrits sur la fiche de laboratoire du patient. En utilisant le présent format d'échange, ce processus peut être entièrement automatisé. Après une demande téléphonique du médecin du laboratoire d'envoi en raison d'un résultat limite pour les D-dimères, l'information est donnée qu'une thrombose veineuse profonde ne peut être exclue dans cette situation au moyen des D-dimères et le patient est donc rappelé le lendemain pour qu'une échographie des jambes soit effectuée.

Exemple FHIR correspondant qui répond à cette spécification :
[1-tvt.xml](https://github.com/hl7ch/ch-lab-order/tree/master/input/examples/bundle/1-tvt.xml)

Comme il s'agit d'une thrombose veineuse primaire de la jambe, le Dr Eva Erlenmeier du laboratoire Pipette envoie un retour d'information au Dr Mustermann, lui recommandant d'effectuer un dépistage de la thrombophilie, qui comprend les analyses suivantes :
Quick, aPTT, fibrinogène, antithrombine (funct.), temps de thrombine I 2,5 NIH/ml, résistance APC, D-dimères, protéine C, (méthode aPTT), protéine S antigène.
Les analyses peuvent être effectuées directement à partir des échantillons des tubes de citrate envoyés.

TODO  WEITERE 4 ETUDES DES CAS