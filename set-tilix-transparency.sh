#!/bin/bash

# Set an alias
# alias tt='bash /opt/jamesm0rr1s/Tilix-Setup/set-tilix-transparency.sh'

# Toggle between 0% and 25% transparency when no parameters are passed in
# tt

# Change to a specific transparency when one parameter is passed in. The parameter must be an integer between 0-100. Only one parameter is allowed
# tt 50

# Get the default profile
profile=$(gsettings get com.gexperts.Tilix.ProfilesList default)

# Remove the leading "'" and trailing "'"
profile=${profile:1:-1}

# Get the transparency
transparency=$(dconf read /com/gexperts/Tilix/profiles/$profile/background-transparency-percent)

# Get the number of arguments
argumentCount=$#

# Check if a transparency was not provided, or the first argument is not an integer, or if the first argument is greater than 0
if [ $argumentCount -ne 1 ] || ! [[ "$1" =~ ^[0-9]+$ ]] || [ $1 -gt 100 ]; then

	# Check if the transparency is 25
	if [ "$transparency" = "25" ]; then

		# Set the transparency to 0
		dconf write /com/gexperts/Tilix/profiles/$profile/background-transparency-percent 0

	# The transparency is not 25
	else

		# Set the transparency to 25
		dconf write /com/gexperts/Tilix/profiles/$profile/background-transparency-percent 25
	fi

# A transparency was provided
else

	# Set the transparency
	dconf write /com/gexperts/Tilix/profiles/$profile/background-transparency-percent $1
fi