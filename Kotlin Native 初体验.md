# Kotlin Native初体验

## 背景

Kotlin Native是将Kotlin代码直接编译成本地代码运行的工具链，它有一个基于LLVM的Kotlin编译器和相关的Kotlin标准库，主要是用于无法或不使用虚拟机的场景。

下面我们以Mac平台为例，搭建Kotlin Native的使用环境，然后编译简单的Kotlin代码进行验证。

## 环境搭建

### 本地环境

- OS：macOS 14.3
- CPU：Apple M3

### Kotlin Native工具链文件获取

直接从Github的Kotlin官方仓中获取预编译Kotlin Native软件包。

```
https://github.com/JetBrains/kotlin/releases
```

### 配置环境变量

因为直接下载的软件包，所以只需要将Kotlin Native的执行文件路径配置到Mac的环境变量即可。此处直接将执行路径添加到启动脚本中。

```
echo 'export PATH="/Users/language-vm/tools/kotlin-native-prebuilt-macos-aarch64-2.0.0/bin:$PATH"' >> ~/.zprofile
source ~/.zprofile
```

## 用例编译

通过三个用例验证Kotlin Native工具链的功能，分别是Kotlin、Kotlin-C和Kotlin-ObjectiveC。

### Kotlin

此用例是通过Kotlin编写的，具体代码如下：

```kotlin
fun main() {
  println("hello kotlin/native!")
}
```

编译命令是

```shell
kotlinc-native hello.kt -o hello
```

生成的可执行文件为 hello.kexe，直接执行就可以得到结果。

```shell
./hello.kexe
```

### Kotlin-C

此用例是通过Kotlin和C编写的，在Kotlin的代码中调用C的函数。

1. 在C头文件中编写C函数接口。

   ```c
   // hello.h
   void sayHello();
   ```

2. 在def文件中编写接口文件配置信息和接口的实现。

   ```c
   // hello.def 
   headers = hello.h
   headerFilter = hello.h
   
   ---
   
   #include "stdio.h"
   
   void sayHello() {
     printf("Hello Kotlin Native\n");
   }
   ```

3. 编写Kotlin代码，调用C函数。

   ```kotlin
   // main.kt
   import hello.*
   @OptIn(kotlinx.cinterop.ExperimentalForeignApi::class)
   fun main(args: Array<String>) {
     sayHello()
   }
   ```

4. 使用cinterop工具将C代码生成klib。

   ```shell
   cinterop -def hello.def -compiler-options -I.  -o hello
   ```

5. 使用kotlinc-native编译Kotlin代码，并链接C代码生成klib。

   ```shell
   kotlinc-native main.kt -library hello -o main
   ```

### Kotlin-ObjectiveC

此用例是通过Kotlin和ObjectiveC编写的，在Kotlin的代码中调用ObjectiveC的函数。

1. 在C头文件中编写ObjectiveC函数接口。

   ```c
   // hello.h
   void sayHello();
   ```

2. 在def文件中编写接口文件配置信息和接口的实现。

   ```c++
   headers = hello.h
   headerFilter = hello.h
   language = Objective-C
   ---
   
   #include <Foundation/Foundation.h>
   
   void sayHello() {
     NSLog(@"hello Objective-C"); 
   }
   ```

3. 编写Kotlin代码，调用ObjectiveC函数。

   ```kotlin
   // main.kt
   import hello.*
   @OptIn(kotlinx.cinterop.ExperimentalForeignApi::class)
   fun main(args: Array<String>) {
     sayHello()
   }
   ```

4. 使用cinterop工具把ObjectiveC代码生成klib。

   ```shell
   cinterop -def hello.def -compiler-options -I.  -o hello
   ```

5. 使用kotlinc-native编译Kotlin代码，并链接ObjectiveC代码生成klib。

   ```shell
   kotlinc-native main.kt -library hello -o main
   ```

   

## 附录

```
define void @"kfun:#main(kotlin.Arr
```

