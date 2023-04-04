# BusinessModel-Website-Project
Project Rym, Mike, Shaboo, Ophelie

## TODO:
Meeting Rym Mike to confirm the architecture of the website:
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




## Possible Technologies to use: (to be discussed)
- Docker Container (favorable)
- html, css 



