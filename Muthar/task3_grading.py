marks = int(input("Enter your marks(0-100): "))
if marks >= 90 and marks <= 100:
    grade = "A"
elif marks >= 75 and marks < 90:
    grade = "B"
elif marks >= 60 and marks < 75:
    grade = "C"
elif marks >= 45 and marks < 60:
    grade = "D"
elif marks >= 0 and marks < 45:
    grade = "Fail"
else:
    print("invalid marks entered." 
           "Please enter marks between 0 and 100.")
    