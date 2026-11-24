local RS = game:GetService("ReplicatedStorage")

const Shared = RS:WaitForChild("Shared")
const Version = require(Shared:WaitForChild("Version"))

print("Client started, version:", Version)
