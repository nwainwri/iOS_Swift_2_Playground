/*:
 ## More Optionals
 Let's start off with some review of optionals.
 When we have an optional variable, the variable might contain a value or it can contain nil. Optionals are represented with a '?' after the variable type.
 */
/*:
 - Experiment:
 Declare a optional Double value and set it to nil.
 */
var testDouble:Double? = nil



/*:
 - Experiment:
 Assign a value your optional Double.
 */
testDouble = 45.5

/*:
 - Experiment:
 Force unwrap the optional value. Why do you have to be careful about force unwrapping?
 */
var secondTestDouble = testDouble!

// leaves program to a potential massive crash; as there is no error checking on 'testDouble'

/*:
 - Experiment:
 Use conditional unwrapping to verify if the optional has a value. Print the value if there is something, otherwise, print out to indicate there is no value present. Why is conditional unwrapping better than force unwrapping?
 */
if testDouble != nil {
  //Do Something
}


if let xy = testDouble {
  print(xy)
}



/// DID I DO THIS RIGHT??
/*:
 - Callout(Challenge):
 Create a function that removes the `nil` values from the array and returns a new array with only the valid Strings.
 */
var testData: [String?] = ["Heather", nil, "Mike", "John", nil, nil, "Bob"]

var removedNils = [String]()
//var yourArray = [String]()

// use for loop to search...
// search thru array for any value that != nil
// add those values to array
// return new array

//func myArrayFunc(inputArray:Array<Int>) -> Array<Int> {}
func removeNiller(inputArray:Array<String?>) -> Array<String>
{
  // try 'for each in... "
  var resArray: Array<String> = []
  
  for anyString in inputArray
  {
    if anyString != nil
    {
      resArray.append(anyString!)
    }
  }
  return resArray
  
  //  for testIndex in 0..<testData.count {
  //    let current = testData[testIndex]
  //    if current != nil {
  //      removedNils.append(current!)
  //    } else {}
  //  }
  
  //  return removedNils
}

var finishedArray = removeNiller(inputArray: testData)

//removeNiller(inputArray: testData)


//
//
//let pets = ["dog", "cat", "pig", "parrot"]
//for petsIndex in 0...3 {
//  let pet = pets[petsIndex]
//  if pet == "pig" {
//    print("\(pet) \(petsIndex)")
//  }
//
//}


/*:
 - Callout(Challenge):
 We want to write a function that validates form data filled in by a user. Once we encounter the first field that is blank, we want to indicate to the user that the field is blank.
 If the user has filled in everything correctly, we want to print all information out.
 Below is some test data you can use to test your function.
 */
// Should pass all checks and print all information
let username: String? = "USER1-"
let password: String? = "password123"
let email: String? = "EMuser1@lighthouselabs.ca"

// Should stop at password check and indicate password field is empty
//let username: String? = "USER1-"
//let password: String? = nil
//let email: String? = "EMuser1@lighthouselabs.ca"

// Should stop at username check and indicate username field is empty
//let username: String? = nil
//let password: String? = nil
//let email: String? = "EMuser1@lighthouselabs.ca"
var finishedString = String()

func checkAllFields(name: String?, pass: String?, mail: String?) { // ->String {
  
  if name != nil
  {
    finishedString.append(name!)
    finishedString.append(" | ")
    
    if pass != nil
    {
      finishedString.append(pass!)
      finishedString.append(" | ")
      if mail != nil
      {
        finishedString.append(mail!)
        finishedString.append(" | ")
      }
      else
      {
        print("EMAIL FIELD BLANK")
      }
    }
    else
    {
      print("PASSWORD FIELD BLANK")
    }
  }
  else
  {
    print("USER FIELD BLANK")
  }

  if (name != nil) && (pass != nil) && (mail != nil){
    print(finishedString)
  }
  //  return finishedString
}
//var isitDone:String = checkAllFields(name: username, pass: password, mail: email)

checkAllFields(name: username, pass: password, mail: email)


/*:
 ## Guard Let
 Depending on how you finished the first challenge, the code you've written might not be as readable or optimal as it could be. So let's take a look at how we can improve this.
 A 'guard' statement is similar to an 'if', but a 'guard' statement will only run its block of code if the conditions are NOT met.
 Let's look at a simple guard example below.
 */
let myNumber = 10
// This function checks if the number given to it is a positive or negative value
func isMyNumberANegativeValue(myNumber: Int){
  // This guard condition checks if 'myNumber' is less than zero.
  // Remember, if this condition IS FALSE, the block of code within the else block will run
  // Otherwise, the function will continue
  guard myNumber < 0 else {
    print("I am positive")
    return
  }
  print("I am negative!")
}
isMyNumberANegativeValue(myNumber: myNumber)

/*:
 - Experiment:
 Try creating your own guard statement with different conditional statements. Notice which boolean condition causes the code the enter the 'else' block or bypass it entirely.
 */
var someThing:String? = nil

func isItReally(string: String){
  guard someThing != nil else {
    print("is nil")
    return
  }
}

isItReally(string: someThing)








/*:
 - Experiment:
 Create a function that takes in two number parameters and divide them. We don't like dividing by zero, so ensure this doesn't happen. Otherwise, return the calculated value.
 */










/*:
 Let's take a look at another example and see how we can use guard for optionals
 */

let myOptionalNumber: Int? = 10

// This function just checks if the given parameter is nil or not
func isMyNumberAnOptional(myOptionalNumber: Int?){
  
  // This guard checks if 'myOptionalNumber' has a value or not. Similar concept to conditional unwrapping
  // If 'myOptionalNumber' is indeed nil, the else block will run
  // Otherwise, our guard let statement is looking for a valid value, and the code will continue to run
  guard let myUnwrapped = myOptionalNumber else {
    
    print("This value is nil")
    return
  }
  
  // Lastly, you can see we can use the variable 'myUnwrapped' variable declared above within our entire scope of this function now
  // Very convenient!!
  // A regular 'if let' would not allow this
  print("This unwrapped value is \(myUnwrapped)")
}

isMyNumberAnOptional(myOptionalNumber: myOptionalNumber)

/*:
 - Experiment:
 Create a function that takes in an array of numbers. Have the function add all the numbers together and return the result. Make sure to `guard` against an empty array. Use `array.first` to check if there is at least one value in the array.
 */









/*:
 - Callout(Challenge):
 Now that we've learnt this new guard statement, let's rewrite the form validation challenge using the guard statements. How does it improve our current implementation?
 */











//: [Next](@next)
