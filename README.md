# VNC Server tools!

## Dependencies

First, you need to make sure git is installed:

```shell
yum install git -y
```

## How to use

You can clone this repository to have access to its script:

```shell
git clone https://github.com/omomoki/vncserver.git
```

then you would `cd` into the cloned directory and run the bash script inside.

## One-liner

You can also just copy this big one-liner command, which combines all the steps above and runs the bash script automatically. Just copy, paste, walk away and come back in 5 minutes and the vncserver should be ready.

```shell
yum install git -y && git clone https://github.com/omomoki/vncserver.git && cd vncserver && bash setup.sh
```

## Port-forwarding

You may need to do port-forwarding to be able to log in after setup. This command will handle port-forwarding. enter the IP address of the cloud compute instance.

```shell
ssh -L  5901:localhost:5901 opc@ip.address.of.cloud.compute
```

## Log in to TigerVNC

You can use this address to log in:

`localhost:5901`

The port number should change depend on the display number. If display 2 is working, the port sholud be 5902.
