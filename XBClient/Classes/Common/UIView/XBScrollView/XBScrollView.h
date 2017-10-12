//
//  XBScrollView.h
//  XBClient
//
//  Created by yongche_w on 2017/10/12.
//  Copyright © 2017年 Map. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface XBScrollPage : UIView

@property (nonatomic, assign) NSInteger index;

@end


@class XBScrollView;

@protocol XBScrollViewDataSources <NSObject>

- (id)scrollView:(XBScrollView*)scrollView index:(NSInteger)index;

- (NSInteger)numberOfPageView:(XBScrollView*)scrollView;

@optional

- (void)scrollViewDidScroll:(XBScrollView *)scrollView;

- (void)scrollViewDidEndScroll:(XBScrollView *)scrollView;

@end

@interface XBScrollView : UIView

@property (nonatomic, weak) id<XBScrollViewDataSources> dataSources;

@property (nonatomic, assign) NSInteger currentPage;

@property (nonatomic, strong, readonly) UIScrollView* scrollView;

//- (void)reloadPages;
//
//- (void)relayoutPages;
//
//- (void)setCurrentPage:(NSInteger)index animated:(BOOL)animated;

@end
