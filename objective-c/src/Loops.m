#import "Loops.h"

@implementation Loops

- (void)demonstrate {
    NSLog(@"=== Loops ===\n");
    
    // Basic for loop
    NSLog(@"1. Basic for loop:");
    for (int i = 0; i < 5; i++) {
        printf("%d ", i);
    }
    printf("\n");
    
    // Reverse for loop
    NSLog(@"\n2. Reverse for loop:");
    for (int i = 5; i > 0; i--) {
        printf("%d ", i);
    }
    printf("\n");
    
    // While loop
    NSLog(@"\n3. While loop:");
    int count = 0;
    while (count < 5) {
        printf("%d ", count);
        count++;
    }
    printf("\n");
    
    // Do-while loop
    NSLog(@"\n4. Do-while loop:");
    count = 0;
    do {
        printf("%d ", count);
        count++;
    } while (count < 5);
    printf("\n");
    
    // Break statement
    NSLog(@"\n5. Break statement:");
    for (int i = 0; i < 10; i++) {
        if (i == 5) {
            break;
        }
        printf("%d ", i);
    }
    printf("\n");
    
    // Continue statement
    NSLog(@"\n6. Continue statement:");
    for (int i = 0; i < 5; i++) {
        if (i == 2) {
            continue;
        }
        printf("%d ", i);
    }
    printf("\n");
    
    // Fast enumeration with NSArray
    NSLog(@"\n7. Fast enumeration with NSArray:");
    NSArray *fruits = @[@"Apple", @"Banana", @"Orange", @"Mango"];
    for (NSString *fruit in fruits) {
        NSLog(@"%@", fruit);
    }
    
    // Enumeration with index
    NSLog(@"\n8. Enumeration with index:");
    [fruits enumerateObjectsUsingBlock:^(NSString *fruit, NSUInteger idx, BOOL *stop) {
        NSLog(@"Index %lu: %@", (unsigned long)idx, fruit);
    }];
    
    // Block-based iteration
    NSLog(@"\n9. Block-based iteration:");
    NSArray *numbers = @[@1, @2, @3, @4, @5];
    [numbers enumerateObjectsUsingBlock:^(NSNumber *number, NSUInteger idx, BOOL *stop) {
        NSLog(@"Number: %@", number);
        if ([number intValue] == 4) {
            *stop = YES;  // Stop enumeration
        }
    }];
    
    // Nested loops
    NSLog(@"\n10. Nested loops:");
    for (int i = 0; i < 3; i++) {
        for (int j = 0; j < 3; j++) {
            printf("(%d,%d) ", i, j);
        }
        printf("\n");
    }
    
    // Loop with NSRange
    NSLog(@"\n11. Loop with NSRange:");
    NSString *text = @"Hello, World!";
    for (NSUInteger i = 0; i < [text length]; i++) {
        unichar character = [text characterAtIndex:i];
        printf("%c ", character);
    }
    printf("\n");
    
    // Reverse enumeration
    NSLog(@"\n12. Reverse enumeration:");
    for (NSInteger i = [fruits count] - 1; i >= 0; i--) {
        NSLog(@"%@", fruits[i]);
    }
    
    // Conditional loop with multiple conditions
    NSLog(@"\n13. Conditional loop with multiple conditions:");
    for (int i = 0, j = 10; i < 5 && j > 5; i++, j--) {
        NSLog(@"i = %d, j = %d", i, j);
    }
    
    // Enumeration with options
    NSLog(@"\n14. Enumeration with options:");
    [fruits enumerateObjectsWithOptions:NSEnumerationReverse
                           usingBlock:^(NSString *fruit, NSUInteger idx, BOOL *stop) {
        NSLog(@"Reverse Index %lu: %@", (unsigned long)idx, fruit);
    }];
    
    // Loop through dictionary
    NSLog(@"\n15. Dictionary enumeration:");
    NSDictionary *dict = @{
        @"name": @"John",
        @"age": @30,
        @"city": @"New York"
    };
    
    for (NSString *key in dict) {
        NSLog(@"%@: %@", key, dict[key]);
    }
    
    // Modern dictionary enumeration
    [dict enumerateKeysAndObjectsUsingBlock:^(NSString *key, id obj, BOOL *stop) {
        NSLog(@"Key: %@, Value: %@", key, obj);
    }];
    
    // Concurrent enumeration
    NSLog(@"\n16. Concurrent enumeration:");
    NSArray *largeArray = @[@1, @2, @3, @4, @5, @6, @7, @8, @9, @10];
    [largeArray enumerateObjectsWithOptions:NSEnumerationConcurrent
                                usingBlock:^(NSNumber *number, NSUInteger idx, BOOL *stop) {
        NSLog(@"Processing number %@ on thread %@", 
              number, [NSThread currentThread]);
    }];
    
    // NSIndexSet enumeration
    NSLog(@"\n17. NSIndexSet enumeration:");
    NSMutableIndexSet *indexSet = [NSMutableIndexSet indexSet];
    [indexSet addIndex:1];
    [indexSet addIndex:3];
    [indexSet addIndex:5];
    
    [indexSet enumerateIndexesUsingBlock:^(NSUInteger idx, BOOL *stop) {
        NSLog(@"Index: %lu", (unsigned long)idx);
    }];
    
    NSLog(@"\n"); // Empty line
}

@end