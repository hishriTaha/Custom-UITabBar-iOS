//
//  CustomTabViewController.m

//
//  Created by TAHA on 11/26/16.
//  Copyright © 2016 taha. All rights reserved.
//

#import "CustomTabViewController.h"

@interface CustomTabViewController ()

@end

@implementation CustomTabViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    // Do any additional setup after loading the view.
    
    // Override point for customization after application launch.
    CustomTabViewController *tabBarController = (CustomTabViewController *)self;
    UITabBar *tabBar = tabBarController.tabBar;
    UITabBarItem *tabBarItem1 = [tabBar.items objectAtIndex:0];
    UITabBarItem *tabBarItem2 = [tabBar.items objectAtIndex:1];
    UITabBarItem *tabBarItem3 = [tabBar.items objectAtIndex:2];
    UITabBarItem *tabBarItem4 = [tabBar.items objectAtIndex:3];
    UITabBarItem *tabBarItem5 = [tabBar.items objectAtIndex:4];
    
    CGRect frm = tabBar.frame;
    frm.size.width = 100.20;
     //[tabBarController.tabBar.subviews objectAtIndex:3].frame = CGRectMake(0.0, 0.0, 200, frm.size.height) ;
    
    NSLog ( @"tab width: %f", [tabBar.subviews objectAtIndex:0].frame.size.width );
    
    
    
    //because the whole tab bar item will be replaced by an image, I dont need title
    tabBarItem1.title = @"hello there";
    
    NSLog ( @"tab width: %f", [tabBar.subviews objectAtIndex:1].frame.size.width );
    
    // this is the custom tab, also the base position in relation to the other tabs. Should leave it as it is now.
    [tabBarController.tabBar.subviews objectAtIndex:4].bounds = CGRectOffset([tabBarController.tabBar.subviews objectAtIndex:4].frame, -20.0f, -10.0f);
    
    // Tabs are NOT ordered, order may vary depending on device's screen size. As for the iPhone screen the order is reversed ( first is last )
    [tabBarController.tabBar.subviews objectAtIndex:3].bounds = CGRectOffset([tabBarController.tabBar.subviews objectAtIndex:4].frame, -10.0f, 0.0f);

    [tabBarController.tabBar.subviews objectAtIndex:2].bounds = CGRectOffset([tabBarController.tabBar.subviews objectAtIndex:4].frame, -20.0f, 0.0f);

    [tabBarController.tabBar.subviews objectAtIndex:1].bounds = CGRectOffset([tabBarController.tabBar.subviews objectAtIndex:4].frame, -20.0f, 0.0f);
    
    [tabBarController.tabBar.subviews objectAtIndex:0].bounds = CGRectOffset([tabBarController.tabBar.subviews objectAtIndex:4].frame, -30.0f, 0.0f);
    
    // if system predefined icons are set, changing the title at this point won't have any effect.
    tabBarItem2.title = @"";
    tabBarItem3.title = @"taha";            // test string, not used for system icons.
    tabBarItem4.title = @"";
    tabBarItem5.title = @"";
    return;     // terminate view loading method by returning void.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
