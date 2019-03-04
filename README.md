# Build 47
Super simple command line utility to upload builds to App47.
 
Description
-----------
build_47 is a simple command line tool that allows you to easily post builds
(iOS .ipa's or Android .apk's) to [App47][app47] for distribution. 

Note, this utility only posts builds; nevertheless, the App47 API supports a slew
of other options, such as creating users, devices, groups, etc. Please see our [wiki][app47_wiki] 
for more details.

Internally, this Gem uses Ruby's nifty [REST Client][rest_client]. 

Installation
------------
    gem install build_47

Usage
------------

After you install the gem, you'll have a nifty command line utility dubbed `build_47` in your path. 

Minimal arguments required: 

	build_47 -t your_account_token -a app_id  -f path_to_build 

You can find your account token in your App47 account -- go to the **Profile** link and then click the **API** option to find it.

Optional arguments are

| Option  | Allowed values | Default Value | Description|
|---------|----------------|---------------|------------|
| -e | Production, Test | Production | Environment for the build|
| -r | Any string | Empty string | Release notes in qouted string|
| -n | true or false  | true |Notify users when the build is made active |
| -m | None | false | Make the build active after processing, if valid|
| -i | None | false | Reset the build identifier if it has changed|
| -u | None | false | Reuse the version number if it is already present in the environment|


Other Resources
------------

For documentation regarding the App47 API, please see our [wiki][app47_wiki_builds]. 
Also, check out our [Github account][app47_github] for various other projects and our [API Examples][api_examples] for some examples of 
using our API (in Ruby).

[app47]: https://app47.com
[app47_wiki_builds]: https://support.app47.com/hc/en-us/articles/221905848-Uploading-Builds
[app47_wiki]: http://app47.support.com/hc
[rest_client]: https://github.com/archiloque/rest-client
[api_examples]: https://github.com/App47/api-examples
[app47_github]:https://github.com/App47/