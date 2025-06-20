### Using a List
days = ["mon", "tue", "wed", "thu","fri","sat","sun"]
for x in days:
 print(x)
  
### Using a String
for i in "spark":
 print(i)
 
### Break Statement

days = ["mon", "tue", "wed", "thu","fri","sat","sun"]
weekend=["sat","sun"]
for x in days:
  if x in weekend:
     print(x +' is a weekend')
     break	 
  else:
     print(x)
	 
### Continue

days = ["mon", "tue", "wed", "thu","fri","sat","sun"]
weekend=["sat","sun"]
for x in days:
  if x in weekend:
     print(x +' is a weekend')
     continue
     print("This will not be printed")	 
  else:
     print(x)
	 
### Pass Statement
for x in days:
 pass