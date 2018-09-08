//
//  Scanner.h
//  TestPups
//
//  Created by Ivan Grigoriev on 20/08/2018.
//  Copyright © 2018 Ivan Grigoriev. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol ScannerProtocol <NSObject>

-(void)scan;

@end

NS_ASSUME_NONNULL_BEGIN

@interface Scanner : NSObject <ScannerProtocol>

@property (nonatomic, strong) NSString *name;

@end



NS_ASSUME_NONNULL_END
