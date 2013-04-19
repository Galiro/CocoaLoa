#CocoaLoa#

CocoaLoa is an app that allows users to send messages at delayed times through email, text, social networks and even calling.

##How to Run##

1. First, download the source and run ```` bundle install ```` 
2. After the dependancies are installed, run ```` rake resque:scheduler ```` and ```` rake resque:worker ````
3. Finally, run ```` ruby app.rb ```` to get the app running. Head on over to ```` http://localhost:4567 ```` to see the app running.

##License##
For now, CocoaLoa is available under the GPL, but I plan on changing it to the MIT license soon.
