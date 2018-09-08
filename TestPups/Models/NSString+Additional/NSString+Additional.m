//
//  NSString+Additional.m
//  TestPups
//
//  Created by Ivan Grigoriev on 21/08/2018.
//  Copyright © 2018 Ivan Grigoriev. All rights reserved.
//

#import "NSString+Additional.h"

@implementation NSString (Additional)

-(NSString *)reverseString {
    NSMutableString *reverseString = [[NSMutableString alloc] initWithCapacity:self.length];
    
    for(NSUInteger i = self.length - 1; i >= 0; i--) {
        [reverseString appendString:[NSString stringWithFormat:@"%c", [self characterAtIndex:i]]];
    }
    return reverseString;
}

@end
