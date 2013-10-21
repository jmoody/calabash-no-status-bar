#if ! __has_feature(objc_arc)
#warning This file must be compiled with ARC. Use -fobjc-arc flag (or convert project to ARC).
#endif
#import "StlAppDelegate.h"
#import "StlViewController.h"


@implementation StlWindow

@synthesize eventHandler;

- (void) sendEvent:(UIEvent *)event {
  if (self.eventHandler != nil) {
    self.eventHandler(self, event);
  }
  [super sendEvent:event];
}

@end

@implementation StlAppDelegate

@synthesize window;

- (BOOL)application:(UIApplication *) __unused application didFinishLaunchingWithOptions:(NSDictionary *) __unused launchOptions {
  self.window = [[StlWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
  
  
  self.window.eventHandler = ^(UIWindow *aWindow, UIEvent *aEvent) {
    NSSet *touches = [aEvent touchesForWindow:aWindow];
    
    [touches enumerateObjectsUsingBlock:^(UITouch *touch, BOOL __unused *stop) {
      CGPoint point = [touch locationInView:aWindow];
      NSLog(@"location of touch in window: %@", NSStringFromCGPoint(point));
    }];
  };
  
  self.window.rootViewController = [[StlViewController alloc] initWithNibName:nil bundle:nil];
  [self.window makeKeyAndVisible];
  return YES;
}

- (void)applicationWillResignActive:(UIApplication *) __unused application {
  // Sent when the application is about to move from active to inactive state.
  // This can occur for certain types of temporary interruptions (such as an
  // incoming phone call or SMS message) or when the user quits the application
  // and it begins the transition to the background state.  Use this method to
  // pause ongoing tasks, disable timers, and throttle down OpenGL ES frame
  // rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *) __unused application {
  // Use this method to release shared resources, save user data, invalidate
  // timers, and store enough application state information to restore your
  // application to its current state in case it is terminated later.  If your
  // application supports background execution, this method is called instead
  // of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *) __unused application {
  // Called as part of the transition from the background to the inactive state;
  // here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *) __unused application {
  // Restart any tasks that were paused (or not yet started) while the
  // application was inactive. If the application was previously in the
  // background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *) __unused application {
  // Called when the application is about to terminate. Save data if
  // appropriate. See also applicationDidEnterBackground:.
}


@end
