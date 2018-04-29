// Hides labels
%hook SBIconLabelImageParameters

// Supposed to return string for the icon label
-(id)text {
  return nil;
}
%end

// Hides recently updated dots
%hook SBIconRecentlyUpdatedLabelAccessoryView
-(id)init {
  return nil;
}
%end
