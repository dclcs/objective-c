## Chapter 1 : 熟悉OC



#### 1. 了解oc

- 使用消息结构的语言，其运行时所执行的代码由运行环境决定；而使用函数调用的语言，则由编译器决定
- oc 也有 动态绑定(dynamic binding)
- oc的主要工作都由“运行时组件”完成，而非编译器；
- oc 中的指针是用来指示对象的
- oc 的内存管理架构使用“引用计数”来实现的

#### 2. 在类的头文件中尽量少引入其他的头文件

- 头文件 => *.h

- 实现文件 => *m

- 当一个类中引入其他的类的对象时候，

  - 第一种做法是在当前头文件中`import`其他类的头文件， 会把类的所有实现细节导入
  - 第二种是直接使用关键字`class`，也就是所谓的向前声明， 其实现文件中也需导入其他类的头文件

  ```objective-c
  //#import "EOCEmployer.h"
  @class EOCEmployer;
  @interface EOCPerson : NSObject
  @property (nonatomic, copy) NSString* firstName;
  @property (nonatomic, copy) NSString* lastName;
  @property (nonatomic, strong) EOCEmployer *employer;
  @end
  ```

- 如果写的类继承某个超类，或者你写的类遵从某个协议，那么必须引入定义哪个超类或者协议的完整定义/头文件，且不能使用向前声明。



#### 3. 多用字面量语法，少用与之等价的方法

- 字面数值

  ```objective-c
  NSNumber *someNumber = [NSNumber numberWithInt : 1];
  //字面量初始化
  NSNumber *someNumber = @1;
  NSNumber *floatNumber = @2.5f;
  ```

  

- 字面量数组

  ```objective-c
  //创建
  NSArray *animals = [NSArray arrayWithObjects :@"cat", 
                     @"dog", @"mouse", @"badger", nil];
  //字面量创建
  NSArray *animals = @[@"cat", @"dog", @"mouse", @"badger"];
  
  
  //访问
  NSString* dog = [animals objectAtIndex : 1];
  //字面量访问
  NSString* dog = animals[1]; //取下标
  
  
  id o1 = /*...*/;// vaild object
  id o2 = /*...*/; //have nil
  id o3 = /*...*/;//vaild object
  
  
  NSArray *arrayA = [NSArray arrayWithObjects: o1, o2, o3, nil];// arrayA中只有一个对象，o1，以为arrayWithObjects会依次处理各个参数直至发现nil为止
  NSArray *arrayB = @[o1, o2, o3]; // nil
  ```

  - 用字面量语法创建数组要注意，如果数组元素对象中有nil，则会抛出异常，因为字面量语法实际上是一种“语法糖”，其效果等于先创建了一个数组，然后把方括号内的锁哟对象都加到这个数组中

- 字面量字典

  ```objective-c
  //创建
  NSDictionary *personData = [NSDictionary dictionaryWithObjectsAndKeys:
                                      @"Matt", @"firstname",
                                      @"Garray", @"lastname",
                                      [NSNumber numberWithInt:28], @"age"
                                      , nil];
  
  
  //字面量创建
  NSDictionary *personData = @{@"firstname": @"Matt", @"lastname":@"Garray", @"age":[NSNumber numberWithInt:28]};
  
  //访问
  NSString *lastname = [personData objectForKey :@"lastname"];
  NSString *lastname = personData[@"lastname"];
  ```

  - 与数组一样，用字面量创建字典时， 如果有nil，便会抛出异常

- 可变数组与字典

  ```objective-c
  [mutableArray replaceObjectAtIndex:1 withObject:@"dog"];
  [mutableDict setObject:@"Garray" forKey:@"lastname"];
  
  mutableArray[1] = @"dog";
  mutableDic[@"lastname"] = @"Garray";
  ```

  

- 局限性

  - 除了字符串以外，所创建出来的对象必须属于Foundation框架



#### 4. 多用类型常量，少用#define预处理指令

```objective-c
#define ANIMATION_DURATION 0.3
static const NSTimeInterval kAnimationDuration = 0.3;
```



- 使用define会把源代码中替换为你需要的值
- 若你不打算公开某个常量，则应该将其定义在使用该常量的实现文件里

- 有时候需要对外公开某个常量，则使用`extern`



#### 5. 用枚举表示状态、选项、状态码

```objective-c
 enum EOCConnectState {
            EOCConnectStateDisconnect,
            EOCConnectStateConnecting,
            EOCConnectStateConnected
        };
typedef enum EOCConnectState EOCConnectState;
EOCConnectState state = EOCConnectStateConnected;
```



# TODO

【】![截屏2020-12-05 下午4.31.04](../../../../Library/Application%20Support/typora-user-images/%E6%88%AA%E5%B1%8F2020-12-05%20%E4%B8%8B%E5%8D%884.31.04.png)