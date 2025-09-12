#import "InputOutput.h"

@implementation InputOutput

- (void)demonstrate {
    NSLog(@"=== Input and Output ===\n");
    
    // Basic console output
    NSLog(@"1. Basic Console Output:");
    NSLog(@"Hello, World!");
    printf("Using C-style printf\n");
    fprintf(stdout, "Using C-style fprintf\n");
    
    // Formatted output
    NSLog(@"\n2. Formatted Output:");
    NSString *name = @"John";
    int age = 30;
    NSLog(@"Name: %@, Age: %d", name, age);
    
    float price = 19.99;
    NSLog(@"Price: $%.2f", price);
    
    // String formatting
    NSLog(@"\n3. String Formatting:");
    NSString *formatted = [NSString stringWithFormat:@"%@ is %d years old", name, age];
    NSLog(@"Formatted string: %@", formatted);
    
    // Number formatting
    NSLog(@"\n4. Number Formatting:");
    NSNumberFormatter *formatter = [[NSNumberFormatter alloc] init];
    [formatter setNumberStyle:NSNumberFormatterCurrencyStyle];
    NSString *formattedPrice = [formatter stringFromNumber:@(price)];
    NSLog(@"Formatted price: %@", formattedPrice);
    
    // Date formatting
    NSLog(@"\n5. Date Formatting:");
    NSDate *now = [NSDate date];
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateStyle:NSDateFormatterLongStyle];
    [dateFormatter setTimeStyle:NSDateFormatterMediumStyle];
    NSLog(@"Formatted date: %@", [dateFormatter stringFromDate:now]);
    
    // File operations
    NSLog(@"\n6. File Operations:");
    
    // Writing to a file
    NSString *content = @"Hello, File I/O!\nThis is a test file.";
    NSString *tempDir = NSTemporaryDirectory();
    NSString *filePath = [tempDir stringByAppendingPathComponent:@"test.txt"];
    
    NSError *error = nil;
    BOOL success = [content writeToFile:filePath 
                           atomically:YES 
                             encoding:NSUTF8StringEncoding 
                                error:&error];
    
    if (success) {
        NSLog(@"Successfully wrote to file: %@", filePath);
        
        // Reading from a file
        NSString *fileContent = [NSString stringWithContentsOfFile:filePath 
                                                        encoding:NSUTF8StringEncoding 
                                                           error:&error];
        if (fileContent) {
            NSLog(@"File content:\n%@", fileContent);
        } else {
            NSLog(@"Error reading file: %@", error.localizedDescription);
        }
        
        // Append to file
        NSFileHandle *fileHandle = [NSFileHandle fileHandleForWritingAtPath:filePath];
        [fileHandle seekToEndOfFile];
        NSString *appendContent = @"\nAppended content!";
        [fileHandle writeData:[appendContent dataUsingEncoding:NSUTF8StringEncoding]];
        [fileHandle closeFile];
        
        // Read updated content
        fileContent = [NSString stringWithContentsOfFile:filePath 
                                              encoding:NSUTF8StringEncoding 
                                                 error:&error];
        NSLog(@"\nUpdated file content:\n%@", fileContent);
        
        // Delete file
        NSFileManager *fileManager = [NSFileManager defaultManager];
        if ([fileManager removeItemAtPath:filePath error:&error]) {
            NSLog(@"\nFile deleted successfully");
        } else {
            NSLog(@"Error deleting file: %@", error.localizedDescription);
        }
    } else {
        NSLog(@"Error writing to file: %@", error.localizedDescription);
    }
    
    // Working with URLs
    NSLog(@"\n7. URL Operations:");
    NSURL *url = [NSURL URLWithString:@"https://example.com"];
    NSLog(@"URL Scheme: %@", url.scheme);
    NSLog(@"URL Host: %@", url.host);
    
    // User defaults (persistent storage)
    NSLog(@"\n8. User Defaults:");
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setObject:@"John Doe" forKey:@"username"];
    [defaults setInteger:42 forKey:@"highscore"];
    [defaults synchronize];
    
    NSString *savedName = [defaults objectForKey:@"username"];
    NSInteger savedScore = [defaults integerForKey:@"highscore"];
    NSLog(@"Saved name: %@, score: %ld", savedName, (long)savedScore);
    
    // Data handling
    NSLog(@"\n9. Data Handling:");
    NSString *originalString = @"Hello, Data!";
    NSData *data = [originalString dataUsingEncoding:NSUTF8StringEncoding];
    NSString *reconstructedString = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
    NSLog(@"Original: %@", originalString);
    NSLog(@"Reconstructed: %@", reconstructedString);
    
    // Error handling and logging
    NSLog(@"\n10. Error Handling and Logging:");
    NSError *customError = [NSError errorWithDomain:@"com.example.app" 
                                             code:42 
                                         userInfo:@{NSLocalizedDescriptionKey: @"Custom error message"}];
    NSLog(@"Error: %@", customError.localizedDescription);
    
    // Console input (Note: This is generally not used in iOS/macOS apps)
    NSLog(@"\n11. Console Input (C-style):");
    printf("Enter your name (or press Enter to skip): ");
    char inputBuffer[256];
    if (fgets(inputBuffer, sizeof(inputBuffer), stdin)) {
        // Remove newline character
        inputBuffer[strcspn(inputBuffer, "\n")] = 0;
        NSString *input = [NSString stringWithUTF8String:inputBuffer];
        NSLog(@"You entered: %@", input);
    }
    
    NSLog(@"\n"); // Empty line
}

@end