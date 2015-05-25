#import "RootViewController.h"
#import "DieLabel.h"

@interface RootViewController ()

@property (weak, nonatomic) IBOutlet UILabel *dieLabelOne;
@property (weak, nonatomic) IBOutlet UILabel *dieLabelTwo;
@property (weak, nonatomic) IBOutlet UILabel *dieLabelThree;
@property (weak, nonatomic) IBOutlet UILabel *dieLabelFour;
@property (weak, nonatomic) IBOutlet UILabel *dieLabelFive;
@property (weak, nonatomic) IBOutlet UILabel *dieLabelSix;
@property NSMutableArray *diceArray;

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.diceArray = [NSMutableArray arrayWithObjects:self.dieLabelOne, self.dieLabelTwo, self.dieLabelThree, self.dieLabelFour, self.dieLabelFive, self.dieLabelSix, nil];
}

- (IBAction)test:(id)sender {
    NSLog(@"tapped");
}

- (IBAction)onRollButtonPressed:(UIButton *)sender {
    NSLog(@"also tapped");

    for (DieLabel *die in self.diceArray) {
        [die roll];
    }
}

@end









