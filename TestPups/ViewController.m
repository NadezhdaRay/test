//
//  ViewController.m
//  TestPups
//
//  Created by Ivan Grigoriev on 01/08/2018.
//  Copyright © 2018 Ivan Grigoriev. All rights reserved.
//

#import "ViewController.h"
#import "MFU.h"
#import "NSString+Additional.h"


@interface ViewController () {
    NSString *lalala;
}

@property (nonatomic, strong, readwrite) NSString *moreImportantProperty;

@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel *placeLabel;
@property (weak, nonatomic) IBOutlet UIImageView *avatarImageView;

@property (nonatomic, strong) NSString *namePups;
@property (nonatomic, weak) NSString *namePups2;
@property (nonatomic, assign) NSInteger agePups;
@property (nonatomic, assign) NSInteger agePups2;

@property (nonatomic, strong) id <PrinterProtocol> printerDevice;

@end

@implementation ViewController

//-(void)setNameLabel:(UILabel *)nameLabel {
//
//}

//-(UILabel *)nameLabel {
//
//
//    return _nameLabel;
//}

-(void)loadView {
    [super loadView];
    
    
}

-(id <PrinterProtocol>)printerDevice {
    if (!_printerDevice) {
       // _printerDevice = [Printer new];
        
        _printerDevice = [MFU new];
    }
    return _printerDevice;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
 //   NSString *reversPupsName = [self.namePups reverseString];
    
 //   [self.printerDevice print];
    
    //[self.printer print];
  //  [self.mfu print];
    
    
    

    self.nameLabel.text = @"Надежда Григорьева";
    self.placeLabel.text = @"Брянск";
    
    self.namePups = @"Надя";
    self.namePups2 = self.namePups;

    self.namePups = @"Иван";
//
//    self.agePups = 5;
//    self.agePups2 = self.agePups;
//    self.agePups2 = 6;

    NSArray *namesArray = @[@"A", @"B", @"C", @(1), @(2), self.namePups];
    //[[NSArray alloc] initWithObjects:@"A", @"B", @"C", @(1), @(2), self.namePups, nil];
    
    //NSMutableArray *nameMutableArray = [NSMutableArray new];
    NSMutableArray *name2MutableArray = [[NSMutableArray alloc] initWithArray:namesArray];
    
    [name2MutableArray addObject:@"Корова"];
    [name2MutableArray addObjectsFromArray:namesArray];
    
    [name2MutableArray removeObject:self.namePups];
    [name2MutableArray removeObjectAtIndex:0];
    [name2MutableArray removeLastObject];
    
    
    NSMutableDictionary *nadyaDictionary = [[NSMutableDictionary alloc] initWithDictionary:@{@"name" : @"Надя"}];
    nadyaDictionary[@"surname"] = @"fsdfsd";
    
   // [self requestFriendWithName:@"Надя" age:5 gender:YES];
    
    Printer *printer1 = [[Printer alloc] initWithNameProduct:@"hp" version:2];
    Printer *printer2 = [[Printer alloc] initWithNameProduct:@"samsung" version:3];
    Printer *printer3 = [[Printer alloc] initWithNameProduct:@"bosch" version:4];
    
    Scanner *scanner1 = [[Scanner alloc] init];
    
    scanner1.name = @"HP 2";
    
    NSArray *array1 = @[printer1, printer2, scanner1, printer3];
    // NSArray *array2 = [[NSArray alloc] initWithObjects:printer1, printer2, scanner1, printer3, nil];
    // NSArray *array3 = [NSArray arrayWithObjects:printer1, printer2, scanner1, printer3, nil];
    
    for (int i = 0; i < array1.count; i++) {
        id value = array1[i];
        NSLog(@"I'm in array, %@", value);
        
        if ([value conformsToProtocol:@protocol(PrinterProtocol)]) {
            id <PrinterProtocol> valuePrinter = value;
            
            if ([valuePrinter respondsToSelector:@selector(print)]) {
                [valuePrinter print];
            }
        }
     
    }
    
//    for (id <PrinterProtocol> obj in array1) {
//        [obj print];
//    }
    
    for (id obj in array1) {
        if ([obj conformsToProtocol:@protocol(PrinterProtocol)]) {

        }
    }
    
//    NSString *string111 = [NSString stringWithFormat:@"%@ %@. Hello. %@. Print %lu", @"test1", printer3.nameProduct, printer2.nameProduct, printer3.version];
//
//    NSString *string222 = [string111 stringByAppendingString:printer1.nameProduct];
//    
//    NSMutableString *mutableString = [[NSMutableString alloc] init];
//    [mutableString appendFormat:@"%@ - %@ / hello %@ - %lu", @"test1", printer3.nameProduct, printer2.nameProduct, printer3.version];
//    
//    NSArray *dotArray = [string111 componentsSeparatedByString:@"."];
//    [string111 stringByReplacingOccurrencesOfString:@" " withString:@""];
//    
//    
    
    NSLog(@"");
    
    
}

-(NSInteger)requestFriendWithName:(NSString *)name age:(NSInteger)age gender:(BOOL)gender {
   // self.name;
    //name;
    for (int i = 0; i < 10; i++) {
        
    }
    
    
    NSNumber *ageNumber = @(5.5);
//    double fdsfs = [ageNumber doubleValue];
//
//    for (NSString *name in namesArray) {
//
//    }
    
    return 5;
}

//-(void)viewDidLayoutSubviews {
//
//}
//
-(void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    
    self.avatarImageView.layer.cornerRadius = self.avatarImageView.frame.size.height / 2;
}
//
//-(void)viewWillAppear:(BOOL)animated {
//
//}
//
//-(void)viewDidDisappear:(BOOL)animated {
//
//}
//
//-(void)viewWillDisappear:(BOOL)animated {
//
//}


- (IBAction)editButtonPressed:(id)sender {
    NSLog(@"editButtonPressed");
}

- (IBAction)likeButtonPressed:(id)sender {
    NSLog(@"likeButtonPressed");
}
- (IBAction)commentButtonPressed:(id)sender {
    NSLog(@"commentButtonPressed");
}
- (IBAction)sharedButtonPressed:(id)sender {
    NSLog(@"sharedButtonPressed");
}
- (IBAction)forwardButtonPressed:(id)sender {
    NSLog(@"forwardButtonPressed");
}
@end
