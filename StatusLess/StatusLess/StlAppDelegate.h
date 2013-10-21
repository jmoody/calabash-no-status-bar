#import <UIKit/UIKit.h>

typedef void (^StlWindowEventHandlerBlock)(UIWindow *window, UIEvent *aEvent);

@interface StlWindow : UIWindow

@property (nonatomic, copy) StlWindowEventHandlerBlock eventHandler;

@end


@interface StlAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) StlWindow *window;

@end
