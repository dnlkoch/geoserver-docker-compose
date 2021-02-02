#!/usr/bin/env bash

LDAP_HOST=${1:-localhost}
SCRIPT_PATH=$(dirname $(realpath -s $0))

ldapadd -x -D "cn=admin,dc=mycompany,dc=com" -w admin -H ldap://$LDAP_HOST -f $SCRIPT_PATH/ldap-mycompany.ldif
