// main.kt
import hello.*

@OptIn(kotlinx.cinterop.ExperimentalForeignApi::class)
fun main(args: Array<String>) {
/*
  sayHello()

  val array = IntArray(3) { i -> i * 2 }
  for (i in array.indices) {
    println(array[i])
  }
*/
  val list = listOf(1, 2, 3)
//  for (i in list.indices) {
//    println(list[i])
//  }
  val listret = printArray(list)
  println(listret)
}
