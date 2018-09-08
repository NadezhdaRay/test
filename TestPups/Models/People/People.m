//
//  People.m
//  TestPups
//
//  Created by Ivan Grigoriev on 27/08/2018.
//  Copyright © 2018 Ivan Grigoriev. All rights reserved.
//

#import "People.h"

@implementation People

-(instancetype)initWithName:(NSString *)name avatar:(NSString *)avatar {
    if (self = [super init]) {
        self.name = name;
        self.avatar = avatar;
    }
    return self;
}

@end
