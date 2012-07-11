#Build 47
###Super simple command line utility to upload builds to App47.
 
Description
-----------
build_47 is a simple command line tool that allows you to easily post builds
(iOS .ipa's or Android .apk's) to [App47][app47] for distribution. 

Note, this utility only posts builds; nevertheless, the App47 API supports a slew
of other options, such as creating users, devices, groups, etc. please see our [wiki][app47_wiki] 
for more details.


Installation
------------
    gem install build_47

Usage
------------

After you install the gem, you'll have a nifty command line utility dubbed `build_47` in your path. 

Minimal arguments required: 

	build_47 -t some_token -a app_id  -f path_to_build 

Optional arguments are `-e environment` (i.e. Production or Test), `-p platform` (i.e. iOS or Android) and `-r release_notes`

For documentation regarding the App47 API, please see our [wiki][app47_wiki_builds].

[app47]: http://app47.com
[app47_wiki_builds]: http://app47.com/wiki/doku.php?id=account_mgmt_api:builds
[app47_wiki]: http://app47.com/wiki

