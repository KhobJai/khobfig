!#/usr/bin/python3

print("Khob's Cheatsheet")
print("0: " + sys.argv[0])
print("1: "+ sys.argv[1])
print("2: "+ sys.argv[2])
print("3: " + sys.argv[3])
topic = sys.argv[1]

if  topic == "docker":
	print("Opeing docker cheatsheat..")
	sleep(400)
	print(open("docker-cheatsheet,"r").read())

