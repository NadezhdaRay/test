//
//  MFU.m
//  TestPups
//
//  Created by Ivan Grigoriev on 20/08/2018.
//  Copyright © 2018 Ivan Grigoriev. All rights reserved.
//

#import "MFU.h"
#import "Scanner.h"
#import "Printer.h"

@interface MFU ()

@property (nonatomic, strong) id <PrinterProtocol> printer;
@property (nonatomic, strong) id <ScannerProtocol> scanner;

@end

@implementation MFU

- (instancetype)init {
    if (self = [super init]) {
        self.printer = [[Printer alloc] initWithNameProduct:@"HP" version:22];
      //  [self.printer updateWithNameProduct:@"HP" version:2];
        
        self.scanner = [Scanner new];
    }
    return self;
}

#pragma mark - lazy initilization

//-(Printer *)printer {
//    if (!_printer) {
//        _printer = [Printer new];
//    }
//    return _printer;
//}
//
//-(Scanner *)scanner {
//    if (!_scanner) {
//        _scanner = [Scanner new];
//    }
//    return _scanner;
//}

#pragma mark - methods

-(void)print {
    [self.printer print];
}

-(void)scan {
    [self.scanner scan];
}

-(void)printWithPageCount:(NSUInteger)pageCount {
    
}

@end
