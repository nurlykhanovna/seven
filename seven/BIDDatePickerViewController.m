//
//  BIDDatePickerViewController.m
//  seven
//
//  Created by Alima on 3/1/18.
//  Copyright © 2018 Alima. All rights reserved.
//

#import "BIDDatePickerViewController.h"

@interface BIDDatePickerViewController ()
@property (weak, nonatomic) IBOutlet UIDatePicker *datePicker;

@end

@implementation BIDDatePickerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    NSDate *now = [NSDate date];
    [self.datePicker setDate:now animated:NO];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
- (IBAction)buttonPressed:(id)sender {
    NSDate *selected = [self.datePicker date];
    NSString *message = [[NSString alloc] initWithFormat:
                         @"The date and time you selected is: %@", selected];

    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Date and Time Selected" message:message preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction * actionOK = [UIAlertAction actionWithTitle:@"That's so true" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        //Here Add Your Action
    }];
    
    [alert addAction:actionOK];
    
    [self presentViewController:alert animated:YES completion:nil];
}

@end
