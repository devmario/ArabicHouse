//
//  AHMenu.h
//  ArabicHouse
//
//  Created by Mac on 13. 5. 4..
//  Copyright (c) 2013년 com.vanillabreeze. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol AHMenuProtocol <NSObject>

- (void)setIndex:(int)_idx;

@end

@interface AHMenu : UIView {
    NSMutableArray* buttons;
    id <AHMenuProtocol> protocol;
}

-(id)initWithFrame:(CGRect)frame withProtocol:(id <AHMenuProtocol>)_protocol;

@end
