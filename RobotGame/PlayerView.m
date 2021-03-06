//
//  PlayerView.m
//  Robots
//
//  Created by Diana Zmuda on 9/13/12.
//  Copyright (c) 2012 Diana Zmuda. All rights reserved.
//

#import "PlayerView.h"
#import "StatsViewController.h"
#import "LevelViewController.h"

@implementation PlayerView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        //place a picture of the player
        CALayer *playerLayer = [CALayer new];
        playerLayer.bounds = CGRectMake(0,0,72,72);
        playerLayer.frame = CGRectMake(0,0,72,72);
        UIImage *robot = [UIImage imageNamed:@"tinybot.png"];
        playerLayer.contents = (__bridge id)([robot CGImage]);
        [self.layer addSublayer:playerLayer];
    }
    return self;
}

- (void) touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    StatsViewController *svc = [StatsViewController new];
    svc.lvc = self.lvc;
    [svc setupView];
    [self.lvc presentModalViewController:svc animated:YES];
}

/*
 // Only override drawRect: if you perform custom drawing.
 // An empty implementation adversely affects performance during animation.
 - (void)drawRect:(CGRect)rect
 {
 // Drawing code
 }
 */

@end
