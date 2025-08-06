LAD container
=============
This is a proof of concept for containerizing the LAD analysis framework. 

Prerequisite
------------
I am using [apptainer](https://apptainer.org). So it have to be installed first 

Building
---------
```
apptainer build al9.sif al9.def
```

Using the container
--------
To get a shell
```
apptainer shell al9.sif
```
on ifarm, you might also want to bind `/w` and `/cache` so we can access those directories for analysis, so you might want to add the following flags
```
apptainer shell -B /w,/cache al9.sif
```

To excute a command in the container
```
apptainer exec -B /w,/cache al9.sif <command>
```
