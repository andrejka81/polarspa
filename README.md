# polarspa
# database settings in /panel/modules/data/connect.php
# demo db dump localhost.sql Mysql or MariaDB
# Docs in framework_dev.pdf

Install

Put repository to your hosting or local server with Apache and Mysql(MariaDB).
Create database from demo dump.
Change db settings in /panel/modules/data/connect.php .
Change admin hash password in table sys_users to any of demo users. 
Password will be set to 123456


If you already have jqwidgets files (https://www.jqwidgets.com/download/) and want them local,
then put them in jqwidgets folder and setup templates (/panel/forms/templates)

Open page http://example.com/panel/index.php in your browser (except firefox) login as admin with password 123456
