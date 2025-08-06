# Centos Stream 9 container for E1039
This is an inital attempt to create a CS9 image for E1039.
It is based on the [e1039-docker](https://github.com/E1039-Collaboration/e1039-docker) and [fnal-wn-el8](https://github.com/mambelli/containers).
One main difference is the use of apptainer instead of docker. I made the switch mainly beacuse I counld not get the offical CS9 image working in docker and I had apptainer installed. 
As of April 18 2022, OSG does not support direct import of apptainer images to CVMFS.

## build
```
apptainer build --fakeroot cs9.sif cs9.def
```
The ```--fakeroot``` option is to allow unprivileged user to build an image. One can choose opt for ```sudo``` instead.
