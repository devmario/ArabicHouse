//
//  AHViewController.h
//  ArabicHouse
//
//  Created by Mac on 13. 5. 4..
//  Copyright (c) 2013년 com.vanillabreeze. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AHScroll.h"
#import "AHMenu.h"

@interface AHViewController : UIViewController {
    AHScroll* scroll;
    AHMenu* menu;
    
    NSMutableArray* file_path;
    NSMutableArray* data_file_path;
    UIImage* content_image;
}

@end
