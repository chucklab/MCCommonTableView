//
//  MCCommonTableView.h
//  MCCommonTableView
//
//  Created by Chao Ma on 08/19/2016.
//  Copyright © 2016 iMegatron's Lab. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void (^CellTappedBlock)();

@interface MCCommonTableView : UITableView

// Data source
@property (nonatomic, strong) NSDictionary *dataMap;

#pragma mark - Utils
// Util create
+ (instancetype)tableViewWithFrame:(CGRect)frame;

@end
