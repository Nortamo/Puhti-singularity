To export your conda environment:

```
conda env export > my_env.yml
```

To create a conda environment from a `.yml` file:

```
conda env create --name <env_name> --force -f <env>.yaml
```

The environment can either be created in the building stage of the container:
```
%post
    /opt/conda/bin/conda env create --force --name <env_name> -f <environment>.yml
```
Or created by running the container with the overlay.



Creating a overlay for changing things in the container:
Change the `count=` to suite the size
```
dd if=/dev/zero of=my_overlay bs=1M count=500 
mkfs.ext3 my_overlay
```

The filesystem should be resizable??
(I have not tested this yet)
```
e2fsck -f my_overlay
resize2fs my_overlay 3000M
```
