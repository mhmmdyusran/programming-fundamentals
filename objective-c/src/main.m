#import <Foundation/Foundation.h>
#import "Variables.h"
#import "InputOutput.h"
#import "Operators.h"
#import "Conditionals.h"
#import "Loops.h"
#import "Arrays.h"
#import "Functions.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // Create instances of each module
        Variables *variables = [[Variables alloc] init];
        InputOutput *inputOutput = [[InputOutput alloc] init];
        Operators *operators = [[Operators alloc] init];
        Conditionals *conditionals = [[Conditionals alloc] init];
        Loops *loops = [[Loops alloc] init];
        Arrays *arrays = [[Arrays alloc] init];
        Functions *functions = [[Functions alloc] init];
        
        // Run demonstrations
        [variables demonstrate];
        [inputOutput demonstrate];
        [operators demonstrate];
        [conditionals demonstrate];
        [loops demonstrate];
        [arrays demonstrate];
        [functions demonstrate];
    }
    return 0;
}