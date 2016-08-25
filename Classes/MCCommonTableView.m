//
//  MCCommonTableView.m
//  MCCommonTableView
//
//  Created by Chao Ma on 08/19/2016.
//  Copyright © 2016 iMegatron's Lab. All rights reserved.
//

#import "MCCommonTableView.h"
#import "MCCommonTableViewCell.h"

@interface NSArray (Sort)
- (NSArray *)sortedArray;
@end

@implementation NSArray (Sort)
- (NSArray *)sortedArray {
    return [self sortedArrayUsingComparator:^NSComparisonResult(id obj1, id obj2) {
        return [obj1 compare:obj2 options:NSNumericSearch];
    }];
}
@end


static NSString * const kMCCommonTableViewCellIdentifier = @"MCCommonTableViewCellIdentifier";

@interface MCCommonTableView () <UITableViewDataSource, UITableViewDelegate>

@end

@implementation MCCommonTableView

- (instancetype)initWithFrame:(CGRect)frame style:(UITableViewStyle)style {
    self = [super initWithFrame:frame style:style];
    if (self == nil) {
        return nil;
    }
    
    self.backgroundColor = [UIColor whiteColor];
    self.dataSource = self;
    self.delegate = self;
    self.estimatedRowHeight = 44;
    self.rowHeight = UITableViewAutomaticDimension;
    self.sectionFooterHeight = 0.0;
    self.separatorStyle = UITableViewCellSeparatorStyleNone;
    [self registerClass:[MCCommonTableViewCell class] forCellReuseIdentifier:kMCCommonTableViewCellIdentifier];
    
    return self;
}

- (void)setDataMap:(NSDictionary *)dataMap {
    _dataMap = dataMap;
    [self reloadData];
}

#pragma mark - UITableViewDataSource
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return self.dataMap.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    NSDictionary *sectionDic = self.dataMap[[self.dataMap.allKeys sortedArray][section]];
    return sectionDic.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    MCCommonTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:kMCCommonTableViewCellIdentifier];
    if (cell == nil)
        cell = [[MCCommonTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:kMCCommonTableViewCellIdentifier];
    
    NSDictionary *sectionDic = self.dataMap[[self.dataMap.allKeys sortedArray][indexPath.section]];
    NSString *rowKey = [sectionDic.allKeys sortedArray][indexPath.row];
    cell.cellData = rowKey;
    [cell setNeedsUpdateConstraints];
    [cell updateConstraintsIfNeeded];
    
    return cell;
}

#pragma mark - UITableViewDelegate
- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
    
    NSString *sectionKey = [self.dataMap.allKeys sortedArray][section];
    if (sectionKey.length <= 0) {
        return nil;
    }
    
    UILabel *titleLabel = [[UILabel alloc] init];
    titleLabel.backgroundColor = [UIColor lightGrayColor];
    titleLabel.text = sectionKey;
    
    return titleLabel;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    if (self.dataMap.count == 1) {
        NSString *sectionKey = self.dataMap.allKeys[0];
        if (sectionKey.length <= 0) {
            return 0;
        }
    }
    
    return 30;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    NSDictionary *sectionDic = self.dataMap[[self.dataMap.allKeys sortedArray][indexPath.section]];
    NSString *rowKey = [sectionDic.allKeys sortedArray][indexPath.row];
    CellTappedBlock cellTappedBlock = sectionDic[rowKey];
    cellTappedBlock();
}

#pragma mark - Utils
// Util create
+ (instancetype)tableViewWithFrame:(CGRect)frame {
    return [[MCCommonTableView alloc] initWithFrame:frame style:UITableViewStylePlain];
}

@end

