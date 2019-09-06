# BlockChain_IMIE
## Projet NotarIO


## Enregistrement d'un nouveau document
1.	Le service RH de l'entreprise E et le salarié S rédige le contrat de travail au format numérique.
2.	Le service RH et le salarié S signent numériquement le document.
3.	Le service RH dépose le contrat de travail du salarié S dans la blockchain avec horodatage.
4.	Le manager M consulte le contrat de travail du salarié S au format document numérique.


## smart contract représentant un contrat de travail
1.	Le service RH de l'entreprise E et le salarié S rédige le contrat de travail au format smart contract.
2.	Le service RH et le salarié S signent le smart contract.
3.	Le service RH ajoute le contrat de travail du salarié S au format smart contract dans la blockchain avec horodatage.
4.	Le manager M consulte le contrat de travail du salarié S au format smart contract.
5.	Le paiement du salaire du salarié S est réalisé par l'entreprise E en ether en fonction du smart contract représentant le contrat de travail qui lie le salarié S à l'entreprise E.
_________
- Paiement Ether
https://solidity.readthedocs.io/en/v0.5.3/types.html


## Livrables
- Manuel de développement => dossier architecture
- Doc au format md
- Diagramme d'activité || Diagramme de séquence


# Ligne de commande utiles
## Installation
npm install -g truffle


## Ganache - Lancer Blockchain
ganache-cli -l 8000029

### Restaure le même jeu d'adresse
Mnemonic:      
'''athlete sentence drift drill grape admit such fee skill magnet broccoli valve'''


## Truffle - Lancer migrate 
truffle migrate

## Lancer server
npm run dev


