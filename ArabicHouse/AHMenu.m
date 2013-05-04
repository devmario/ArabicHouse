//
//  AHMenu.m
//  ArabicHouse
//
//  Created by Mac on 13. 5. 4..
//  Copyright (c) 2013년 com.vanillabreeze. All rights reserved.
//

#import "AHMenu.h"

@implementation AHMenu

- (void)selectbt:(UIButton*)bt {
    for(int i = 0; i < 10; i++) {
        [[buttons objectAtIndex:i] setSelected:NO];
    }
    [[buttons objectAtIndex:bt.tag] setSelected:YES];
    [protocol setIndex:bt.tag];
}

- (id)initWithFrame:(CGRect)frame withProtocol:(id <AHMenuProtocol>)_protocol
{
    self = [super initWithFrame:frame];
    if (self) {
        protocol = _protocol;
        UIImage* image = [[UIImage alloc] initWithContentsOfFile:[[[NSBundle mainBundle] resourcePath]  stringByAppendingPathComponent:@"menu_back.png"]];
        UIImageView* image_view = [[UIImageView alloc] initWithImage:image];
        [image release];
        [self addSubview:image_view];
        [image_view release];
        
        image = [[UIImage alloc] initWithContentsOfFile:[[[NSBundle mainBundle] resourcePath]  stringByAppendingPathComponent:[NSString stringWithFormat:@"logo.png"]]];
        UIButton* main_button = [[UIButton alloc] initWithFrame:CGRectMake(37, 31, image.size.width, image.size.height)];
        [main_button setImage:image forState:UIControlStateNormal];
        [self addSubview:main_button];
        [main_button setTag:-1];
        [main_button addTarget:self action:@selector(selectbt:) forControlEvents:UIControlEventTouchUpInside];
        [main_button release];
        
        buttons = [[NSMutableArray alloc] init];
        float y = 151;
        float margin = 13;
        
        for(int i = 0; i < 10; i++) {
            image = [[UIImage alloc] initWithContentsOfFile:[[[NSBundle mainBundle] resourcePath]  stringByAppendingPathComponent:[NSString stringWithFormat:@"btoff_%d.png", i]]];
            UIButton* bt = [[UIButton alloc] initWithFrame:CGRectMake(margin, y, image.size.width, image.size.height)];
            [bt setImage:image forState:UIControlStateNormal];
            [image release];
            
            image = [[UIImage alloc] initWithContentsOfFile:[[[NSBundle mainBundle] resourcePath]  stringByAppendingPathComponent:[NSString stringWithFormat:@"bton_%d.png", i]]];
            [bt setImage:image forState:UIControlStateSelected];
            [bt setImage:image forState:UIControlStateHighlighted];
            [bt setSelected:NO];
            [bt setTag:i];
            [bt addTarget:self action:@selector(selectbt:) forControlEvents:UIControlEventTouchUpInside];
            [image release];
            
            y += image.size.height + margin;
            
            [buttons addObject:bt];
            [bt release];
            
            [self addSubview:bt];
        }
        
        // Initialization code
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
