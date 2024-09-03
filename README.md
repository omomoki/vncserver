# VNC Server tools!

## Dependencies

First, you need to make sure git is installed:

```shell
yum install git -y
```

## How to use

You can clone this repository to have access to its scripts:

```shell
git clone https://github.com/omomoki/vncserver.git
```

## Port-forwarding

You may need to do port-forwarding to be able to log in after setup. This command will handle port-forwarding. enter the IP address of the cloud compute instance.

```shell
ssh -L  5901:localhost:5901 opc@ip.address.of.cloud.compute
```

## Log in to TigerVNC

You can use this address to log in:

`localhost:5901`
