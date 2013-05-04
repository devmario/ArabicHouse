//
//  AHMenu.m
//  ArabicHouse
//
//  Created by Mac on 13. 5. 4..
//  Copyright (c) 2013년 com.vanillabreeze. All rights reserved.
//

#import "AHMenu.h"

@implementation AHMenu

- (id)initWithFrame:(CGRect)frame withMenu:(AHScroll *)_scroll
{
    self = [super initWithFrame:frame];
    if (self) {
        scroll = _scroll;
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
