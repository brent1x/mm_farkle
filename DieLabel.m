
#import "DieLabel.h"

@implementation DieLabel

- (void)roll {
    int random = arc4random_uniform(6) + 1;
    self.text = [NSString stringWithFormat:@"%i", random];
}

@end
