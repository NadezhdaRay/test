//
//  Printer.h
//  TestPups
//
//  Created by Ivan Grigoriev on 20/08/2018.
//  Copyright © 2018 Ivan Grigoriev. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol PrinterProtocol <NSObject>

-(void)print;
-(void)printWithPageCount:(NSUInteger)pageCount;

@end

NS_ASSUME_NONNULL_BEGIN

@interface Printer : NSObject <PrinterProtocol>

@property (nonatomic, strong, readonly) NSString *nameProduct;
@property (nonatomic, assign, readonly) NSInteger version;
@property (nonatomic, assign, readonly) BOOL isPrinterFull;

-(instancetype)init NS_UNAVAILABLE;
-(instancetype)initWithNameProduct:(NSString *)nameProduct version:(NSInteger)version;

+(instancetype)printerWithNameProduct:(NSString *)nameProduct version:(NSInteger)version;

//-(void)updateWithNameProduct:(NSString *)nameProduct version:(NSInteger)version;

@end

NS_ASSUME_NONNULL_END
