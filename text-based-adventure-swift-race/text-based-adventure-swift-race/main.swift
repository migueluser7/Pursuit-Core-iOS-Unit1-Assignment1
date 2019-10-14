//
//  main.swift
//  text based adventure app
//
//  Created by miguel on 09/20/2019.
//  Copyright © 2019 Miguel Aquino. All rights reserved.
/*
 ============================
 APP REQUIREMENTS
 ============================
 
 ✅ Your command line app must build and run with no compiler errors or warnings
 / complete
 
 ✅ Have at least 10 opportunities for the user to make decisions
 / complete
 
 ✅ Have at least one opportunity where the user will enter a number (see converting Strings to numbers)
 / line 63
 
 ✅ Use both Switch statements and If/Else Statements
 / switch line 52 - if/else line 51
 
 ✅ Use both type annotation and type inference to set variables
 / type annotation line 41 - type inference line 46
 
 ✅ Use at least one tuple in your code
 / line 64 // does array count? 🥴
 
 ✅ Use at least range in your code
 / line 86
 ✅ Use a for loop in your code
 / line 33
 
 ✅ Use a while loop in your code
 / line 66
 */

import Foundation

var raceOrNo: String
var gotAway = false
var caughtByPolice = false
var race = false
var startedRace = false
var carStatus = "working"

repeat {
print("would you like to go out for a car race ? \"yes\" or \"no\"") // asking the user if they would like to go out for a race
    raceOrNo = String(readLine() ?? "no")
    if raceOrNo == "yes" { race = true; startedRace = true} else { startedRace = false }
switch raceOrNo {
case "yes":
    
    
    print("""
great, now choose your car:
1992 honda civic: type 1992
1993 bmw 325i: type 1993
1999 lexus es 300: type 1999
steal a car off the street: type 999
""")
    var carChosen = Int(readLine() ?? "999") ?? 999
    var stolenCars = [ "2019 BMW m760", "2019 Mercedes Benz s65 amg", "2018 Audi RS7", "2016 Bentley Continental", "2020 Porsche Taycan Turbo"]
    
    switch carChosen {
    case 1992:
        print("wow you chose the 1992 honda civic, lets see how far you get")
        repeat { // repeat-while loop
            
            if caughtByPolice == true || carStatus == "not-working" {
                break // exits the loop after one of these two outcomes become true
            }
            
            print("""
        the speed limit is 25mph ...


        how fast are you currently going?
        """)
            var currentSpeed = Int(readLine() ?? "0") ?? 0
            
            switch currentSpeed {
            case 0:
                print("take the car off of neutral and put it in drive mode and start driving fool 🤬")
            case 1...10:
                print("other drivers hate you right now, speed up turtle 🐢, \(currentSpeed)mph is ridiculous")
            case 11...20:
                print("are you learning how to drive ? speed the 🤬 up !")
            case 21...25:
                print("wowwww, you are driving like a typical new york cab 🚕🥴, speed up or slow down fool 👺")
            case 26...40:
                print("okay terrorist, now you are breaking the law 😈")
                print("now you have the cops on your ass, what are you going to do ? ")
                print("getaway or pull over ? (type getaway or pull over)")
                var choicehonda: String = readLine() ?? "pull over"
                
                switch choicehonda {
                case "getaway":
                    print("LOLOLOLOLOLOLOLOL you went straight to jail, the car broke down")
                    caughtByPolice = true
                    carStatus = "not-working"
                case "pull over":
                    print("you were arrested due to the car not being yours")
                    caughtByPolice = true
                default:
                    print("you were trapped and arrested fool")
                    caughtByPolice = true
                }
            case 40...:
                print("LOLOLOLOLOLOL dude, you pushed the car to the limit and it broke down 🤣")
                carStatus = "not-working"
            default:
                print("what is your speed fool")
            }
            
        } while caughtByPolice == false && gotAway == false
        
    case 1993:
        print("wow you chose the 1993 bmw 325i, lets see how far you get 😂")
        repeat { // repeat-while loop
            
            if caughtByPolice == true || carStatus == "not-working" {
                break // exits the loop after one of these two outcomes become true
            }
            
            print("""
        the speed limit is 25mph ...


        how fast are you currently going?
        """)
            var currentSpeed = Int(readLine() ?? "0") ?? 0
            
            switch currentSpeed {
            case 0:
                print("take the car off of neutral and put it in drive mode and start driving fool 🤬")
            case 1...10:
                print("other drivers hate you right now, speed up turtle 🐢, \(currentSpeed)mph is ridiculous")
            case 11...20:
                print("are you learning how to drive ? speed the 🤬 up !")
            case 21...25:
                print("wowwww, you are driving like a typical new york cab 🚕🥴, speed up or slow down fool 👺")
            case 26...40:
                print("okay terrorist, now you are breaking the law 😈")
                print("now you have the cops on your ass, what are you going to do ? ")
                print("getaway or pull over ? (type getaway or pull over)")
                var choicehonda: String = readLine() ?? "pull over"
                
                switch choicehonda {
                case "getaway":
                    print("LOLOLOLOLOLOLOLOL you went straight to jail, the car broke down")
                    caughtByPolice = true
                    carStatus = "not-working"
                case "pull over":
                    print("you were arrested due to the car not being yours")
                    caughtByPolice = true
                default:
                    print("you were trapped and arrested fool")
                    caughtByPolice = true
                }
            case 40...:
                print("LOLOLOLOLOLOL dude, you pushed the car to the limit and it broke down 🤣")
                carStatus = "not-working"
            default:
                print("what is your speed fool")
            }
            
        } while caughtByPolice == false && gotAway == false
        
    case 1999:
        print("so really chose the 1999 lexus es 300? terrible choice, lets see how far you get")
        repeat { // repeat-while loop
            
            if caughtByPolice == true || carStatus == "not-working" {
                break // exits the loop after one of these two outcomes become true
            }
            
            print("""
        the speed limit is 25mph ...


        how fast are you currently going?
        """)
            var currentSpeed = Int(readLine() ?? "0") ?? 0
            
            switch currentSpeed {
            case 0:
                print("take the car off of neutral and put it in drive mode and start driving fool 🤬")
            case 1...10:
                print("other drivers hate you right now, speed up turtle 🐢, \(currentSpeed)mph is ridiculous")
            case 11...20:
                print("are you learning how to drive ? speed the 🤬 up !")
            case 21...25:
                print("wowwww, you are driving like a typical new york cab 🚕🥴, speed up or slow down fool 👺")
            case 26...40:
                print("okay terrorist, now you are breaking the law 😈")
                print("now you have the cops on your ass, what are you going to do ? ")
                print("getaway or pull over ? (type getaway or pull over)")
                var choicehonda: String = readLine() ?? "pull over"
                
                switch choicehonda {
                case "getaway":
                    print("LOLOLOLOLOLOLOLOL you went straight to jail, the car broke down")
                    caughtByPolice = true
                    carStatus = "not-working"
                case "pull over":
                    print("you were arrested due to the car not being yours")
                    caughtByPolice = true
                default:
                    print("you were trapped and arrested fool")
                    caughtByPolice = true
                }
            case 40...:
                print("LOLOLOLOLOLOL dude, you pushed the car to the limit and it broke down 🤣")
                carStatus = "not-working"
            default:
                print("what is your speed fool")
            }
            
        } while caughtByPolice == false && gotAway == false
        
    case 999:
        print("congrats fool, you just stole a \(stolenCars.randomElement()!)!!!")
        repeat { // repeat-while loop
            
            if caughtByPolice == true || gotAway == true {
                break // exits the loop after one of these two outcomes become true
            }
            
            print("""
        the speed limit is 25mph ...


        how fast are you currently going?
        """)
            var currentSpeed = Int(readLine() ?? "0")!
            
            switch currentSpeed {
            case 0:
                print("take the car off of neutral and put it in drive mode and start driving fool 🤬")
            case 1...10:
                print("other drivers hate you right now, speed up turtle 🐢, \(currentSpeed)mph is ridiculous")
            case 11...20:
                print("are you learning how to drive ? speed the 🤬 up !")
            case 21...25:
                print("wowwww, you are driving like a typical new york cab 🚕🥴, speed up or slow down fool 👺")
            case 26...:
                print("okay terrorist, now you are breaking the law 😈")
                print("now you have the cops on your ass, what are you going to do ? ")
                print("getaway or pull over ? (type getaway or pull over)")
                var choiceStolenCar: String = readLine() ?? "pull over"
                
                switch choiceStolenCar {
                case "getaway":
                    print("nice, with that super fast car and your decent driving skills, you got away safely")
                    caughtByPolice = false
                    gotAway = true
                case "pull over":
                    print("you were discovered to have a stolen car and was promptly arrested")
                    caughtByPolice = true
                default:
                    print("you were trapped and arrested fool")
                    caughtByPolice = true
                }
            default:
                print("what is your speed fool")
            }
            
        } while caughtByPolice == false && gotAway == false
        
        
        
    default:
        print()
        
        
        
        
    }
    
    
    
    
case "no":
    print("well then.. see you never 🤪")
    break // user does not want to race
    
default:
    print("I didn't quite get that ... please, answer yes or no fool")
    
    
}
} while race == true && startedRace == true

if caughtByPolice {
    var repeat5x = (1,2,3,4,5)
    var arrayCount = [repeat5x]
    for num in arrayCount {
        print("LOL .. GAME OVER") }
}
