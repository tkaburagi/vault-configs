CREATE USER "{{name}}" 
  IDENTIFIED BY '{{password}}' 
  PASSWORD EXPIRE INTERVAL '{{expiration}}'

GRANT SELECT ON * TO "{{name}}";


