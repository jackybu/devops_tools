#!/bin/bash
echo -e "*********** Thanks for using this SVN image ***********\nThis image was created by bulc@iata.org."
echo -e "\nUsage:"
echo -e "  To create a new repo:\n    svnadmin create /opt/svn/<repo_name>\n    chown -R apache:apache /opt/svn/"
echo -e "  To create a new user:\n    htpasswd -m /etc/httpd/conf.d/passwd <username>"
echo -e "  To modify access permission:\n    vi /etc/httpd/conf.d/authz\n"
echo -e "For test purpose, please use test/test to logon test repo"
echo "*******************************************************"
svnserve -d -r /opt/svn
apachectl -k start -D FOREGROUND