#if ! __has_feature(objc_arc)
#warning This file must be compiled with ARC. Use -fobjc-arc flag (or convert project to ARC).
#endif
#import "StlViewController.h"

@interface StlViewController ()

@end

@implementation StlViewController

#pragma mark - Memory Management

- (id) initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
  self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
  if (self) {
    self.wantsFullScreenLayout = YES;
  }
  return self;
}

- (void) didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
}


#pragma mark - View Layout

- (void) viewDidLoad {
  [super viewDidLoad];
}

- (void) loadView {
  CGRect frame = [[UIScreen mainScreen] applicationFrame];
  UIView *view = [[UIView alloc] initWithFrame:frame];
  view.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
  
  view.accessibilityIdentifier = @"status";
  
  view.backgroundColor = [UIColor brownColor];
  self.view = view;
}

- (void) viewWillLayoutSubviews {
  [super viewWillLayoutSubviews];
}

- (void) viewDidLayoutSubviews {
  [super viewDidLayoutSubviews];
}

#pragma mark - Orientation and Rotation


#pragma mark - iOS 5

- (BOOL) shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation) __unused aInterfaceOrientation {
  return YES;
}

#pragma mark - iOS 6


- (NSUInteger) supportedInterfaceOrientations {
  return UIInterfaceOrientationMaskAll;
}

- (BOOL) shouldAutorotate {
  return YES;
}


#pragma mark - View Lifecycle

- (void)viewWillAppear:(BOOL)animated {
  [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated {
  [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated {
  [super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated {
  [super viewDidDisappear:animated];
}



@end
