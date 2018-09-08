//
//  Message.h
//  TestPups
//
//  Created by Ivan Grigoriev on 27/08/2018.
//  Copyright © 2018 Ivan Grigoriev. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "People.h"

NS_ASSUME_NONNULL_BEGIN

@interface Message : NSObject

@property (nonatomic, assign) NSInteger msgId;
@property (nonatomic, strong) NSString *text;
@property (nonatomic, strong) People *man;

-(instancetype)initMessageWithId:(NSInteger)msgId text:(NSString *)text man:(People *)man;

@end

NS_ASSUME_NONNULL_END
