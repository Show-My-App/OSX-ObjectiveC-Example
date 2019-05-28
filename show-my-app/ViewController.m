//
//  ViewController.m
//  show-my-app
//
//  Created by JFC idéMobi on 19/05/2019.
//  Copyright © 2019 idéMobi. All rights reserved.
//

#import "ViewController.h"
#import "ShowMyAppWindowController.h"
#import <Social/Social.h>

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    ShowMyAppInstance = [[ShowMyApp alloc] init];
    [ShowMyAppInstance setReferencedUser:true];
    [ShowMyAppInstance setReccordID:@"test1"];
}

- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}

-(IBAction)ShareServiceTest:(id)sSender {
    NSLog(@" %s line %d",__FUNCTION__, __LINE__);
    [ShowMyAppInstance Show];
}

@end
