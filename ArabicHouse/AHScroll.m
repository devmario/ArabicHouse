//
//  AHScroll.m
//  ArabicHouse
//
//  Created by Mac on 13. 5. 4..
//  Copyright (c) 2013년 com.vanillabreeze. All rights reserved.
//

#import "AHScroll.h"

@implementation AHScroll

- (void)setIndex:(int)_idx {
    return;
    [image_view removeFromSuperview];
    
    NSString* path;
    if(_idx > -1)
        path = [NSString stringWithFormat:@"scroll_%d.png", _idx];
    else
        path = @"main.png";
    
    UIImage* image = [[UIImage alloc] initWithContentsOfFile:[[[NSBundle mainBundle] resourcePath]  stringByAppendingPathComponent:path]];
    image_view = [[UIImageView alloc] initWithImage:image];
    [self addSubview:image_view];
    [image_view release];
    [image release];
    [self setContentSize:image_view.frame.size];
}

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        return self;
        
        for(int i = 0; i < 10; i++) {
            [file_path addObject:[[[NSBundle mainBundle] resourcePath]  stringByAppendingPathComponent:@"menu_back.png"]];
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
