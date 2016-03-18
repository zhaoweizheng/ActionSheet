//
//  ItemCell.h
//  ActionSheet
//
//  Created by mistong on 16/3/18.
//  Copyright © 2016年 赵伟争. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Item.h"

#define RGBCOLOR(r, g, b)       [UIColor colorWithRed:(r)/255.0f green:(g)/255.0f blue:(b)/255.0f alpha:1]
#define RGBACOLOR(r, g, b, a)   [UIColor colorWithRed:(r)/255.0f green:(g)/255.0f blue:(b)/255.0f alpha:(a)]
//获取设备的物理高度
#define ScreenHeight [UIScreen mainScreen].bounds.size.height
//获取设备的物理宽度
#define ScreenWidth [UIScreen mainScreen].bounds.size.width
@interface ItemCell : UITableViewCell

-(void)setData : (Item *)item;

@end
