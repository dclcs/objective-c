### Objective-C learning

---

- [class in oc](Class.md)
- 
- `#include`和`#import`的区别是什么？
- `Foundation`
- 自动释放池， `@autoreleasepool`
- `NSLog`与`printf`区别
- 

#### Ch1 Object-C

##### 第一条 object-c 历史

- 面对对象
- message structure 
- oc具有动态绑定的消息结构，运行时会检查对象类型

##### 第二条 在类的头文件尽量少引入其他头文件

- oc 的类的实现： 以类名作为文件名，分别创建两个文件，头文件后缀名为.h,  实现文件后缀名为.m
- 如果一个类中要引用其他的类
  - 就得import该类的头文件， 这种方式不够优雅
  - 可以使用`@class EOCEmplyer ` , 这是所谓的**向前声明**
