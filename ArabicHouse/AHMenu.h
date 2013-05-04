//
//  AHMenu.h
//  ArabicHouse
//
//  Created by Mac on 13. 5. 4..
//  Copyright (c) 2013년 com.vanillabreeze. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AHScroll.h"

@interface AHMenu : UIView {
    NSMutableArray* buttons;
    AHScroll* scroll;
}

-(id)initWithFrame:(CGRect)frame withMenu:(AHScroll*)scroll;

@end
