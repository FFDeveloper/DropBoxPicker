//
//  DBPDropBoxPickerViewController.h
//  DBPDropBoxPicker
//
//  Created by Francesco Frascà on 29/06/13.
//  Copyright (c) 2013 Francesco Frascà. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <DropboxSDK/DropboxSDK.h>

@class DBPDropBoxPickerViewController;

@protocol DBPDropBoxPickerDelegate <NSObject>

@required
- (void)dropBoxPickerController:(DBPDropBoxPickerViewController *)picker fileChoosedWithPath:(NSString *)dropBoxPath;
- (void)errorChoosingFile:(DBPDropBoxPickerViewController *)picker;

@end

@interface DBPDropBoxPickerViewController : UITableViewController <DBRestClientDelegate, DBPDropBoxPickerDelegate>

@property(weak, nonatomic) id <DBPDropBoxPickerDelegate> delegate;

- (id)initWithDropBoxPath:(NSString *)path;

@end
