#!/bin/bash
docker exec -it svn_server svnadmin create /opt/svn/test
docker exec -it svn_server chown -R apache:apache /opt/svn/
