include config.mk

ifndef EXERCISE_NO
$(error EXERCISE_NO is not set)
endif

ifndef MATNR
$(error MATNR is not set)
endif

ifndef ICH_STIMME_DER_SPEICHERUNG_DER_DATE_ZU
$(warning ICH_STIMME_DER_SPEICHERUNG_DER_DATE_ZU ist zur Abgabe erforderlich)
endif

SUBMIT_FILE_NAME=$(OUTPUT)/$(PROGNAME)_$(MATNR).zip


all: $(OUTPUT) build

build:
	@$(CXX) $(CXXFLAGS) -o $(OUTPUT)/$(PROGNAME) src/*.cpp -I include/
	@$(ECHO_COMPILE)

$(OUTPUT):
	$(SILENT_MKDIR)mkdir $(OUTPUT)

clean:
	rm -f $(OUTPUT)/$(PROGNAME) $(SUBMIT_FILE_NAME) $(DUPLO_FILE_LIST) $(DUPLO_OUTPUT)


start: $(OUTPUT)
	$(SILENT_MKDIR)mkdir src include

submit:
	@zip -rq $(SUBMIT_FILE_NAME) src include
	@echo "Submit file: $(SUBMIT_FILE_NAME)"
	@curl $(CURL_OPTIONS) --form solution=@$(SUBMIT_FILE_NAME) --form press=OK $(SUBMIT_URL)

help:
	@echo "Passen Sie vor dem Beginn die Werte für MATNR und EXERCISE_NO an"
	@echo "Um die Entwicklung zu starten nutzen Sie \"make start\" damit wird die Verzeichnissstruktur erstellt."
	@echo "Zum compilieren reicht \"make\""
	@echo "Die Abgabe erfolgt mittels \"make submit\". Alternative können Sie mir die entstandene zip-Datei per eMail zu senden."
