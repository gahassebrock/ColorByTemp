import Foundation

print("Choose chart:")
let choosenChart: Int = Int(String(readLine() ?? "1")) ?? 0

// Get input of temperatures
print("Enter temperatures:")
let inputTemp: String = readLine() ?? "999"

// Split inputs into array
let inputTempArr: [String] = inputTemp.components(separatedBy: ", ")

// Calculate color from temperature
func calcColor(num: Int) -> String {
    switch choosenChart {
    case 1:
        if num == 999 {
            return("That's awfully hot!")
        }
        else if num >= 88 {
            return("Red")
        }
        else if num <= 87 && num >= 78 {
            return("Orange")
        }
        else if num <= 77 && num >= 68 {
            return("Yellow")
        }
        else if num <= 67 && num >= 58 {
            return("Tan")
        }
        else if num <= 57 && num >= 48 {
            return("Green")
        }
        else if num <= 47 && num >= 38 {
            return("Dark Blue")
        }
        else if num <= 37 && num >= 28 {
            return("Light Blue")
        }
        else if num <= 28 {
            return("Gray")
        }
        else {
            return("Error!")
        }
    case 2:
        if num == 999 {
            return("That's awfully hot!")
        }
        else if num >= 88 {
            return("Red")
        }
        else if num <= 87 && num >= 78 {
            return("Orange")
        }
        else if num <= 77 && num >= 68 {
            return("Yellow")
        }
        else if num <= 67 && num >= 58 {
            return("Tan")
        }
        else if num <= 57 && num >= 48 {
            return("Green")
        }
        else if num <= 47 && num >= 38 {
            return("Dark Blue")
        }
        else if num <= 37 && num >= 28 {
            return("Light Blue")
        }
        else if num <= 28 {
            return("Gray")
        }
        else {
            return("Error!")
        }
    default:
        return("Invalid Chart!")
    }
}

for index in inputTempArr.indices {
    let curNum: Int = Int(String(inputTempArr[index])) ?? 999
    print("(\(index + 1))  |  Temp: \(curNum)  |  Color: \(calcColor(num: curNum))")
}