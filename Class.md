# Class in Objective-C



#### 类属性

在OC中，属性的声明以关键字`@property`开头，他可以出现在一个类的`@interface`代码部分，基本语法格式为

```objective-c
@property (pro1, pro2, ...) type_name var;



@property int age; //等同于


{
  @private int _age;
}
-(void)setAge:(int)age;
-(int)age
```

在声明属性时，可以设置属性的特性， 特性可以有多个：

- 原子性

  - 默认情况下，属性是`atomic`，所以有**编译器产生的set和get方法提供了健全的多线程中访问属性的功能， get 方法和 set 方法可以完全不受其他线程的影响**。可以将该属性的特性设置为`nonatomic`，表明set和get方法是非原子操作，不使用同步锁

- 读写权限

  - Readwrite 和 Readonly

    <img src="https://tva1.sinaimg.cn/large/0081Kckwly1gkww0hrrryj30y80ds7ad.jpg" alt="截屏2020-11-21 下午4.44.33" style="zoom:50%;" />

- 访存方法名

  - 一个属性的访问和存储方法名默认为propertyName和setPropertyName
  - 有些属性的类型是Bool型，则需要在get方法上添加is作为前缀

  ```objective-c
  @property (nonatomic ,getter=isOn) Bool on
  ```

- Set 语以

完成属性的声明后，就需要实现属性， `@syntheize var_name = _var_name`

#### 构造方法

- 重写`init`方法
  - 首先，通过`[super init]`调用父类的初始化方法
  - 检查父类返回的对象，如果是`nil`，则初始化不进行，需要像接受者对象返回`nil`
  - 在初始化实力对象时，如果它们是其他对象的引用，则在必要时要进行保留
  - 为实力变量设置初值，并返回`self`
- 也可以自定义构造方法

#### Description方法

- 类似于`python`里面的`__str__`
- 该方法内不能有`self`
- 