# CS3431-Databases-Project
Contains the project created during CS3431 class at WPI. -- By Leo Gonsalves and Alexander Antaya

The views folder contains all of the views individually, while the views.sql file
contains all of the views in a sequence.

In order to run:

>source /cs/bin/oracle-setup
>export CLASSPATH=./:/usr/local/oracle11gr203/product/11.2.0/db_1/jdbc/lib/ojdbc6.jar
>/usr/local/bin/javac Reporting.java
>sqlplus <USERNAME>@CS
>@ tables
>@ entries
>@ triggers
>@ views
>exit
>/usr/local/bin/java Reporting <USERNAME> <PASSWORD> [OPTION]