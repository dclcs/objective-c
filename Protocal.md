# Protocol

### 什么是协议

- 协议就是一系列方法的声明列表，只要某个类遵守了这个协议，那么这个类就有了这个协议中所有的方法的声明

```objective-c
@protocol protocol_name
  ....
@end
```

### required 和 optional

- @required : 使用这个关键字标记的方法必须实现，否则发出警告
- @optional ：使用这个关键字标记的方法不一定实现

### 代理

