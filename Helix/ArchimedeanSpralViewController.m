//
//  ArchimedeanSpralViewController.m
//  Helix
//
//  Created by mac on 16/3/19.
//  Copyright © 2016年 高亮军. All rights reserved.
//

#import "ArchimedeanSpralViewController.h"
#import "ArchView.h"
#import "UIBezierPath+mathLines.h"

@interface ArchimedeanSpralViewController ()
@property (weak, nonatomic) IBOutlet UILabel *surround;
@property (weak, nonatomic) IBOutlet UILabel *accyracy;
@property (weak, nonatomic) IBOutlet UILabel *radius;
@property (weak, nonatomic) IBOutlet UILabel *finess;
@property (nonatomic, weak) IBOutlet ArchView *showView;

@end

@implementation ArchimedeanSpralViewController
- (IBAction)surround:(UISlider *)sender {
    _surround.text = [NSString stringWithFormat:@"%.2lf", sender.value];
    [self draw];
}
- (IBAction)accyracy:(UISlider *)sender {
    _accyracy.text = [NSString stringWithFormat:@"%.2lf", sender.value];
    [self draw];
}
- (IBAction)finenes:(UISlider *)sender {
    _finess.text = [NSString stringWithFormat:@"%.2lf", sender.value];
    [self draw];
}

- (IBAction)rdius:(UISlider *)sender {
    _radius.text = [NSString stringWithFormat:@"%.2lf", sender.value];
    [self draw];
}





- (void)viewDidLoad {
    [super viewDidLoad];

    [self draw];
    // Do any additional setup after loading the view.
}


- (void)draw {
    
    CGFloat radius = _radius.text.floatValue;
    CGFloat surround = _surround.text.floatValue;
    CGFloat accyracy = _accyracy.text.floatValue;
    CGFloat fineness = _finess.text.floatValue;

    
    UIBezierPath *path  =  [UIBezierPath bezierPathCreatArchimedeanSpralMaginAtPoint:self.view.center fineness:fineness radius:radius accuracy:accyracy surround:surround];
    self.showView.path = path;
}

@end
