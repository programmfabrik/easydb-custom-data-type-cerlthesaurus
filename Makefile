PLUGIN_NAME = custom-data-type-cerlthesaurus
PLUGIN_PATH = easydb-custom-data-type-cerlthesaurus

L10N_FILES = easydb-library/src/commons.l10n.csv \
    l10n/$(PLUGIN_NAME).csv

INSTALL_FILES = \
    $(WEB)/l10n/cultures.json \
    $(WEB)/l10n/de-DE.json \
    $(WEB)/l10n/en-US.json \
    $(JS) \
    $(CSS) \
    manifest.yml

COFFEE_FILES = easydb-library/src/commons.coffee \
		src/webfrontend/CERLThesaurusUtil.coffee \
    src/webfrontend/CustomDataTypeCERLThesaurus.coffee

CSS_FILE = src/webfrontend/css/main.css

all: build

include easydb-library/tools/base-plugins.make

build: code buildinfojson

code: $(JS) $(L10N)
	cat $(CSS_FILE) >> build/webfrontend/custom-data-type-cerlthesaurus.css

clean: clean-base
