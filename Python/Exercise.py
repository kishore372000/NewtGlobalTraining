import datetime

a = 33
b = 200
if b > a:
  print("b is greater than a")


i = 1
while i < 6:
  print(i)
  i += 1

i = 1
while i < 6:
  print(i)
  if i == 3:
    break
  i += 1


fruits = ["apple", "banana", "cherry"]
for x in fruits:
  print(x)


def my_function():
  print("Hello from a function")


x = lambda a : a + 10
print(x(5))

x = datetime.datetime.now()
print(x)

x = min(5, 10, 25)
y = max(5, 10, 25)

print(x)
print(y)


