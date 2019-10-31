//
//  ViewController.m
//  NHLThread
//
//  Created by FanChunxing on 2019/10/31.
//  Copyright © 2019 FanChunxing. All rights reserved.
//

#import "ViewController.h"

#import "Masonry/Masonry.h"
#import "ReactiveCocoa/ReactiveCocoa.h"

@interface ViewController ()
@property (strong, nonatomic) dispatch_queue_t serialQueue;
@property (strong, nonatomic) dispatch_queue_t concurrentQueue;
@end

@implementation ViewController

- (instancetype)initWithCoder:(NSCoder *)coder
{
    if (self = [super initWithCoder:coder]) {
    }
    return self;
}

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
    }
    return self;
}

- (instancetype)init
{
    if (self = [super init]) {
        self.serialQueue = dispatch_queue_create("serialQueue", DISPATCH_QUEUE_SERIAL);
        self.concurrentQueue = dispatch_queue_create("concurrentQueue", DISPATCH_QUEUE_CONCURRENT);
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationItem.title = NSLocalizedString(@"NHLThread", nil);
    self.view.backgroundColor = UIColor.whiteColor;
    
    __weak UIButton *serialButton = [self addButtonToView:self.view];
    __weak UIButton *concurrentButton = [self addButtonToView:self.view];
    @weakify(self);
    [serialButton setTitle:NSLocalizedString(@"Run Serial", nil) forState:UIControlStateNormal];
    [serialButton setTitleColor:UIColor.blueColor forState:UIControlStateNormal];
    [serialButton mas_makeConstraints:^(MASConstraintMaker *make) {
        @strongify(self);
        make.bottom.equalTo(self.view.mas_centerY).offset(-5.0f);
        make.centerX.equalTo(self.view);
    }];
    [concurrentButton setTitle:NSLocalizedString(@"Run Concurrent", nil) forState:UIControlStateNormal];
    [concurrentButton setTitleColor:UIColor.blueColor forState:UIControlStateNormal];
    [concurrentButton mas_makeConstraints:^(MASConstraintMaker *make) {
        @strongify(self);
        make.top.equalTo(self.view.mas_centerY).offset(5.0f);
        make.centerX.equalTo(self.view);
    }];
    
    serialButton.rac_command = [[RACCommand alloc] initWithSignalBlock:^RACSignal *(id input) {
        @strongify(self);
        dispatch_async(self.serialQueue, ^{
            NSLog(@"Serial %@", NSThread.currentThread);
        });
        return [RACSignal return:@YES];
    }];
    
    concurrentButton.rac_command = [[RACCommand alloc] initWithSignalBlock:^RACSignal *(id input) {
        @strongify(self);
        dispatch_async(self.concurrentQueue, ^{
            NSLog(@"Concurrent %@", NSThread.currentThread);
        });
        return [RACSignal return:@YES];
    }];
}

- (__weak UILabel *)addLabelToView:(UIView *)view {
    UILabel *label = [UILabel new];
    [view addSubview:label];
    return label;
}

- (__weak UIButton *)addButtonToView:(UIView *)view {
    UIButton *button = [UIButton new];
    [view addSubview:button];
    return button;
}

@end
