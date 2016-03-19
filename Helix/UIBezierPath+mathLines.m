//
//  UIBezierPath+mathLines.m
//  悬浮窗
//
//  Created by mac on 16/3/10.
//  Copyright © 2016年 高亮军. All rights reserved.
//

#import "UIBezierPath+mathLines.h"

@implementation UIBezierPath (mathLines)


/*
 式中θ=ωt, ω为角速度, h 称为螺距, β称为螺旋角,式中对右螺旋线取正号, 对左螺旋线取负号. 如果以弧长s为参数, 则其方程为
 
 x = a * cos(s/(a^2 + b^2) ^(1/2)）
 y = a * sin(s/(a^2 + b^2) ^(1/2)）
 z = +- * (bs/(a^2 + b^2) ^(1/2)）
 
 */
+ (instancetype)bezierPathCreatCircularHelix:(double)radius beginPoint:(CGPoint)bgPoint height:(double)height turns:(NSUInteger)turns {  //圆柱螺旋线

    double a = radius;//弹簧半径
    double x, z;
    double b = height;//弹簧高度
    double lb = sqrt(a * a + b * b);
    
    UIBezierPath *path = [UIBezierPath bezierPath];
    
    [path moveToPoint:bgPoint];
    
    for (double i = 0; i < turns * 100 ; i++) {
       
        x = bgPoint.x + a * cos(i / lb) ;
        
        z = bgPoint.y + b * i / lb;
        
        [path addLineToPoint:CGPointMake(x, z)];
      
    }
  
    return path;
    
}






+ (instancetype)bezierPathCreatArchimedeanSpralMaginAtPoint:(CGPoint)bgPoint fineness:(NSUInteger)fineness radius:(NSUInteger)radius accuracy:(NSUInteger)accyracy surround:(NSUInteger)surround {
    
//    surround = 80;
//    accyracy = 10;//精确度  影响半径扩张速度，反比
//    radius = 100;//半径   radius * t / accyracy;
//    fineness = 10;//精细度  描点的个数
//    bgPoint = CGPointMake(200, 400);
    double r, x, y, angle;
    
    UIBezierPath *path = [UIBezierPath bezierPath];
    
    [path moveToPoint:bgPoint];
    
    for (double t = 0; t < fineness ; t++) {//

        r = radius * t / accyracy;//
        angle = t * 360 * surround;//出来的是弧度值
        x = bgPoint.x + r * cos(angle);
        y = bgPoint.y + r * sin(angle);
        
        [path addLineToPoint:CGPointMake(x, y)];
        
        
    }
    
    
    return path;
}

@end
