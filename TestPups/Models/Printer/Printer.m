//
//  Printer.m
//  TestPups
//
//  Created by Ivan Grigoriev on 20/08/2018.
//  Copyright © 2018 Ivan Grigoriev. All rights reserved.
//

#import "Printer.h"

@interface Printer ()

@property (nonatomic, strong, readwrite) NSString *nameProduct;
@property (nonatomic, assign, readwrite) NSInteger version;
@property (nonatomic, assign) NSUInteger estimateCatridge;

@end

@implementation Printer

+(instancetype)printerWithNameProduct:(NSString *)nameProduct version:(NSInteger)version {
    return [[Printer alloc] initWithNameProduct:nameProduct version:version];
}

-(instancetype)initWithNameProduct:(NSString *)nameProduct version:(NSInteger)version {
    if (self = [super init]) {
        self.nameProduct = nameProduct;
        self.version = version;
        self.estimateCatridge = 20;
    }
    return self;
}

-(void)updateWithNameProduct:(NSString *)nameProduct version:(NSInteger)version {
    self.nameProduct = nameProduct;
    self.version = version;
    self.estimateCatridge = 20;
}

-(BOOL)isPrinterFull {
    return self.estimateCatridge > 0;
}

-(void)print {
    if (self.isPrinterFull) {
        NSLog(@"Printed!");
        self.estimateCatridge--;
    }
}

-(void)printWithPageCount:(NSUInteger)pageCount {
    for (int i = 0; i < pageCount; i++) {
        [self print];
    }
}

@end
