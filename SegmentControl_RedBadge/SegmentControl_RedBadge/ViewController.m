//
//  ViewController.m
//  SegmentControl_RedBadge
//
//  Created by suime on 2017/5/5.
//  Copyright © 2017年 suime. All rights reserved.
//

#import "ViewController.h"
#import "LXSegmentedControl.h"
#import "UIColor+AppColor.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *textLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    LXSegmentedControl *titleSegment = [[LXSegmentedControl alloc] initWithFrame:CGRectMake(0, 0, 160, 36)];
    titleSegment.items =@[@"第一个",@"第二个"];
    titleSegment.selectedSegmentIndex = 0;
    titleSegment.showsCount = 0;
    titleSegment.font = [UIFont systemFontOfSize:15.f];
    [titleSegment setTitleColor:[UIColor sui_colorWithHex:0x666666] forState:UIControlStateNormal];
    
    [titleSegment setTitleColor:[UIColor whiteColor]  forState:UIControlStateSelected];
    [titleSegment addTarget:self action:@selector(selectedtitleSegment:) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:titleSegment];
    titleSegment.center = CGPointMake(self.view.frame.size.width / 2, 60);
    [titleSegment isNeedShowRedCircle:@[@(2),@(3)] isShowCount:YES];
}
- (void)selectedtitleSegment:(LXSegmentedControl *)segmentControl
{
    _textLabel.text = [NSString stringWithFormat:@"第% ld个",segmentControl.selectedSegmentIndex + 1];
    NSLog(@"-----%ld------",segmentControl.selectedSegmentIndex);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
