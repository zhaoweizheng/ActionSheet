//
//  ViewController.m
//  ActionSheet
//
//  Created by mistong on 16/3/17.
//  Copyright © 2016年 赵伟争. All rights reserved.
//

#import "ViewController.h"
#import "Item.h"
//#import "SystemActionSheet.h"
#import "PicAndTextActionSheet.h"
@interface ViewController ()<DownSheetDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    CGRect bounds = self.view.bounds;

    UIButton *dialPhone2 = [[UIButton alloc] initWithFrame:CGRectMake(CGRectGetWidth(bounds)/2-100, 200, 200, 40)];
    dialPhone2.backgroundColor = [UIColor grayColor];
    [dialPhone2 setTitle:@"图文混排ActionSheet" forState:UIControlStateNormal];
    [dialPhone2 addTarget:self action:@selector(dialPhone2) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:dialPhone2];
    
    
    // Do any additional setup after loading the view, typically from a nib.
}

-(void) dialPhone2 {
    Item *item1 = [[Item alloc] init];
    item1.icon = @"journey_phone";
    item1.title = @"15195905888";
    Item *item2 = [[Item alloc] init];
    item2.icon = @"journey_phone";
    item2.title = @"15195905777";
    Item *item3 = [[Item alloc] init];
    item3.icon = @"journey_phone";
    item3.title = @"15195905777";
    NSArray *listData = [NSArray arrayWithObjects:item1,item2,item3, nil];
    
    PicAndTextActionSheet *sheet = [[PicAndTextActionSheet alloc] initWithList:listData title:@"拨打电话"];
    sheet.delegate = self;
    [sheet showInView:self];
}

-(void) didSelectIndex:(NSInteger)index{
   
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"提示" message:[NSString stringWithFormat:@"您当前点击的是第%zi个按钮",index] delegate:nil cancelButtonTitle:@"确定" otherButtonTitles:nil];
    [alert show];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
