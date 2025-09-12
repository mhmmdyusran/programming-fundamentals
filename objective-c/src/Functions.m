#import "Functions.h"

// Example class implementing protocol
@interface Car : NSObject <Vehicle>
@property (nonatomic, copy) NSString *model;
- (instancetype)initWithModel:(NSString *)model;
@end

@implementation Car
- (instancetype)initWithModel:(NSString *)model {
    self = [super init];
    if (self) {
        _model = [model copy];
    }
    return self;
}

- (void)start {
    NSLog(@"%@ engine started", self.model);
}

- (void)stop {
    NSLog(@"%@ engine stopped", self.model);
}

- (void)honk {
    NSLog(@"%@ goes beep beep!", self.model);
}
@end

@implementation Functions {
    // Instance variables
    NSString *_privateStr;
}

#pragma mark - Basic Functions

// Simple function
- (void)sayHello {
    NSLog(@"Hello!");
}

// Function with parameters
- (void)greet:(NSString *)name {
    NSLog(@"Hello, %@!", name);
}

// Function with return value
- (int)add:(int)a to:(int)b {
    return a + b;
}

// Function with multiple parameters
- (void)printPersonDetails:(NSString *)name age:(int)age city:(NSString *)city {
    NSLog(@"%@ is %d years old and lives in %@", name, age, city);
}

// Function with variable arguments
- (int)sumNumbers:(NSString *)text, ... {
    va_list args;
    va_start(args, text);
    
    int sum = 0;
    int value;
    while ((value = va_arg(args, int)) != 0) {
        sum += value;
    }
    
    va_end(args);
    NSLog(@"%@: %d", text, sum);
    return sum;
}

#pragma mark - Block Examples

// Block as a variable
- (void)demonstrateBlocks {
    // Block variable
    void (^simpleBlock)(void) = ^{
        NSLog(@"This is a simple block");
    };
    simpleBlock();
    
    // Block with parameters
    int (^addBlock)(int, int) = ^(int a, int b) {
        return a + b;
    };
    NSLog(@"5 + 3 = %d", addBlock(5, 3));
    
    // Block capturing variables
    int multiplier = 10;
    int (^multiplyBlock)(int) = ^(int number) {
        return number * multiplier;
    };
    NSLog(@"7 * 10 = %d", multiplyBlock(7));
}

#pragma mark - Function with Block Parameter

- (void)performOperation:(void (^)(void))operation {
    NSLog(@"Before operation");
    operation();
    NSLog(@"After operation");
}

#pragma mark - Category Methods

@end

// Category declaration
@interface NSString (Reverse)
- (NSString *)reversed;
@end

@implementation NSString (Reverse)
- (NSString *)reversed {
    NSMutableString *reversedStr = [NSMutableString string];
    NSInteger charIndex = [self length];
    while (charIndex > 0) {
        charIndex--;
        NSRange subStrRange = NSMakeRange(charIndex, 1);
        [reversedStr appendString:[self substringWithRange:subStrRange]];
    }
    return reversedStr;
}
@end

@implementation Functions

- (void)demonstrate {
    NSLog(@"=== Functions ===\n");
    
    // Basic function calls
    NSLog(@"1. Basic Functions:");
    [self sayHello];
    [self greet:@"Alice"];
    int sum = [self add:5 to:3];
    NSLog(@"5 + 3 = %d", sum);
    [self printPersonDetails:@"Bob" age:30 city:@"New York"];
    
    // Variadic function
    NSLog(@"\n2. Variadic Function:");
    [self sumNumbers:@"Sum of numbers" , 1, 2, 3, 4, 0];
    
    // Block examples
    NSLog(@"\n3. Block Examples:");
    [self demonstrateBlocks];
    
    // Function with block parameter
    NSLog(@"\n4. Function with Block Parameter:");
    [self performOperation:^{
        NSLog(@"Performing custom operation");
    }];
    
    // Protocol and delegate pattern
    NSLog(@"\n5. Protocol Implementation:");
    Car *car = [[Car alloc] initWithModel:@"Toyota"];
    [car start];
    [car honk];
    [car stop];
    
    // Category usage
    NSLog(@"\n6. Category Method:");
    NSString *original = @"Hello, World!";
    NSLog(@"Original: %@", original);
    NSLog(@"Reversed: %@", [original reversed]);
    
    // Block array operations
    NSLog(@"\n7. Block Array Operations:");
    NSArray *numbers = @[@1, @2, @3, @4, @5];
    
    // Map
    NSArray *doubled = [numbers valueForKeyPath:@"self.doubleValue"];
    NSLog(@"Doubled numbers: %@", doubled);
    
    // Filter
    NSPredicate *predicate = [NSPredicate predicateWithBlock:^BOOL(id number, NSDictionary *bindings) {
        return [number intValue] % 2 == 0;
    }];
    NSArray *evenNumbers = [numbers filteredArrayUsingPredicate:predicate];
    NSLog(@"Even numbers: %@", evenNumbers);
    
    // Sort
    NSArray *sortedNumbers = [numbers sortedArrayUsingComparator:^NSComparisonResult(id obj1, id obj2) {
        return [obj2 compare:obj1];  // Descending order
    }];
    NSLog(@"Sorted (descending): %@", sortedNumbers);
    
    // Error handling
    NSLog(@"\n8. Error Handling:");
    NSError *error;
    BOOL success = [self performOperationWithError:&error];
    if (!success) {
        NSLog(@"Operation failed: %@", error.localizedDescription);
    }
    
    // Selector usage
    NSLog(@"\n9. Selector Usage:");
    SEL greetSelector = @selector(greet:);
    if ([self respondsToSelector:greetSelector]) {
        [self performSelector:greetSelector withObject:@"David"];
    }
    
    // Property attributes
    NSLog(@"\n10. Property Attributes:");
    Car *tesla = [[Car alloc] initWithModel:@"Tesla"];
    tesla.model = @"Tesla Model 3";  // Using synthesized setter
    NSLog(@"Car model: %@", tesla.model);  // Using synthesized getter
    
    // Method swizzling demonstration
    NSLog(@"\n11. Method Swizzling (demonstration only):");
    NSLog(@"Note: Method swizzling should be used with caution");
    
    // Runtime method demonstration
    NSLog(@"\n12. Runtime Method Information:");
    unsigned int methodCount;
    Method *methods = class_copyMethodList([self class], &methodCount);
    NSLog(@"Number of methods: %d", methodCount);
    free(methods);
    
    NSLog(@"\n"); // Empty line
}

- (BOOL)performOperationWithError:(NSError **)error {
    if (error != NULL) {
        *error = [NSError errorWithDomain:@"com.example.app"
                                    code:42
                                userInfo:@{NSLocalizedDescriptionKey: @"Example error"}];
    }
    return NO;
}

@end