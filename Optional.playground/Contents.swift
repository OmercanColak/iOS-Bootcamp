import UIKit

var greeting = "Hello, playground"

//Tanımlama
var mesaj = "Merhaba"

//Bir çok programlama dilinde "Null" olarak geçer, fakat swift dilinde bu  "nil" dir.
var str:String?

str = "Merhaba"

if str != nil {
    print(str!) //Sonuna ! koyar isek unwrap işlemi yaparız. Böylece optional olmaktan çıkarır.
}else{
    print("str nil değer içeriyor")
}

//optional binding
if let temp = str { //"Nil" se else çalışacak, "Nil" değilse if çalışacak
    print(temp) //otomatik unwrap işlemi yapar.
}else {
    print("Str nil değeri içeriyor")
}

if var temp = str {
    print(temp)
    temp = "Nasılsın?"
    print(temp)
}else {
    print("Str Nil değeri içeriyor.")
}
