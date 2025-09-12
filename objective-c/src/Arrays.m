#import "Arrays.h"

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

- (NSString *)description {
    return [NSString stringWithFormat:@"%@ (%ld)", self.name, (long)self.age];
}
@end

@implementation Arrays

- (void)demonstrate {
    NSLog(@"=== Arrays and Collections ===\n");
    
    // C-style arrays
    NSLog(@"1. C-style arrays:");
    int numbers[5] = {1, 2, 3, 4, 5};
    printf("C array elements: ");
    for (int i = 0; i < 5; i++) {
        printf("%d ", numbers[i]);
    }
    printf("\n");
    
    // NSArray - Immutable array
    NSLog(@"\n2. NSArray (Immutable):");
    NSArray *fruits = @[@"Apple", @"Banana", @"Orange", @"Mango"];
    NSLog(@"Fruits: %@", fruits);
    NSLog(@"First fruit: %@", fruits[0]);
    NSLog(@"Last fruit: %@", [fruits lastObject]);
    NSLog(@"Count: %lu", (unsigned long)[fruits count]);
    
    // NSMutableArray - Mutable array
    NSLog(@"\n3. NSMutableArray (Mutable):");
    NSMutableArray *mutableFruits = [NSMutableArray arrayWithArray:fruits];
    [mutableFruits addObject:@"Grape"];
    [mutableFruits insertObject:@"Pear" atIndex:1];
    [mutableFruits removeObjectAtIndex:0];
    NSLog(@"Modified fruits: %@", mutableFruits);
    
    // Array operations
    NSLog(@"\n4. Array operations:");
    NSArray *numbers2 = @[@1, @2, @3, @4, @5];
    NSLog(@"Contains 3? %@", [numbers2 containsObject:@3] ? @"Yes" : @"No");
    NSLog(@"Index of 4: %lu", (unsigned long)[numbers2 indexOfObject:@4]);
    
    // Array sorting
    NSLog(@"\n5. Array sorting:");
    NSArray *unsorted = @[@5, @2, @8, @1, @9];
    NSArray *sorted = [unsorted sortedArrayUsingSelector:@selector(compare:)];
    NSLog(@"Unsorted: %@", unsorted);
    NSLog(@"Sorted: %@", sorted);
    
    // Custom object array
    NSLog(@"\n6. Custom object array:");
    NSArray *people = @[
        [[Person alloc] initWithName:@"John" age:25],
        [[Person alloc] initWithName:@"Alice" age:30],
        [[Person alloc] initWithName:@"Bob" age:22]
    ];
    NSLog(@"People: %@", people);
    
    // Array filtering
    NSLog(@"\n7. Array filtering:");
    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"age > 24"];
    NSArray *adultsOnly = [people filteredArrayUsingPredicate:predicate];
    NSLog(@"Adults: %@", adultsOnly);
    
    // NSDictionary - Immutable dictionary
    NSLog(@"\n8. NSDictionary (Immutable):");
    NSDictionary *person = @{
        @"name": @"John Doe",
        @"age": @30,
        @"city": @"New York"
    };
    NSLog(@"Person info: %@", person);
    NSLog(@"Name: %@", person[@"name"]);
    
    // NSMutableDictionary - Mutable dictionary
    NSLog(@"\n9. NSMutableDictionary (Mutable):");
    NSMutableDictionary *mutablePerson = [NSMutableDictionary dictionaryWithDictionary:person];
    mutablePerson[@"country"] = @"USA";
    [mutablePerson removeObjectForKey:@"city"];
    NSLog(@"Modified person info: %@", mutablePerson);
    
    // Dictionary operations
    NSLog(@"\n10. Dictionary operations:");
    NSLog(@"Keys: %@", [person allKeys]);
    NSLog(@"Values: %@", [person allValues]);
    NSLog(@"Has 'name'? %@", [person objectForKey:@"name"] ? @"Yes" : @"No");
    
    // NSSet - Immutable set
    NSLog(@"\n11. NSSet (Immutable):");
    NSSet *uniqueNumbers = [NSSet setWithArray:@[@1, @2, @2, @3, @3, @3]];
    NSLog(@"Unique numbers: %@", uniqueNumbers);
    
    // NSMutableSet - Mutable set
    NSLog(@"\n12. NSMutableSet (Mutable):");
    NSMutableSet *mutableSet = [NSMutableSet setWithArray:@[@1, @2, @3]];
    [mutableSet addObject:@4];
    [mutableSet removeObject:@1];
    NSLog(@"Modified set: %@", mutableSet);
    
    // Set operations
    NSLog(@"\n13. Set operations:");
    NSSet *set1 = [NSSet setWithArray:@[@1, @2, @3, @4]];
    NSSet *set2 = [NSSet setWithArray:@[@3, @4, @5, @6]];
    
    NSSet *unionSet = [set1 setByAddingObjectsFromSet:set2];
    NSMutableSet *intersectSet = [NSMutableSet setWithSet:set1];
    [intersectSet intersectSet:set2];
    
    NSLog(@"Set 1: %@", set1);
    NSLog(@"Set 2: %@", set2);
    NSLog(@"Union: %@", unionSet);
    NSLog(@"Intersection: %@", intersectSet);
    
    // NSOrderedSet - Ordered unique collection
    NSLog(@"\n14. NSOrderedSet:");
    NSOrderedSet *orderedSet = [NSOrderedSet orderedSetWithArray:@[@1, @2, @2, @3, @3, @3]];
    NSLog(@"Ordered unique numbers: %@", orderedSet);
    
    // Array slicing
    NSLog(@"\n15. Array slicing:");
    NSRange range = NSMakeRange(1, 3);
    NSArray *slice = [fruits subarrayWithRange:range];
    NSLog(@"Original array: %@", fruits);
    NSLog(@"Slice (1-3): %@", slice);
    
    // Array transformation
    NSLog(@"\n16. Array transformation:");
    NSArray *transformed = [numbers2 valueForKeyPath:@"self.doubleValue"];
    NSLog(@"Original: %@", numbers2);
    NSLog(@"Doubled: %@", transformed);
    
    // Collection operators
    NSLog(@"\n17. Collection operators:");
    NSNumber *sum = [numbers2 valueForKeyPath:@"@sum.self"];
    NSNumber *avg = [numbers2 valueForKeyPath:@"@avg.self"];
    NSNumber *min = [numbers2 valueForKeyPath:@"@min.self"];
    NSNumber *max = [numbers2 valueForKeyPath:@"@max.self"];
    
    NSLog(@"Numbers: %@", numbers2);
    NSLog(@"Sum: %@", sum);
    NSLog(@"Average: %@", avg);
    NSLog(@"Minimum: %@", min);
    NSLog(@"Maximum: %@", max);
    
    NSLog(@"\n"); // Empty line
}

@end