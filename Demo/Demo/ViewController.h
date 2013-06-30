//
//  ViewController.h
//  Demo
//
//  Created by Francesco Frascà on 30/06/13.
//  Copyright (c) 2013 Francesco Frascà. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <DropBoxPicker/DropBoxPicker.h>

@interface ViewController : UIViewController <DBPDropBoxPickerDelegate>


- (IBAction)picker:(id)sender;
- (IBAction)link:(id)sender;

@end
