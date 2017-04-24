# Don't change!!!
CXX=g++
CXXFLAGS=-Werror -Wall -Wextra -fno-exceptions -Wno-format -fno-rtti -std=c++1y
OUTPUT=BIN_VALUE

CURL_OPTIONS=-u $(USER):$(PASSWORD) -X POST -F 'speicherung=$(ICH_STIMME_DER_SPEICHERUNG_DER_DATE_ZU)'

ECHO_COMPILE=echo "1. CC $(PROGNAME)"
SILENT_MKDIR=

SUBMIT_URL=https://www.andreasfertig.info/submit_es.html

PROGNAME=uebung0$(EXERCISE_NO)

USER=abgabe
PASSWORD=pes17

# insert correct values
EXERCISE_NO=3
MATNR=7315641
# Um der Speicherung Ihrer Daten zuzustimmen tragen Sie in das folgende Feld bitte 'yes' ein
ICH_STIMME_DER_SPEICHERUNG_DER_DATE_ZU=yes
