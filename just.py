import json
a={}
for i in range(41):
    a[str(i)]="dirt"
print(json.dumps(a))