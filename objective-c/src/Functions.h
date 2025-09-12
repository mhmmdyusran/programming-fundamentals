#import <Foundation/Foundation.h>

// Protocol declaration
@protocol Vehicle <NSObject>
@required
- (void)start;
- (void)stop;
@optional
- (void)honk;
@end

@interface Functions : NSObject

- (void)demonstrate;

@end