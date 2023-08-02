with open("input.txt") as myFile:
    data = myFile.read()

with open("input2.txt") as myFile:
    data2 = myFile.read()

ri_id_list = data.split("\n")
# print(ri_id_list)

ri_id_notnull_list = data2.split("\n")
# print(ri_id_notnull_list)

ri_id_subresources = []
for item in ri_id_notnull_list:
    # print(item[2:len(item)-2])
    tempString = item[2:len(item)-2]
    tempSplit = tempString.split("\",\"")
    # print(tempSplit)
    ri_id_subresources.append(tempSplit)

# print(ri_id_subresources)

unique_ri_id = {}
for clobs in ri_id_subresources:
    for item in clobs:
        unique_ri_id[item] = 1

# Run these sql queries
for key in unique_ri_id.keys():
    print("select * from resource_instances where ri_id='{}';".format(key))


# We get null ri after running our sql statements
null_ri_ids = ["db52a2caf59f4a038d911595634d541f",
               "a763e558601f409098e4baf611a9fff6"]


# Get the ri_id of resources which have these null_ri as a reference to them
ri_id_to_delete = []
index = 0
for clobs in ri_id_subresources:
    for item in clobs:
        found = False
        for null_ri_id in null_ri_ids:
            if(str(item) == str(null_ri_id)):
                found = True
                break
        if found:
            ri_id_to_delete.append(ri_id_list[index])
            break
    index = index + 1

print("Resources to Delete: ")
print(ri_id_to_delete)


print("Run these sql statements to check piri you are deleting")
# Run these delete statements
for item in ri_id_to_delete:
    print("select * from PLATFORM_INSTANCE_RESOURCE_INSTANCES  where PIRI_RI_ID = '{}';".format(item))

print("Run these sql statements to check ri you are deleting")
for item in ri_id_to_delete:
    print("select * from RESOURCE_INSTANCES WHERE RI_ID='{}';".format(item))

print("Run these sql resources to delete piri")
for item in ri_id_to_delete:
    print("delete from PLATFORM_INSTANCE_RESOURCE_INSTANCES  where PIRI_RI_ID = '{}';".format(item))

print("Run to delete resources")
for item in ri_id_to_delete:
    print("delete from RESOURCE_INSTANCES  where RI_ID = '{}';".format(item))