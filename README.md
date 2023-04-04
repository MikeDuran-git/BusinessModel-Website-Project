# BusinessModel-Website-Project
Project Rym, Mike, Shaboo, Ophelie

## TODO:

- Database

    Table:

        - Client:
            - id (int) (PK)
            - Nom (string)
            - Prenom (string)
            - Date de Naissance (DATE)
            - suivi par un médecin (bool)
            - Suivi par un psychologue (bool)
            - Pacemaker (bool)
            - possède des Tatouage (bool)
            - possède des Piercings (bool)
            - A éffectué des opérations (bool)
            - Suit un traitement (bool)
        - Soin:
            - id (int) (PK)
            - Soin (txt)
        - Demande
            - id (int) (PK)
            - idClient (int) (FK Client)
            - idSoin (int) (FK SOIN)
            - SoinFini (bool)

- Website structure

    PAGES:

        - language english french adaptation
        - Header:
            - title : Thérapies Holistiques avec Khedoudja Rym MERAD
        - Footer:
            - Personal Data: Nom, Prenom, Mail, Phone number
            - symbol Social Network: instagram
        - Create first Page
            - image/Text
            - "Prendre rdv" button
            - Menu:
                - Symbol (click)
                    - presente menu
                    - Links to other pages.
                        - page adapts to Link description.
        - Create 2nd Page
            - image/Text (adapte en fonction du choix menu)
            - "Prendre rdv" button
            - Menu:
                - Symbol (click)
                    - presente menu
                    - Links to other pages.
                        - page adapts to Link description.
        - Contact Page:
            - notification de "* Obligatoire"
            - Nom
                - input label 
                - obligatoire
            - Prenom
                - input label 
                - obligatoire
            - Date de naissance
                - input label 
                - obligatoire
            - Adresse:
                - input label 
                - obligatoire
            - Checkbox: (y/n)
                - Médecin traitant
                - Psychologue / psychiatre ?
                - Opérations ?
                - Opérations?
                - Piercings/Tatouages?
                - Pacemaker?
                - Maladies chroniques?
                - lu et approuvé
            - Demande du client:
                - input text
                - rendre optionnel l'insertion.
            - Button Submit


# Application web avec Docker
Cette application web utilise Docker pour exécuter un serveur web Nginx avec une page d'accueil simple en HTML et CSS. Pour lancer l'application, suivez les instructions ci-dessous.

## Installation
Pour lancer l'application, vous devez avoir Docker installé sur votre ordinateur. Si vous ne l'avez pas déjà, vous pouvez télécharger Docker depuis le site officiel : https://www.docker.com/products/docker-desktop.

## Lancement de l'application
Une fois que Docker est installé sur votre ordinateur, vous pouvez lancer l'application en suivant les étapes ci-dessous :

1. Ouvrez une fenêtre de terminal (ou invite de commande) et accédez au dossier de votre projet.

2. Exécutez la commande suivante pour créer une nouvelle image Docker :

```bash
make build
```
Cette commande créera une nouvelle image Docker à partir des fichiers de votre projet.

3. Exécutez la commande suivante pour lancer un conteneur Docker à partir de l'image que vous venez de créer :

```bash
make run
```
Cette commande lancera un conteneur Docker qui exécute le serveur web Nginx et qui est accessible à l'adresse http://localhost:8080. Vous devriez voir une page d'accueil simple en HTML et CSS lorsque vous accédez à cette adresse.

4. Si vous souhaitez arrêter le conteneur Docker, exécutez la commande suivante :

```bash
make stop
```
Cette commande arrêtera le conteneur Docker en cours d'exécution.

5. Si vous souhaitez supprimer le conteneur Docker, exécutez la commande suivante :

```bash
make rm
```
Cette commande supprimera le conteneur Docker en cours d'exécution.

## Mise à jour de l'application
Si vous apportez des modifications à votre application et que vous souhaitez les appliquer, vous pouvez utiliser la commande suivante pour mettre à jour votre application :


```bash
make update
```
Cette commande effectuera les étapes suivantes :

1. Elle exécutera la commande `make build` pour créer une nouvelle image Docker à partir de vos fichiers modifiés.

2. Elle exécutera les commandes `make stop` et `make rm` pour arrêter et supprimer le conteneur Docker en cours d'exécution.

3. Elle exécutera la commande `make run` pour lancer un nouveau conteneur Docker à partir de la nouvelle image Docker.

Vous devriez maintenant voir les modifications que vous avez apportées à votre application web lorsque vous accédez à l'adresse http://localhost:8080.




