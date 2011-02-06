
%hook SBDeviceLockView

-(void)notifyDelegateThatEmergencyCallButtonWasPressed {
	NSMutableDictionary *plist = [[NSMutableDictionary alloc] initWithContentsOfFile:@"/var/mobile/Library/Preferences/com.w00tylab.remove.plist"];

	static BOOL value = YES;
	value = [[plist objectForKey:@"enabled"]boolValue];	

	if (!value) {
	%orig; 
	return;
	} else if (value) {
	UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Disable" message:@"Emergency Button has been disabled by owner" delegate:nil cancelButtonTitle:@"ah" otherButtonTitles:nil];
	[alert show];
	[alert release]; }
	[plist release];
}

%end
