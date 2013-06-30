//
//  ViewController.m
//  Demo
//
//  Created by Francesco Frascà on 30/06/13.
//  Copyright (c) 2013 Francesco Frascà. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)picker:(id)sender
{
    if (![[DBSession sharedSession] isLinked])
    {
        [[[UIAlertView alloc] initWithTitle:@"Attenzione" message:@"Prima di invoare il picker devi essere connesso a dropbox" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles: nil] show];
    }else {
        DBPDropBoxPickerViewController *picker = [[DBPDropBoxPickerViewController alloc] initWithDropBoxPath:@"/"];
        picker.delegate = self;
        UINavigationController *navController = [[UINavigationController alloc] initWithRootViewController:picker];
        [self presentViewController:navController animated:YES completion:^{
            
        }];
    }
}

- (void)link:(id)sender
{
    if (![[DBSession sharedSession] isLinked])
        [[DBSession sharedSession] linkFromController:self];
}

- (void)errorChoosingFile:(DBPDropBoxPickerViewController *)picker
{
    NSLog(@"Error choosing file");
}

- (void)dropBoxPickerController:(DBPDropBoxPickerViewController *)picker fileChoosedWithPath:(NSString *)dropBoxPath
{
    NSLog(@"File choosed with path %@",dropBoxPath);
    [[picker navigationController] dismissViewControllerAnimated:NO completion:^{
        
    }];
}

@end
