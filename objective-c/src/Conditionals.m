#import "Conditionals.h"

// Example enum for switch demonstration
typedef NS_ENUM(NSInteger, WeatherType) {
    WeatherTypeSunny,
    WeatherTypeCloudy,
    WeatherTypeRainy,
    WeatherTypeSnowy
};

// Example class for type checking
@interface Animal : NSObject
@property (nonatomic, copy) NSString *name;
- (instancetype)initWithName:(NSString *)name;
@end

@interface Dog : Animal
- (void)bark;
@end

@interface Cat : Animal
- (void)meow;
@end

@implementation Animal
- (instancetype)initWithName:(NSString *)name {
    self = [super init];
    if (self) {
        _name = [name copy];
    }
    return self;
}
@end

@implementation Dog
- (void)bark {
    NSLog(@"%@ says: Woof!", self.name);
}
@end

@implementation Cat
- (void)meow {
    NSLog(@"%@ says: Meow!", self.name);
}
@end

@implementation Conditionals

- (void)demonstrate {
    NSLog(@"=== Conditionals ===\n");
    
    // Basic if statement
    NSLog(@"1. Basic if statement:");
    int number = 42;
    
    if (number > 0) {
        NSLog(@"%d is positive", number);
    } else if (number < 0) {
        NSLog(@"%d is negative", number);
    } else {
        NSLog(@"%d is zero", number);
    }
    
    // Compound conditions
    NSLog(@"\n2. Compound conditions:");
    int age = 25;
    BOOL hasID = YES;
    
    if (age >= 18 && hasID) {
        NSLog(@"Can enter the venue");
    } else {
        NSLog(@"Cannot enter the venue");
    }
    
    // Nested if statements
    NSLog(@"\n3. Nested if statements:");
    int score = 85;
    if (score >= 60) {
        if (score >= 90) {
            NSLog(@"Grade: A");
        } else if (score >= 80) {
            NSLog(@"Grade: B");
        } else if (score >= 70) {
            NSLog(@"Grade: C");
        } else {
            NSLog(@"Grade: D");
        }
    } else {
        NSLog(@"Grade: F");
    }
    
    // Switch statement
    NSLog(@"\n4. Switch statement:");
    WeatherType weather = WeatherTypeCloudy;
    
    switch (weather) {
        case WeatherTypeSunny:
            NSLog(@"It's a sunny day!");
            break;
        case WeatherTypeCloudy:
            NSLog(@"It's cloudy today.");
            break;
        case WeatherTypeRainy:
            NSLog(@"Don't forget your umbrella!");
            break;
        case WeatherTypeSnowy:
            NSLog(@"Bundle up, it's snowing!");
            break;
        default:
            NSLog(@"Unknown weather type");
            break;
    }
    
    // Switch with fallthrough
    NSLog(@"\n5. Switch with fallthrough:");
    int dayOfWeek = 3;
    
    switch (dayOfWeek) {
        case 1:
        case 2:
        case 3:
        case 4:
        case 5:
            NSLog(@"It's a weekday");
            break;
        case 6:
        case 7:
            NSLog(@"It's the weekend");
            break;
        default:
            NSLog(@"Invalid day");
            break;
    }
    
    // Ternary operator
    NSLog(@"\n6. Ternary operator:");
    int value = 15;
    NSString *result = (value % 2 == 0) ? @"Even" : @"Odd";
    NSLog(@"%d is %@", value, result);
    
    // nil checking
    NSLog(@"\n7. Nil checking:");
    NSString *maybeNil = nil;
    
    if (maybeNil) {
        NSLog(@"String has value: %@", maybeNil);
    } else {
        NSLog(@"String is nil");
    }
    
    // Type checking and casting
    NSLog(@"\n8. Type checking and casting:");
    Animal *pet1 = [[Dog alloc] initWithName:@"Rex"];
    Animal *pet2 = [[Cat alloc] initWithName:@"Whiskers"];
    
    // Using isKindOfClass:
    if ([pet1 isKindOfClass:[Dog class]]) {
        [(Dog *)pet1 bark];
    }
    
    if ([pet2 isKindOfClass:[Cat class]]) {
        [(Cat *)pet2 meow];
    }
    
    // Using respondsToSelector:
    NSLog(@"\n9. Method availability check:");
    if ([pet1 respondsToSelector:@selector(bark)]) {
        [(Dog *)pet1 bark];
    }
    
    // String comparison
    NSLog(@"\n10. String comparison:");
    NSString *str1 = @"Hello";
    NSString *str2 = @"hello";
    
    if ([str1 isEqualToString:str2]) {
        NSLog(@"Strings are equal");
    } else {
        NSLog(@"Strings are not equal");
    }
    
    // Case-insensitive comparison
    if ([str1 caseInsensitiveCompare:str2] == NSOrderedSame) {
        NSLog(@"Strings are equal (case-insensitive)");
    }
    
    // Range checking
    NSLog(@"\n11. Range checking:");
    int testValue = 75;
    
    if (testValue >= 0 && testValue <= 100) {
        NSLog(@"%d is in valid range (0-100)", testValue);
    }
    
    // Modern Objective-C nil coalescing
    NSLog(@"\n12. Nil coalescing:");
    NSString *nullableString = nil;
    NSString *defaultValue = nullableString ?: @"Default";
    NSLog(@"Value: %@", defaultValue);
    
    NSLog(@"\n"); // Empty line
}

@end