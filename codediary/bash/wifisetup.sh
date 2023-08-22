# get wifi on/off status on mac
networksetup -getairportpower en0 | sed 's/.*: //' | tr 'A-Z' 'a-z'


# path to airport binary
ln -s /System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport /usr/local/bin/airport


# Check available wifi networks 
airport -s
