

### Encapsulating Data

#### Properties encapsulating an Object's Values

- Declare public properties for exposed data

```objective-c
@interface XYZPerson : NSObject
	@property NSString* firstname;
	@property NSString* lastname;
@end
```

- Use accessor methods to Get or Set Property Values, access or set object's properties via accessor methods:

  ```objective-c
  NSString* firstName = [somePerson firstName]
    [somePerson setFirstName: @"Jonny"]
  ```

1. By default the accessor methods are synthesized autoamtically for you by the compiler, just declear the property using `@property` in the class property. The synthesized methods follow specific naming conventions:

   - The method used to access the value (the *getter* method) has the same name as the property. 
   - The method used to set the value(the *setter* method) starts with the "set" and then use the capitalized property name

2. If you don’t want to allow a property to be changed via a setter method, you can add an attribute to a property declaration to specify that it should be `readonly` (the oppsite is `readwrite`, which is default):

   ```objective-c
   @property (readonly) NSString* fullName;
   ```

3. If you want to use a different name for an accessor method, it’s possible to specify a custom name by adding attributes to the property. In the case of Boolean properties (properties that have a `YES` or `NO` value), it’s customary for the getter method to start with the word “is.” The getter method for a property called `finished`, for example, should be called `isFinished`.

   ```objective-c
   @property (getter=isFinished) BOOL finished;
   ```

   If you need to specify multiple attributes, simply include them as a comma-separated list, like this:

   ```objective-c
   @property (readonly, getter=isFinished) BOOL finished;
   ```

- Dot Syntax Is a Concise Alternative to Accessor Method Calls
  - Getting a value using `somePerson.firstName` is the same as using `[somePerson firstName]`
  - Setting a value using `somePerson.firstName = @"Johnny"` is the same as using `[somePerson setFirstName:@"Johnny"]`
- Most Properties are backed by instance variables
  - Although it’s best practice for an object to access its own properties using accessor methods or dot syntax, it’s possible to access the instance variable directly from any of the instance methods in a class implementation. The underscore prefix makes it clear that you’re accessing an instance variable rather than, for example, a local variable:

	```objective-c
	- (void)someMethod {	
  	NSString *myString = @"An interesting string";
  _someString = myString;
  }
  ```
```

- Access Instance variables directly from initializer methods

  - A typical `init` method looks like this:

    ```objective-c
    - (id)init {
        self = [super init];
     
        if (self) {
            // initialize instance variables here
        }
     
        return self;
    }
    
    
    
    - (id)initWithFirstName:(NSString *)aFirstName lastName:(NSString *)aLastName {
        self = [super init];
     
        if (self) {
            _firstName = aFirstName;
            _lastName = aLastName;
        }
     
        return self;
    }
    
```

  - 


#### Manage the object graph through ownership and responsibility



- Strong references

  - an object is kept alive as long as it has at least one strong reference to it from another object

##### Avoid Strong references Cycles
##### Use Strong and Weak Declarations to Manage Ownership
