with open("input.txt", "r") as f:
    data = f.read()

#print(data)

'''
select username from dba_users;
select username from dba_users where username like '%MICROSERVICE_ECP%';
select username from dba_users where username like '%MICROSERVICE_CENTRALIZED%';
select * from dba_users where username like '%TENANT_%' order by created asc;
select username, created, last_login from dba_users where username like '%TENANT_%' order by last_login asc;
'''

all_tenants = data.split("\n")
#print(all_tenants)

with open("output.txt", "w") as f:
    for i in range(len(all_tenants)):
        if "MICROSERVICE_ECP" in all_tenants[i]:
            f.write("drop user " + all_tenants[i] + " cascade;\n")
