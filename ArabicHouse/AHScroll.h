//
//  AHScroll.h
//  ArabicHouse
//
//  Created by Mac on 13. 5. 4..
//  Copyright (c) 2013년 com.vanillabreeze. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AHMenu.h"

@interface AHScroll : UIScrollView <AHMenuProtocol> {
    NSMutableArray* file_path;
    
    UIImageView* image_view;
}

-(id)initWithFrame:(CGRect)frame;
- (void)setIndex:(int)_idx;

@end
