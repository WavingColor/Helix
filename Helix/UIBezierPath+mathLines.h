//
//  UIBezierPath+mathLines.h
//  悬浮窗
//
//  Created by mac on 16/3/10.
//  Copyright © 2016年 高亮军. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBezierPath (mathLines)

/**
 *  弹簧生成器，用空间弹簧方程改编，实际上是平面弹簧，需要指出的是，以下的参数都是相对值，
 *
 *  @param radius  弹簧半径，半径减小会导致圈数单位增加
 *  @param bgPoint 起点
 *  @param height  弹簧高度，高度增加会导致圈数单位减少
 *  @param turns   圈数单位
 *
 *  @return 你要的弹簧
 */
+ (instancetype)bezierPathCreatCircularHelix:(double)radius beginPoint:(CGPoint)bgPoint height:(double)height turns:(NSUInteger)turns;


/**
 *  这是一个基于阿基米德螺旋线方程写的自定义螺旋线函数，用于生成各种各样的平面螺旋曲线
 *一动点沿一直线作等速移动的同时，该直线又绕线上一点O作等角速度旋转时，动点所走的轨迹就是阿基米德涡线。直线旋转一周时，动点在直线上移动的距离称为导程
 *
 *  @param bgPoint  螺旋线中心点
 *  @param fineness 精细度，就是要用多少个点来画这个螺旋线
 *  @param radius   半径，确切的说是初始半径
 *  @param accyracy 半径伴侣，其值直接影响半径改变，经常出现神奇效果
 *  @param surround 位置参数，proe中说他是圈数，实则不然，更准确一旦描述，应该是螺旋线的心思，填多少自己看咯
 *
 *  @return 你要的那个路径
 */
+ (instancetype)bezierPathCreatArchimedeanSpralMaginAtPoint:(CGPoint)bgPoint fineness:(NSUInteger)fineness radius:(NSUInteger)radius accuracy:(NSUInteger)accyracy surround:(NSUInteger)surround;
@end
