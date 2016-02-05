//
//  KRConfettiView.h
//  KRConfetti
//
//  Created by Kieran (work account) on 04/02/2016.
//  Copyright © 2016 Robinson. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef enum {
    Confetti,
    Triangle,
    Star,
    Diamond,
    Custom,
    
} ConfettiType;

@interface KRConfettiView : UIView
-(void)startConfetti;
-(void)stopConfetti;

@property (nonatomic)NSArray *colours;
@property (nonatomic) float intensity;
@property (nonatomic) CAEmitterLayer *emitter;
@property (nonatomic) ConfettiType type;
@property (nonatomic) UIImage *customImage;
@end
