//
//  DialogListCell.h
//  TestPups
//
//  Created by Ivan Grigoriev on 25/08/2018.
//  Copyright © 2018 Ivan Grigoriev. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface DialogListCell : UITableViewCell

+(UINib *)nib;

-(void)updateCellWithName:(NSString *)name message:(NSString *)message avatarUrl:(NSString *)avatarUrl;

@end

NS_ASSUME_NONNULL_END
