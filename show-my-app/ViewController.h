//
//  ViewController.h
//  show-my-app
//
//  Created by JFC idéMobi on 19/05/2019.
//  Copyright © 2019 idéMobi. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import <WebKit/WebKit.h>
#import "ShowMyApp.h"

@interface ViewController : NSViewController {
    ShowMyApp *ShowMyAppInstance;
}
-(IBAction)ShareServiceTest:(id)sSender;
@end

