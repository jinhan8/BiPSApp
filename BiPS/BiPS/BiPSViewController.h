//
//  BiPSViewController.h
//  BiPS
//
//  Created by Han Jin on 2/27/14.
//  Copyright (c) 2014 RDV Labs LLC. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Photo.h"
#import <QuartzCore/QuartzCore.h>

@interface BiPSViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIButton *scanDevices;
@property (weak, nonatomic) IBOutlet UIButton *connectDevices;

@property (nonatomic)IBOutlet UISegmentedControl *verhiclePhoto;

@property (nonatomic) Photo *currentPhoto;

-(IBAction)vehicleSwitch:(id)sender;

@end
