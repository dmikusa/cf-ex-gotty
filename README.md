## gotty on CF

Run [gotty](https://github.com/yudai/gotty) on CF.

### Instructions

1. Clone this repo.
2. Run `cf push`
3. Acces from a browser `https://app-name.cfapps.io:4443` [1].

This will start `gotty` and configure it to start a bash shell.  Access will be protected by basic authentication, with a default user of "user" and password of "cfrocks".  When you connect via the browser, you'll have a bash shell running inside the application container on CF.

What if you don't want to run bash?  That's OK.  You can adjust the command that's run by `gotty` by editing the `manifest.yml` file in this repo.  It's configured for bash, but you can run other things.  See the [docs for gotty](https://github.com/yudai/gotty#usage) for more details on it's options.

[1] - Port 4443 is used here because I was running on PWS, which requires port 4443 for WebSockets.  If you're running on your own CF installation and don't need a special port for WebSockets then you can probably get away with using `https://app-name.your-domain.com`.
