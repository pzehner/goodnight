PREFIX ?= ${HOME}/.local

help:
	@echo "Exécuter 'make install' pour installer goodnight"
	@echo "Par défaut, l'emplacement est '${HOME}/.local'"
	@echo "Pour choisir l'emplacement, exécuter 'PREFIX=/chemin/vers/dossier make install'"
	@echo "Le script sera dans le sous-dossier 'bin'"
	@echo "Assurez-vous d'avoir ce dossier dans le PATH"

install:
	@echo "Création du dossier de destination"
	@mkdir -p $(PREFIX)/bin
	@echo "Installation du script"
	@cp goodnight $(PREFIX)/bin/goodnight
	@chmod 755 $(PREFIX)/bin/goodnight
	@echo "Script installé dans '${PREFIX}/bin'"
	@echo "Assurez-vous d'avoir ce dossier dans le PATH"

uninstall:
	@echo "Suppression du script"
	@rm -rf $(PREFIX)/bin/goodnight
