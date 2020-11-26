# Category

### 什么是分类（Category）

- 在不创建子类的状态下对原有类进行扩展

- 语法

  ```objective-c
  @interface class_name(category_name)
    ...
  @end
  
  @implementation class_name(category_name)
    ...
  @end
  ```

  

- 程序在运行期间会优先从分类中查找方法，如果没有找到，就从原始类中找

### 类扩展