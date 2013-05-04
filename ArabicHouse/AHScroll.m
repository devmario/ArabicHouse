//
//  AHScroll.m
//  ArabicHouse
//
//  Created by Mac on 13. 5. 4..
//  Copyright (c) 2013년 com.vanillabreeze. All rights reserved.
//

#import "AHScroll.h"

@implementation AHScroll

- (id)initWithFrame:(CGRect)frame withImage:(UIImage*)image
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        if(image) {
            image_view = [[UIImageView alloc] initWithImage:image];
            [self addSubview:image_view];
            [image_view release];
            [self setContentSize:image_view.frame.size];
        }
    }
    return self;
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
