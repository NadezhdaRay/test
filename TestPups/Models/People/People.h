//
//  People.h
//  TestPups
//
//  Created by Ivan Grigoriev on 27/08/2018.
//  Copyright © 2018 Ivan Grigoriev. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface People : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *avatar;

-(instancetype)initWithName:(NSString *)name avatar:(NSString *)avatar;

@end

NS_ASSUME_NONNULL_END
