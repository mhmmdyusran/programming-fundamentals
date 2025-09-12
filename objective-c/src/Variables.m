#import "Variables.h"

// Example custom class
@interface Person : NSObject

@property (nonatomic, copy) NSString *name;
@property (nonatomic, assign) NSInteger age;

- (instancetype)initWithName:(NSString *)name age:(NSInteger)age;

@end

@implementation Person

- (instancetype)initWithName:(NSString *)name age:(NSInteger)age {
    self = [super init];
    if (self) {
        _name = [name copy];
        _age = age;
    }
    return self;
}

@end

@implementation Variables

- (void)demonstrate {
    NSLog(@"=== Variables and Data Types ===\n");
    
    // Basic data types
    NSLog(@"1. Basic Data Types:");
    int integerNumber = 42;
    float floatNumber = 3.14f;
    double doubleNumber = 3.14159265359;
    BOOL boolValue = YES;
    char charValue = 'A';
    
    NSLog(@"Integer: %d", integerNumber);
    NSLog(@"Float: %f", floatNumber);
    NSLog(@"Double: %f", doubleNumber);
    NSLog(@"Boolean: %@", boolValue ? @"YES" : @"NO");
    NSLog(@"Character: %c", charValue);
    
    // NSNumber - Object wrapper for primitive types
    NSLog(@"\n2. NSNumber Objects:");
    NSNumber *numberObj1 = @42;                    // Integer literal
    NSNumber *numberObj2 = @3.14;                  // Float literal
    NSNumber *numberObj3 = @YES;                   // Boolean literal
    
    NSLog(@"NSNumber (int): %@", numberObj1);
    NSLog(@"NSNumber (float): %@", numberObj2);
    NSLog(@"NSNumber (bool): %@", numberObj3);
    
    // String handling
    NSLog(@"\n3. String Handling:");
    NSString *string1 = @"Hello";                  // String literal
    NSString *string2 = @"World";
    NSString *combined = [string1 stringByAppendingFormat:@" %@!", string2];
    
    NSLog(@"String 1: %@", string1);
    NSLog(@"String 2: %@", string2);
    NSLog(@"Combined: %@", combined);
    NSLog(@"Length: %lu", (unsigned long)[combined length]);
    
    // Mutable strings
    NSLog(@"\n4. Mutable Strings:");
    NSMutableString *mutableStr = [NSMutableString stringWithString:@"Hello"];
    [mutableStr appendString:@" World"];
    [mutableStr replaceCharactersInRange:NSMakeRange(0, 5) withString:@"Hi"];
    NSLog(@"Mutable string: %@", mutableStr);
    
    // Pointers and memory management
    NSLog(@"\n5. Pointers and Objects:");
    Person *person = [[Person alloc] initWithName:@"John" age:30];
    NSLog(@"Person: %@ is %ld years old", person.name, (long)person.age);
    
    // Nil handling
    NSLog(@"\n6. Nil Handling:");
    Person *nullPerson = nil;
    NSLog(@"Nil person: %@", nullPerson);  // Safe to message nil
    
    // Type qualifiers
    NSLog(@"\n7. Type Qualifiers:");
    const int constInt = 100;  // Cannot be modified
    NSLog(@"Constant integer: %d", constInt);
    
    // Type inference (modern Objective-C)
    NSLog(@"\n8. Type Inference:");
    id genericObject = @"I am a string";  // Type determined at runtime
    NSLog(@"Generic object: %@", genericObject);
    
    // Typedef and enums
    NSLog(@"\n9. Typedef and Enums:");
    typedef NS_ENUM(NSInteger, DayOfWeek) {
        DayOfWeekSunday = 1,
        DayOfWeekMonday,
        DayOfWeekTuesday,
        DayOfWeekWednesday,
        DayOfWeekThursday,
        DayOfWeekFriday,
        DayOfWeekSaturday
    };
    
    DayOfWeek today = DayOfWeekWednesday;
    NSLog(@"Today is day %ld of the week", (long)today);
    
    // Properties and synthesized variables
    NSLog(@"\n10. Properties:");
    Person *alice = [[Person alloc] initWithName:@"Alice" age:25];
    alice.age = 26;  // Using property setter
    NSLog(@"%@ is now %ld years old", alice.name, (long)alice.age);
    
    // Weak references (ARC)
    NSLog(@"\n11. Weak References:");
    __weak Person *weakReference = person;
    NSLog(@"Weak reference: %@", weakReference.name);
    
    // Numbers and formatting
    NSLog(@"\n12. Number Formatting:");
    NSNumberFormatter *formatter = [[NSNumberFormatter alloc] init];
    [formatter setNumberStyle:NSNumberFormatterDecimalStyle];
    NSString *formatted = [formatter stringFromNumber:@12345.67];
    NSLog(@"Formatted number: %@", formatted);
    
    NSLog(@"\n"); // Empty line
}

@end