//
//  DialogListViewController.m
//  TestPups
//
//  Created by Ivan Grigoriev on 25/08/2018.
//  Copyright © 2018 Ivan Grigoriev. All rights reserved.
//

#import "DialogListViewController.h"
#import "DialogListCell.h"
#import "Message.h"
#import "People.h"

#import "ShowMessageController.h"
#import "GitRepositoriesService.h"
#import "GitRepositoriesMapper.h"

@interface DialogListViewController () <UITableViewDelegate, UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UITableView *dialogListTableView;
@property (strong, nonatomic) NSArray *arrayOfMessages;
@property (strong, nonatomic) NSArray *arrayOfPeople;

@end

@implementation DialogListViewController

//-(instancetype)new {
//    
//}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.dialogListTableView.delegate = self;
    self.dialogListTableView.dataSource = self;
    
    self.dialogListTableView.rowHeight = 64;
    self.dialogListTableView.tableFooterView = [UIView new];
    
    // self.dialogListTableView.estimatedRowHeight = 50;
    
    [self.dialogListTableView registerNib:[DialogListCell nib] forCellReuseIdentifier:@"DialogListCell"];
    
    // Do any additional setup after loading the view from its nib.
    
    
    People *man1 = [[People alloc] initWithName:@"Vasya" avatar:@"1111"];
    People *man2 = [[People alloc] initWithName:@"Kolya" avatar:@"222"];
    People *man3 = [[People alloc] initWithName:@"Dima" avatar:@"333"];
    People *man4 = [[People alloc] initWithName:@"Roma" avatar:@"1111"];
    
    Message *message1 = [[Message alloc] initMessageWithId:1 text:@"message 1" man:man1];
    Message *message2 = [[Message alloc] initMessageWithId:2 text:@"message 2" man:man1];
    Message *message3 = [[Message alloc] initMessageWithId:3 text:@"message 3" man:[[People alloc] initWithName:@"Kolya" avatar:@"222"]];
    
    NSArray *arrayOfMessages = @[message1, message2, message3];
    NSArray *arrayOfPeople = @[man1, man2, man3, man4];
    
    self.arrayOfMessages = arrayOfMessages;
    self.arrayOfPeople = arrayOfPeople;
    
    NSLog(@"");
}

#pragma mark - UITableViewDataSource

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 2;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    if (section == 0) return self.arrayOfMessages.count;
    if (section == 1) return self.arrayOfPeople.count;
    return 0;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    DialogListCell *dialogListCell = [tableView dequeueReusableCellWithIdentifier:@"DialogListCell" forIndexPath:indexPath];
    
    if (indexPath.section == 0) {
        Message *message = self.arrayOfMessages[indexPath.row];
        [dialogListCell updateCellWithName:message.man.name message:message.text avatarUrl:message.man.avatarUrl];
    }
    if (indexPath.section == 1) {
        People *man = self.arrayOfPeople[indexPath.row];
        [dialogListCell updateCellWithName:man.name message:@"" avatarUrl:man.avatar];
    }
    
    
    return dialogListCell;
}

#pragma mark - UITableViewDelegate

//- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
//    return 64;
//}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.section == 1) return;
    ShowMessageController *showMessageController = [ShowMessageController new];
    
    Message *message = self.arrayOfMessages[indexPath.row];
    showMessageController.message = message;
    
    [self.navigationController pushViewController:showMessageController animated:YES];
    [tableView deselectRowAtIndexPath:indexPath animated:NO];
}

@end
