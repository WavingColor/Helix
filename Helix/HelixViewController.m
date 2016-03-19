//
//  HelixViewController.m
//  Helix
//
//  Created by mac on 16/3/19.
//  Copyright © 2016年 高亮军. All rights reserved.
//

#import "HelixViewController.h"
#import "UIBezierPath+mathLines.h"

#import "HelixView.h"
@interface HelixViewController ()
@property (weak, nonatomic) IBOutlet UILabel *radius;
@property (weak, nonatomic) IBOutlet UILabel *heights;
@property (weak, nonatomic) IBOutlet UILabel *turns;
@property (weak, nonatomic) IBOutlet HelixView *showView;

@end

@implementation HelixViewController
- (IBAction)radiusChange:(UISlider *)sender {
    _radius.text = [NSString stringWithFormat:@"%.2lf", sender.value];
    [self draw];
}
- (IBAction)heightChange:(UISlider *)sender {
    _heights.text = [NSString stringWithFormat:@"%.2lf", sender.value];
    [self draw];
}
- (IBAction)turnsChange:(UISlider *)sender {
    _turns.text = [NSString stringWithFormat:@"%.2lf", sender.value];
    [self draw];

}

- (void)viewDidLoad {
    [super viewDidLoad];

    [self draw];

    // Do any additional setup after loading the view.
}

- (void)draw {
    CGFloat radius = _radius.text.floatValue;
    CGFloat height = _heights.text.floatValue;
    CGFloat truns = _turns.text.floatValue;

    UIBezierPath *path  =  [UIBezierPath bezierPathCreatCircularHelix:radius beginPoint:CGPointMake(self.showView.center.x, 0) height:height turns:truns];
    
    self.showView.path = path;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
