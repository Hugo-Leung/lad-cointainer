LAD container
=============
This is a proof of concept for containerizing the LAD analysis framework. 

Prerequisite
------------
I am using [apptainer](https://apptainer.org). So it have to be installed first 

Building the image
---------
```
apptainer build lad-al9.sif al9.def
```
Or just download the prebuild image
```
wget https://github.com/Hugo-Leung/lad-container/releases/latest/download/lad-al9.sif 
```

After building the lad-al9 container, we can add GEANT4 to it
```
apptainer build lad-al9-GEANT4.sif geant4.def
```
during the build command

Using the container
--------
To get a shell
```
apptainer shell al9.sif
```
on ifarm, you might also want to bind `/w` and `/cache` so we can access those directories for analysis, so you might want to add the following flags
```
apptainer shell -B /w,/cache lad-al9.sif
```

To excute a command in the container
```
apptainer exec -B /w,/cache lad-al9.sif <command>
```



