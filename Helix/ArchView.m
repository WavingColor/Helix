
//
//  ArchView.m
//  Helix
//
//  Created by mac on 16/3/19.
//  Copyright © 2016年 高亮军. All rights reserved.
//

#import "ArchView.h"
#import "UIBezierPath+mathLines.h"

@interface ArchView ()


@end


@implementation ArchView


- (void)setPath:(UIBezierPath *)path {
    _path = path;
    
    [self setNeedsDisplay];
}
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    
    

    CGContextRef ref = UIGraphicsGetCurrentContext();

    CGPathRef path1 = self.path.CGPath;
    
    CGContextAddPath(ref, path1);
    
    CGContextStrokePath(ref);
    
    [self setNeedsDisplay];
    
    
    // Drawing code
}


@end
