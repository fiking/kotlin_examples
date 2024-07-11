import hello.*
@OptIn(kotlinx.cinterop.ExperimentalForeignApi::class)
fun main(args: Array<String>) {
  sayHello()

  var two = callint(2);
  println(two);

  var struct = callstruct();
  println(struct);
}
