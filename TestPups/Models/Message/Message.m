//
//  Message.m
//  TestPups
//
//  Created by Ivan Grigoriev on 27/08/2018.
//  Copyright © 2018 Ivan Grigoriev. All rights reserved.
//

#import "Message.h"

@implementation Message

-(instancetype)initMessageWithId:(NSInteger)msgId text:(NSString *)text man:(People *)man {
    if (self = [super init]) {
        self.msgId = msgId;
        self.text = text;
        self.man = man;
    }
    
    return self;
}

@end
