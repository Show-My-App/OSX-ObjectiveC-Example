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

    // Do any additional setup after loading the view.
}


- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}

-(ShowMyApp*) FormAnalyze
{
    ShowMyApp *tShowMyAppInstance = [[ShowMyApp alloc] init];
    [tShowMyAppInstance setAppName:[appNameTextField stringValue]];
    [tShowMyAppInstance setDesign:[designSegmentedControl selectedSegment]];
    [tShowMyAppInstance setDesignColor:[designColor color]];
    [tShowMyAppInstance setDesignColorBackground:[designColorBackground color]];
    [tShowMyAppInstance setIOS_iPhone_BundleID:[iPhoneTextField stringValue]];
    [tShowMyAppInstance setIOS_iPad_BundleID:[iPadTextField stringValue]];
    [tShowMyAppInstance setMacOS_BundleID:[macOSTextField stringValue]];
    [tShowMyAppInstance setTvOS_BundleID:[tvOSTextField stringValue]];
    [tShowMyAppInstance setAndroid_BundleID:[androidTextField stringValue]];
    [tShowMyAppInstance setAndroid_Tablet_BundleID:[androidTabletTextField stringValue]];
    [tShowMyAppInstance setWindows_BundleID:[windowsTextField stringValue]];
    [tShowMyAppInstance setWindows_Phone_BundleID:[windowsPhoneTextField stringValue]];
    [tShowMyAppInstance setSteam_BundleID:[windowsPhoneTextField stringValue]];
    //    [tShowMyAppInstance setTiny:[tinySwith ]];
    return tShowMyAppInstance;
}

-(IBAction)Preview:(id)sSender {
    
    ShowMyApp *tShowMyApp = [self FormAnalyze];
    ShowMyAppInstance = tShowMyApp;
    [ShowMyAppInstance InsertFullURL:textURL];
    [ShowMyAppInstance InsertTinyURL:textTinyURL];
    [ShowMyAppInstance InsertFullQRCode:imageQRCode];
    [ShowMyAppInstance InsertTinyQRCode:imageTinyQRCode];
    [ShowMyAppInstance GetFullURL:^(NSURL * _Nonnull sURL) {
        [self->webView loadRequest:[NSURLRequest requestWithURL:sURL]];
    }];
}

-(IBAction)ShareInWebBrowser:(id)sSender {
    //NSLog(@" %s line %d",__FUNCTION__, __LINE__);
    if (ShowMyAppInstance!=NULL)
    {
        [ShowMyAppInstance ShareInWebBrowser];
    }
}

-(IBAction)ShareFull:(id)sSender {
    //NSLog(@" %s line %d",__FUNCTION__, __LINE__);
    if (ShowMyAppInstance!=NULL)
    {
        [ShowMyAppInstance ShareFull:sSender Message:@"Try this App!"];
    }
}

-(IBAction)ShareTiny:(id)sSender {
    //NSLog(@" %s line %d",__FUNCTION__, __LINE__);
    if (ShowMyAppInstance!=NULL)
    {
        [ShowMyAppInstance ShareTiny:sSender Message:@"Try this App!"];
    }
}

-(IBAction)ShareFullQRCode:(id)sSender {
    //NSLog(@" %s line %d",__FUNCTION__, __LINE__);
    if (ShowMyAppInstance!=NULL)
    {
        [ShowMyAppInstance ShareFullQRCode:sSender];
    }
}

-(IBAction)ShareTinyQRCode:(id)sSender {
    //NSLog(@" %s line %d",__FUNCTION__, __LINE__);
    if (ShowMyAppInstance!=NULL)
    {
        [ShowMyAppInstance ShareTinyQRCode:sSender];
    }
}

-(IBAction)ShareServiceTest:(id)sSender {
    NSLog(@" %s line %d",__FUNCTION__, __LINE__);
    [[self FormAnalyze] Show];
}

@end
