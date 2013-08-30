webenq4_reporting
=================

Scripts and documentation for reporting in webenq4 including etl-scripts

Tools
=====
* datamodel tool: [SQL Power Architect](http://www.sqlpower.ca/page/architect_download_os)
* etl: [Pentaho](www.pentaho.org)

Working with ETL scripts
========================

* Install the [Pentaho Data Integration suite](http://sourceforge.net/projects/pentaho/files/Data%20Integration/)
* Clone this repository
* Add the settings from `/etl/kettle.properties` to `~/.kettle/kettle.properties` and adapt to indicate your database
* Start Spoon and define a file-based repository with the /etl directory of this repository as the base
