//
//  ShowMessageController.m
//  TestPups
//
//  Created by Ivan Grigoriev on 27/08/2018.
//  Copyright © 2018 Ivan Grigoriev. All rights reserved.
//

#import "ShowMessageController.h"

@interface ShowMessageController ()

@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel *messageLabel;

@end

@implementation ShowMessageController

+(instancetype)new {
    return [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"ShowMessageControllerIdentifier"];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.nameLabel.text = self.message.man.name;
    self.messageLabel.text = self.message.text;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
