#import <Preferences/Preferences.h>

@interface removeListController: PSListController {
}
- (void) openLink:(id)sender;
- (void) donate:(id)sender;
@end

@implementation removeListController
- (id)specifiers {
	if(_specifiers == nil) {
		_specifiers = [[self loadSpecifiersFromPlistName:@"remove" target:self] retain];
	}
	return _specifiers;
}

- (void) openLink:(id)sender {
	[[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://itunes.apple.com/us/artist/w00ty-lab/id399642346"]];
}

- (void) donate:(id)sender {
	[[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=U7QU7MNSVTE8E"]];
}

@end

// vim:ft=objc
