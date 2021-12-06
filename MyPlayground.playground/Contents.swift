import UIKit

var greeting = "Hello, playground"

func exercise() {
    
    
    var alphabet = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]
    
    //The number of letters in alphabet equals 26
    
    var password = ""
    for index in 1...6 {
        alphabet.shuffle()
        password += alphabet[index]
    }
    
    print(password)
    
    
}

exercise()
