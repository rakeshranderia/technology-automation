// Technology Leadership 101 - JavaScript
// Starting where all serious technology portfolios must begin.

console.log("Hello, World!");

// Variables
const role = "Technology Leader";
const yearsInTechnology = 20;

console.log(`Role: ${role}`);

// Arrays
const priorities = [
    "Strategy",
    "Operations",
    "Cybersecurity",
    "Transformation",
    "AI Governance"
];

// Loops
console.log("\nTechnology priorities:");

for (const priority of priorities) {
    console.log(`- ${priority}`);
}

// Conditions
if (yearsInTechnology > 10) {
    console.log("\nStill learning.");
}

// Functions
function assessTechnology(value, risk) {
    if (value === "High" && risk === "Low") {
        return "Proceed";
    }

    if (value === "High" && risk === "High") {
        return "Assess controls";
    }

    return "Reconsider";
}

const decision = assessTechnology("High", "Low");

console.log(`\nTechnology decision: ${decision}`);