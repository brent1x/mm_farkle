

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *dieLabel;
@property CGPoint dieLabelStartingPoint;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.dieLabelStartingPoint = self.dieLabel.center;

}

- (IBAction)didPan:(UIPanGestureRecognizer *)sender {

    CGPoint point = [sender locationInView:self.view];
    self.dieLabel.center = point;

}

- (id)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];

    UIGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(didPan:)];
    return self;
}

@end
