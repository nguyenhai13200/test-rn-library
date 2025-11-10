#import "TestRnLibrary.h"
#if __has_include(<TestRnLibrary/TestRnLibrary-Swift.h>)
#import <TestRnLibrary/TestRnLibrary-Swift.h>
#else
#import "TestRnLibrary-Swift.h"
#endif

@implementation TestRnLibrary
- (NSNumber *)multiply:(double)a b:(double)b {
    NSNumber *result = @(a * b);

    return result;
}

- (NSString *)sayHello {
    NativeTest *nativeTest = [NativeTest new];
    NSString *hello = [nativeTest sayHello];
    NSInteger sum = [nativeTest addNumbers];
  return [NSString stringWithFormat:@"%@ (sum = %ld)", hello, (long)sum];
}


- (std::shared_ptr<facebook::react::TurboModule>)getTurboModule:
    (const facebook::react::ObjCTurboModule::InitParams &)params
{
    return std::make_shared<facebook::react::NativeTestRnLibrarySpecJSI>(params);
}

+ (NSString *)moduleName
{
  return @"TestRnLibrary";
}

@end
