//
//  AHScroll.h
//  ArabicHouse
//
//  Created by Mac on 13. 5. 4..
//  Copyright (c) 2013년 com.vanillabreeze. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AHScroll : UIScrollView {
    UIImageView* image_view;
}

-(id)initWithFrame:(CGRect)frame withImage:(UIImage*)image;

@end
