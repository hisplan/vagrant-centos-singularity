# vagrant-singularity

Vagrant project to spin up a virtual machine where you can try out Singularity.

## Prerequisites

- At least 1GB memory in addition to the memory for your host machine.
- Vagrant 1.9.1 or higher.
- VirtualBox 5.1.14 or higher.

## Spining Up Virtual Machine

1. Install VirtualBox if not already installed on your machine (https://www.virtualbox.org/wiki/Downloads).
1. Install Vagrant if not already instaleld on your machine (https://www.vagrantup.com/downloads.html).
1. Check out this project from git.
1. Run `vagrant up` from the directory where `Vagrantfile` and other files are placed. This will bring up a new virtual machine equipped with Singularity.

## Runnning Singularity

SSH into the virtual machine:

```bash
$ vagrant ssh
```

Run Singularity:

```bash
$ singularity
```

## Notes

- The VM will have Ubuntu Trusty (64bit).

## References


```bash
sudo singularity import analysis.img docker://ubuntu:latest
```