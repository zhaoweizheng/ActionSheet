//
//  PicAndTextActionSheet.h
//  ActionSheet
//
//  Created by mistong on 16/3/18.
//  Copyright © 2016年 赵伟争. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol DownSheetDelegate <NSObject>

- (void)didSelectIndex:(NSInteger)index;

@end


@interface PicAndTextActionSheet : UIView

@property (nonatomic, strong)id <DownSheetDelegate>delegate;

- (id)initWithList:(NSArray *)list  title:(NSString *)title;

- (void)showInView:(UIViewController *)controller;

@end
