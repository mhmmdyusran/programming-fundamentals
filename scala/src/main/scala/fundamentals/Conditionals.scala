package fundamentals

object Conditionals:
  def demonstrate(): Unit =
    println("=== Conditionals ===\n")
    
    // Basic if-else
    println("1. Basic if-else:")
    val number = 42
    if number > 0 then
      println(s"$number is positive")
    else if number < 0 then
      println(s"$number is negative")
    else
      println("The number is zero")
    
    // If expression (returns a value)
    println("\n2. If expression:")
    val max = if 10 > 5 then 10 else 5
    println(s"Maximum value: $max")
    
    // Multi-branch if-else
    println("\n3. Multi-branch if-else:")
    val grade = 85
    val letterGrade = if grade >= 90 then "A"
      else if grade >= 80 then "B"
      else if grade >= 70 then "C"
      else if grade >= 60 then "D"
      else "F"
    println(s"Grade $grade is letter grade $letterGrade")
    
    // Pattern matching (basic)
    println("\n4. Basic pattern matching:")
    val day = "Monday"
    val typeOfDay = day match
      case "Saturday" | "Sunday" => "Weekend"
      case _ => "Weekday"
    println(s"$day is a $typeOfDay")
    
    // Pattern matching with guards
    println("\n5. Pattern matching with guards:")
    val age = 25
    val category = age match
      case n if n < 13 => "Child"
      case n if n < 20 => "Teenager"
      case n if n < 30 => "Young Adult"
      case n if n < 50 => "Adult"
      case _ => "Senior"
    println(s"Age $age is categorized as: $category")
    
    // Pattern matching with case classes
    println("\n6. Pattern matching with case classes:")
    sealed trait Shape
    case class Circle(radius: Double) extends Shape
    case class Rectangle(width: Double, height: Double) extends Shape
    case class Triangle(base: Double, height: Double) extends Shape
    
    def calculateArea(shape: Shape): Double = shape match
      case Circle(r) => math.Pi * r * r
      case Rectangle(w, h) => w * h
      case Triangle(b, h) => 0.5 * b * h
    
    val shapes = List(
      Circle(5),
      Rectangle(4, 6),
      Triangle(3, 8)
    )
    
    shapes.foreach { shape =>
      val area = calculateArea(shape)
      println(s"Area of $shape is $area")
    }
    
    // Option handling with pattern matching
    println("\n7. Option handling:")
    def findDepartment(id: Int): Option[String] = id match
      case 1 => Some("HR")
      case 2 => Some("IT")
      case 3 => Some("Finance")
      case _ => None
    
    val deptId = 2
    val deptName = findDepartment(deptId) match
      case Some(name) => name
      case None => "Unknown Department"
    println(s"Department $deptId is: $deptName")
    
    // Type pattern matching
    println("\n8. Type pattern matching:")
    def describe(x: Any): String = x match
      case i: Int => s"Integer: $i"
      case s: String => s"String: $s"
      case d: Double => s"Double: $d"
      case l: List[_] => s"List with ${l.size} elements"
      case _ => "Unknown type"
    
    val values = List(42, "Hello", 3.14, List(1, 2, 3))
    values.foreach(value => println(describe(value)))
    
    // Pattern matching with tuples
    println("\n9. Pattern matching with tuples:")
    val point = (0, 0)
    val location = point match
      case (0, 0) => "Origin"
      case (0, y) => s"On Y-axis at y = $y"
      case (x, 0) => s"On X-axis at x = $x"
      case (x, y) => s"At point ($x, $y)"
    println(s"Point $point is: $location")
    
    println() // Empty line