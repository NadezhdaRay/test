//
//  DialogListCell.m
//  TestPups
//
//  Created by Ivan Grigoriev on 25/08/2018.
//  Copyright © 2018 Ivan Grigoriev. All rights reserved.
//

#import "DialogListCell.h"

@interface DialogListCell ()

@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel *messageLabel;
@property (weak, nonatomic) IBOutlet UIImageView *avatarImageView;

@end

@implementation DialogListCell

+(UINib *)nib {
    return [UINib nibWithNibName:@"DialogListCell" bundle:nil];
}

- (void)awakeFromNib {
    [super awakeFromNib];
    
    [self configurateBaseState];
    // Initialization code
}

-(void)configurateBaseState {
    self.backgroundColor = [UIColor whiteColor];
    
    self.avatarImageView.image = nil;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

-(void)updateCellWithName:(NSString *)name message:(NSString *)message avatarUrl:(NSString *)avatarUrl {
    self.nameLabel.text = name;
    self.messageLabel.text = message;
    // self.avatarImageView;
    
    
}

-(void)prepareForReuse {
    [super prepareForReuse];
    
    [self configurateBaseState];
}

@end
