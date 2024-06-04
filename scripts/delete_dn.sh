#!/bin/bash

function error
{
  echo "[ERROR] $1 is missing."
  echo "Usage: $0 <$1>"
  exit 1

}

if [[ "$1" == "" ]]; then
  error "DN"
fi

DN=$1

source $(pwd)/variables.env
 
ldapdelete -H $LDAP_URL -D $LDAP_BIND_DN -w $LDAP_BIND_PWD $DN
