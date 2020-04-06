# TCMD-docker
TRIGGERcmd docker image

1. If you haven't already, create an account at [TRIGGERcmd](http://triggercmd.com) and login
2. Ensure you either have no computers registered on the account, or have a paid account for more than one computer
3. Navigate to the ["Instructions" page](https://www.triggercmd.com/user/computer/create) and copy the agent token
4. Run using command below (with your token and the path where you would like config to be stored)

Example docker run usage

`docker run -it -v /etc/triggercmd:/root/.TRIGGERcmdData -e TOKEN=<YOUR TOKEN FROM TRIGGERCMD>`

