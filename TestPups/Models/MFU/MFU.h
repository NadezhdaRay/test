//
//  MFU.h
//  TestPups
//
//  Created by Ivan Grigoriev on 20/08/2018.
//  Copyright © 2018 Ivan Grigoriev. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Printer.h"
#import "Scanner.h"

NS_ASSUME_NONNULL_BEGIN

@interface MFU : NSObject <PrinterProtocol, ScannerProtocol>

@end

NS_ASSUME_NONNULL_END
