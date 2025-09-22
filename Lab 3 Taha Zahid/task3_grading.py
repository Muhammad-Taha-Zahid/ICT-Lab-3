marks = int(100)
if marks >=90 and marks <=100:
    grade="A"
elif marks >=75 and marks <90:
    grade="B"
elif marks >=50 and marks <75:
    grade="C"
elif marks <50 and marks >=0:
    grade="F"
else:
    print("Invalid Input")
if grade:
    print("Your grade is:", grade)
