> This Plugin / Repo is being maintained by a community of developers.
There is no warranty given or bug fixing guarantee; especially not by
Programmfabrik GmbH. Please use the github issue tracking to report bugs
and self organize bug fixing. Feel free to directly contact the committing
developers.

# easydb-custom-data-type-cerlthesaurus
Custom Data Type "CERL-Thesaurus" for easydb

This is a plugin for easyDB 5 and fylr with Custom Data Type `CustomDataTypeCERLThesaurus` for references to entities of the [CERL-Thesaurus](<https://data.cerl.org/>).

The Plugins uses <https://ws.gbv.de/suggest/cerl_thesaurus/> for the autocomplete-suggestions and informations about CERL-thesaurus-entities.

## configuration

In `manifest.yml` you can configure:

* `mask-options`:
    * allowed-types (one or multiple of "placename, imprintname,  personalname, corporatename". Splitted by commata)

## saved data

* conceptName
    * Preferred label of the linked record
* conceptURI
    * URI to linked record
* conceptFulltext
    * fulltext-string which contains variantNames etc.
* conceptAncestors
    * the parent hierarchy of the selected record
* frontendLanguage
    * the frontendlanguage of the entering user
* _fulltext
    * easydb-fulltext
* _standard
    * easydb-standard

## sources

The source code of this plugin is managed in a git repository at <https://github.com/programmfabrik/easydb-custom-data-type-cerlthesaurus>.
