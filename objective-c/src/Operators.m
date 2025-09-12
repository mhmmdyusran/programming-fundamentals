#import "Operators.h"

// Custom class for operator demonstration
@interface Point : NSObject

@property (nonatomic, assign) CGFloat x;
@property (nonatomic, assign) CGFloat y;

- (instancetype)initWithX:(CGFloat)x y:(CGFloat)y;
- (Point *)addPoint:(Point *)other;
- (Point *)subtractPoint:(Point *)other;
- (NSString *)description;

@end

@implementation Point

- (instancetype)initWithX:(CGFloat)x y:(CGFloat)y {
    self = [super init];
    if (self) {
        _x = x;
        _y = y;
    }
    return self;
}

- (Point *)addPoint:(Point *)other {
    return [[Point alloc] initWithX:self.x + other.x y:self.y + other.y];
}

- (Point *)subtractPoint:(Point *)other {
    return [[Point alloc] initWithX:self.x - other.x y:self.y - other.y];
}

- (NSString *)description {
    return [NSString stringWithFormat:@"(%.1f, %.1f)", self.x, self.y];
}

@end

@implementation Operators

- (void)demonstrate {
    NSLog(@"=== Operators ===\n");
    
    // Arithmetic operators
    NSLog(@"1. Arithmetic Operators:");
    int a = 10;
    int b = 3;
    
    NSLog(@"a = %d, b = %d", a, b);
    NSLog(@"Addition (a + b): %d", a + b);
    NSLog(@"Subtraction (a - b): %d", a - b);
    NSLog(@"Multiplication (a * b): %d", a * b);
    NSLog(@"Division (a / b): %d", a / b);
    NSLog(@"Modulus (a %% b): %d", a % b);
    
    // Floating point arithmetic
    NSLog(@"\n2. Floating Point Arithmetic:");
    float x = 10.0f;
    float y = 3.0f;
    
    NSLog(@"x = %.1f, y = %.1f", x, y);
    NSLog(@"Float division (x / y): %.2f", x / y);
    
    // Increment and decrement
    NSLog(@"\n3. Increment and Decrement:");
    int count = 5;
    NSLog(@"Initial count: %d", count);
    NSLog(@"Prefix increment (++count): %d", ++count);
    NSLog(@"Postfix increment (count++): %d", count++);
    NSLog(@"After increments: %d", count);
    NSLog(@"Prefix decrement (--count): %d", --count);
    NSLog(@"Postfix decrement (count--): %d", count--);
    NSLog(@"After decrements: %d", count);
    
    // Assignment operators
    NSLog(@"\n4. Assignment Operators:");
    int value = 10;
    NSLog(@"Initial value: %d", value);
    
    value += 5;  // Addition assignment
    NSLog(@"After += 5: %d", value);
    
    value -= 3;  // Subtraction assignment
    NSLog(@"After -= 3: %d", value);
    
    value *= 2;  // Multiplication assignment
    NSLog(@"After *= 2: %d", value);
    
    value /= 4;  // Division assignment
    NSLog(@"After /= 4: %d", value);
    
    value %= 3;  // Modulus assignment
    NSLog(@"After %%= 3: %d", value);
    
    // Comparison operators
    NSLog(@"\n5. Comparison Operators:");
    int num1 = 10;
    int num2 = 20;
    
    NSLog(@"num1 = %d, num2 = %d", num1, num2);
    NSLog(@"num1 > num2: %@", num1 > num2 ? @"YES" : @"NO");
    NSLog(@"num1 < num2: %@", num1 < num2 ? @"YES" : @"NO");
    NSLog(@"num1 >= num2: %@", num1 >= num2 ? @"YES" : @"NO");
    NSLog(@"num1 <= num2: %@", num1 <= num2 ? @"YES" : @"NO");
    NSLog(@"num1 == num2: %@", num1 == num2 ? @"YES" : @"NO");
    NSLog(@"num1 != num2: %@", num1 != num2 ? @"YES" : @"NO");
    
    // Logical operators
    NSLog(@"\n6. Logical Operators:");
    BOOL condition1 = YES;
    BOOL condition2 = NO;
    
    NSLog(@"condition1 = %@, condition2 = %@", 
          condition1 ? @"YES" : @"NO",
          condition2 ? @"YES" : @"NO");
    
    NSLog(@"AND (condition1 && condition2): %@", 
          (condition1 && condition2) ? @"YES" : @"NO");
    NSLog(@"OR (condition1 || condition2): %@", 
          (condition1 || condition2) ? @"YES" : @"NO");
    NSLog(@"NOT (!condition1): %@", 
          (!condition1) ? @"YES" : @"NO");
    
    // Bitwise operators
    NSLog(@"\n7. Bitwise Operators:");
    unsigned int bits1 = 12;  // 1100 in binary
    unsigned int bits2 = 10;  // 1010 in binary
    
    NSLog(@"bits1 = %u (%@)", bits1, [self binaryStringFromInt:bits1]);
    NSLog(@"bits2 = %u (%@)", bits2, [self binaryStringFromInt:bits2]);
    
    NSLog(@"Bitwise AND (bits1 & bits2): %u (%@)", 
          bits1 & bits2, [self binaryStringFromInt:bits1 & bits2]);
    NSLog(@"Bitwise OR (bits1 | bits2): %u (%@)", 
          bits1 | bits2, [self binaryStringFromInt:bits1 | bits2]);
    NSLog(@"Bitwise XOR (bits1 ^ bits2): %u (%@)", 
          bits1 ^ bits2, [self binaryStringFromInt:bits1 ^ bits2]);
    NSLog(@"Bitwise NOT (~bits1): %u (%@)", 
          ~bits1 & 0xF, [self binaryStringFromInt:~bits1 & 0xF]);
    NSLog(@"Left shift (bits1 << 1): %u (%@)", 
          bits1 << 1, [self binaryStringFromInt:bits1 << 1]);
    NSLog(@"Right shift (bits1 >> 1): %u (%@)", 
          bits1 >> 1, [self binaryStringFromInt:bits1 >> 1]);
    
    // Custom class operators (using methods)
    NSLog(@"\n8. Custom Class Operations:");
    Point *p1 = [[Point alloc] initWithX:2.0 y:3.0];
    Point *p2 = [[Point alloc] initWithX:1.0 y:2.0];
    
    NSLog(@"p1 = %@", p1);
    NSLog(@"p2 = %@", p2);
    NSLog(@"p1 + p2 = %@", [p1 addPoint:p2]);
    NSLog(@"p1 - p2 = %@", [p1 subtractPoint:p2]);
    
    // Ternary operator
    NSLog(@"\n9. Ternary Operator:");
    int age = 20;
    NSString *status = age >= 18 ? @"Adult" : @"Minor";
    NSLog(@"Age %d is %@", age, status);
    
    // Nil coalescing (modern Objective-C)
    NSLog(@"\n10. Nil Coalescing:");
    NSString *nullableString = nil;
    NSString *result = nullableString ?: @"Default Value";
    NSLog(@"Result: %@", result);
    
    NSLog(@"\n"); // Empty line
}

// Helper method to convert integer to binary string
- (NSString *)binaryStringFromInt:(unsigned int)value {
    NSMutableString *binary = [NSMutableString string];
    for (int i = 3; i >= 0; i--) {
        [binary appendString:((value >> i) & 1) ? @"1" : @"0"];
    }
    return binary;
}

@end