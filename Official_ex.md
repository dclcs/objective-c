## Exercises

#### Defining Classes

1. Use Xcode’s New File template window to create the interface and implementation files for an Objective-C class called `XYZPerson`, which inherits from `NSObject`.
2. Add properties for a person’s first name, last name and date of birth (dates are represented by the `NSDate` class) to the `XYZPerson` class interface.
3. Declare the `sayHello` method and implement it as shown earlier in the chapter.
4. Add a declaration for a class factory method, called “`person`”. Don’t worry about implementing this method until you’ve read the next chapter.

#### Working with Objects

1. Open the `main.m` file in your project from the exercises at the end of the last chapter and find the `main()` function. As with any executable written in C, this function represents the starting point for your application.

   Create a new `XYZPerson` instance using `alloc` and `init`, and then call the `sayHello` method.

   

   **Note:** If the compiler doesn’t prompt you automatically, you will need to import the header file (containing the `XYZPerson` interface) at the top of `main.m`.

   

2. Implement the `saySomething:` method shown earlier in this chapter, and rewrite the `sayHello` method to use it. Add a variety of other greetings and call each of them on the instance you created above.

3. Create new class files for the `XYZShoutingPerson` class, set to inherit from `XYZPerson`.

   Override the `saySomething:` method to display the uppercase greeting, and test the behavior on an `XYZShoutingPerson` instance.

4. Implement the `XYZPerson` class `person` factory method you declared in the previous chapter, to return a correctly allocated and initialized instance of the `XYZPerson` class, then use the method in `main()` instead of your nested `alloc` and `init`.

   

   **Tip:** Rather than using `[[XYZPerson alloc] init]` in the class factory method, instead try using `[[self alloc] init]`.

   Using `self` in a class factory method means that you’re referring to the class itself.

   This means that you don’t have to override the `person` method in the `XYZShoutingPerson` implementation to create the correct instance. Test this by checking that:

   

   `    XYZShoutingPerson *shoutingPerson = [XYZShoutingPerson person];`

   creates the correct type of object.

   

   

5. Create a new local `XYZPerson` pointer, but don’t include any value assignment. 

   Use a branch (`if` statement) to check whether the variable is automatically assigned as `nil`.