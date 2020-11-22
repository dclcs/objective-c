# Memory Management in OC



### ARC , Automatic Reference Counting

- 两个基本原则
  - retain、release、autorelease、dealloc由编译器自动生成
  - dealloc方法可以在类中重写，但不可以调用。
- OC中的对象都是使用指针引用的，如果没有指针的引用，对象就会被销毁。OC中指向对象的指针有两种，强指针和弱指针
  - 强指针
    - Apple官方对于ARC的引用规则是，只要没有强指针指向的对象，对象就会自动销毁。
    - 强指针变量用`[__strong]`修饰，默认情况下，所有的指针都是强指针。