#import "RootViewController.h"
#import "DieLabel.h"

@interface RootViewController ()

@property (weak, nonatomic) IBOutlet DieLabel *dieLabelOne;
@property (weak, nonatomic) IBOutlet DieLabel *dieLabelTwo;
@property (weak, nonatomic) IBOutlet DieLabel *dieLabelThree;
@property (weak, nonatomic) IBOutlet DieLabel *dieLabelFour;
@property (weak, nonatomic) IBOutlet DieLabel *dieLabelFive;
@property (weak, nonatomic) IBOutlet DieLabel *dieLabelSix;

@property NSMutableArray *diceArray;

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.diceArray = [NSMutableArray arrayWithObjects:self.dieLabelOne, self.dieLabelTwo, self.dieLabelThree, self.dieLabelFour, self.dieLabelFive, self.dieLabelSix, nil];
}


- (IBAction)onRollButtonPressed:(UIButton *)sender {
    for (DieLabel *die in self.diceArray) {
        [die roll];
    }
}

@end









