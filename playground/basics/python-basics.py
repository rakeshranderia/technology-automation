# Technology Leadership 101 - Python
# Starting where all serious technology portfolios must begin.

print("Hello, World!")

# Variables
role = "Technology Leader"
years_in_technology = 20

print(f"Role: {role}")

# Lists
priorities = [
    "Strategy",
    "Operations",
    "Cybersecurity",
    "Transformation",
    "AI Governance"
]

# Loops
print("\nTechnology priorities:")

for priority in priorities:
    print(f"- {priority}")

# Conditions
if years_in_technology > 10:
    print("\nStill learning.")

# Functions
def assess_technology(value, risk):
    if value == "High" and risk == "Low":
        return "Proceed"

    if value == "High" and risk == "High":
        return "Assess controls"

    return "Reconsider"


decision = assess_technology("High", "Low")

print(f"\nTechnology decision: {decision}")