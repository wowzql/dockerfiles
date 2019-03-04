STOP SLAVE;
CHANGE MASTER TO master_host='169.169.130.192', master_user='repl', master_password='rMIk0KBn27K806yIL3OlkaWugCOSu2sF', master_port=3306;
RESET SLAVE;
START SLAVE;