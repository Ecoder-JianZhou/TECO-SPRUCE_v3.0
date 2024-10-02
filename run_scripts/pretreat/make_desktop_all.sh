export LD_LIBRARY_PATH=/home/jz964/miniconda3/envs/spruce-da/lib/:$LD_LIBRARY_PATH 

gfortran  -g -fbacktrace -Wall -fcheck=all -cpp -DUSE_NETCDF\
    src/teco/datatypes.f90 \
    src/teco/io_mod.f90 \
    src/teco/soil.f90 \
    src/teco/vegetation.f90 \
    src/teco/transfer.f90 \
    src/tools/mcmc_mod.f90 \
    src/teco/driver.f90 \
    src/tools/mcmc_outputs.f90  \
    src/tools/mcmc_2011-2013/mcmc_P04.f90   \
    src/tools/sensitivity.f90   \
    src/tools/spinup.f90  \
    src/main.f90 \
    -o run_teco_desktop_P04 \
    -I/home/jz964/miniconda3/envs/spruce-da/include -L/home/jz964/miniconda3/envs/spruce-da/lib -lnetcdff -lnetcdf
if find "src" -name "*.mod" -print -quit | grep -q '.*'; then
    rm src/*.mod
fi

if find "src/teco" -name "*.mod" -print -quit | grep -q '.*'; then
    rm src/teco/*.mod
fi

if find "src/tools" -name "*.mod" -print -quit | grep -q '.*'; then
    rm src/tools/*.mod
fi

if find "." -name "*.mod" -print -quit | grep -q '.*'; then
    rm *.mod
fi



gfortran  -g -fbacktrace -Wall -fcheck=all -cpp -DUSE_NETCDF\
    src/teco/datatypes.f90 \
    src/teco/io_mod.f90 \
    src/teco/soil.f90 \
    src/teco/vegetation.f90 \
    src/teco/transfer.f90 \
    src/tools/mcmc_mod.f90 \
    src/teco/driver.f90 \
    src/tools/mcmc_outputs.f90  \
    src/tools/mcmc_2011-2013/mcmc_P06.f90   \
    src/tools/sensitivity.f90   \
    src/tools/spinup.f90  \
    src/main.f90 \
    -o run_teco_desktop_P06 \
    -I/home/jz964/miniconda3/envs/spruce-da/include -L/home/jz964/miniconda3/envs/spruce-da/lib -lnetcdff -lnetcdf

if find "src" -name "*.mod" -print -quit | grep -q '.*'; then
    rm src/*.mod
fi

if find "src/teco" -name "*.mod" -print -quit | grep -q '.*'; then
    rm src/teco/*.mod
fi

if find "src/tools" -name "*.mod" -print -quit | grep -q '.*'; then
    rm src/tools/*.mod
fi

if find "." -name "*.mod" -print -quit | grep -q '.*'; then
    rm *.mod
fi



gfortran  -g -fbacktrace -Wall -fcheck=all -cpp -DUSE_NETCDF\
    src/teco/datatypes.f90 \
    src/teco/io_mod.f90 \
    src/teco/soil.f90 \
    src/teco/vegetation.f90 \
    src/teco/transfer.f90 \
    src/tools/mcmc_mod.f90 \
    src/teco/driver.f90 \
    src/tools/mcmc_outputs.f90  \
    src/tools/mcmc_2011-2013/mcmc_P07.f90   \
    src/tools/sensitivity.f90   \
    src/tools/spinup.f90  \
    src/main.f90 \
    -o run_teco_desktop_P07 \
    -I/home/jz964/miniconda3/envs/spruce-da/include -L/home/jz964/miniconda3/envs/spruce-da/lib -lnetcdff -lnetcdf

if find "src" -name "*.mod" -print -quit | grep -q '.*'; then
    rm src/*.mod
fi

if find "src/teco" -name "*.mod" -print -quit | grep -q '.*'; then
    rm src/teco/*.mod
fi

if find "src/tools" -name "*.mod" -print -quit | grep -q '.*'; then
    rm src/tools/*.mod
fi

if find "." -name "*.mod" -print -quit | grep -q '.*'; then
    rm *.mod
fi

gfortran  -g -fbacktrace -Wall -fcheck=all -cpp -DUSE_NETCDF\
    src/teco/datatypes.f90 \
    src/teco/io_mod.f90 \
    src/teco/soil.f90 \
    src/teco/vegetation.f90 \
    src/teco/transfer.f90 \
    src/tools/mcmc_mod.f90 \
    src/teco/driver.f90 \
    src/tools/mcmc_outputs.f90  \
    src/tools/mcmc_2011-2013/mcmc_P08.f90   \
    src/tools/sensitivity.f90   \
    src/tools/spinup.f90  \
    src/main.f90 \
    -o run_teco_desktop_P08 \
    -I/home/jz964/miniconda3/envs/spruce-da/include -L/home/jz964/miniconda3/envs/spruce-da/lib -lnetcdff -lnetcdf

if find "src" -name "*.mod" -print -quit | grep -q '.*'; then
    rm src/*.mod
fi

if find "src/teco" -name "*.mod" -print -quit | grep -q '.*'; then
    rm src/teco/*.mod
fi

if find "src/tools" -name "*.mod" -print -quit | grep -q '.*'; then
    rm src/tools/*.mod
fi

if find "." -name "*.mod" -print -quit | grep -q '.*'; then
    rm *.mod
fi



gfortran  -g -fbacktrace -Wall -fcheck=all -cpp -DUSE_NETCDF\
    src/teco/datatypes.f90 \
    src/teco/io_mod.f90 \
    src/teco/soil.f90 \
    src/teco/vegetation.f90 \
    src/teco/transfer.f90 \
    src/tools/mcmc_mod.f90 \
    src/teco/driver.f90 \
    src/tools/mcmc_outputs.f90  \
    src/tools/mcmc_2011-2013/mcmc_P10.f90   \
    src/tools/sensitivity.f90   \
    src/tools/spinup.f90  \
    src/main.f90 \
    -o run_teco_desktop_P10 \
    -I/home/jz964/miniconda3/envs/spruce-da/include -L/home/jz964/miniconda3/envs/spruce-da/lib -lnetcdff -lnetcdf

if find "src" -name "*.mod" -print -quit | grep -q '.*'; then
    rm src/*.mod
fi

if find "src/teco" -name "*.mod" -print -quit | grep -q '.*'; then
    rm src/teco/*.mod
fi

if find "src/tools" -name "*.mod" -print -quit | grep -q '.*'; then
    rm src/tools/*.mod
fi

if find "." -name "*.mod" -print -quit | grep -q '.*'; then
    rm *.mod
fi



gfortran  -g -fbacktrace -Wall -fcheck=all -cpp -DUSE_NETCDF\
    src/teco/datatypes.f90 \
    src/teco/io_mod.f90 \
    src/teco/soil.f90 \
    src/teco/vegetation.f90 \
    src/teco/transfer.f90 \
    src/tools/mcmc_mod.f90 \
    src/teco/driver.f90 \
    src/tools/mcmc_outputs.f90  \
    src/tools/mcmc_2011-2013/mcmc_P11.f90   \
    src/tools/sensitivity.f90   \
    src/tools/spinup.f90  \
    src/main.f90 \
    -o run_teco_desktop_P11 \
    -I/home/jz964/miniconda3/envs/spruce-da/include -L/home/jz964/miniconda3/envs/spruce-da/lib -lnetcdff -lnetcdf

if find "src" -name "*.mod" -print -quit | grep -q '.*'; then
    rm src/*.mod
fi

if find "src/teco" -name "*.mod" -print -quit | grep -q '.*'; then
    rm src/teco/*.mod
fi

if find "src/tools" -name "*.mod" -print -quit | grep -q '.*'; then
    rm src/tools/*.mod
fi

if find "." -name "*.mod" -print -quit | grep -q '.*'; then
    rm *.mod
fi



gfortran  -g -fbacktrace -Wall -fcheck=all -cpp -DUSE_NETCDF\
    src/teco/datatypes.f90 \
    src/teco/io_mod.f90 \
    src/teco/soil.f90 \
    src/teco/vegetation.f90 \
    src/teco/transfer.f90 \
    src/tools/mcmc_mod.f90 \
    src/teco/driver.f90 \
    src/tools/mcmc_outputs.f90  \
    src/tools/mcmc_2011-2013/mcmc_P13.f90   \
    src/tools/sensitivity.f90   \
    src/tools/spinup.f90  \
    src/main.f90 \
    -o run_teco_desktop_P13 \
    -I/home/jz964/miniconda3/envs/spruce-da/include -L/home/jz964/miniconda3/envs/spruce-da/lib -lnetcdff -lnetcdf

if find "src" -name "*.mod" -print -quit | grep -q '.*'; then
    rm src/*.mod
fi

if find "src/teco" -name "*.mod" -print -quit | grep -q '.*'; then
    rm src/teco/*.mod
fi

if find "src/tools" -name "*.mod" -print -quit | grep -q '.*'; then
    rm src/tools/*.mod
fi

if find "." -name "*.mod" -print -quit | grep -q '.*'; then
    rm *.mod
fi



gfortran  -g -fbacktrace -Wall -fcheck=all -cpp -DUSE_NETCDF\
    src/teco/datatypes.f90 \
    src/teco/io_mod.f90 \
    src/teco/soil.f90 \
    src/teco/vegetation.f90 \
    src/teco/transfer.f90 \
    src/tools/mcmc_mod.f90 \
    src/teco/driver.f90 \
    src/tools/mcmc_outputs.f90  \
    src/tools/mcmc_2011-2013/mcmc_P16.f90   \
    src/tools/sensitivity.f90   \
    src/tools/spinup.f90  \
    src/main.f90 \
    -o run_teco_desktop_P16 \
    -I/home/jz964/miniconda3/envs/spruce-da/include -L/home/jz964/miniconda3/envs/spruce-da/lib -lnetcdff -lnetcdf

if find "src" -name "*.mod" -print -quit | grep -q '.*'; then
    rm src/*.mod
fi

if find "src/teco" -name "*.mod" -print -quit | grep -q '.*'; then
    rm src/teco/*.mod
fi

if find "src/tools" -name "*.mod" -print -quit | grep -q '.*'; then
    rm src/tools/*.mod
fi

if find "." -name "*.mod" -print -quit | grep -q '.*'; then
    rm *.mod
fi



gfortran  -g -fbacktrace -Wall -fcheck=all -cpp -DUSE_NETCDF\
    src/teco/datatypes.f90 \
    src/teco/io_mod.f90 \
    src/teco/soil.f90 \
    src/teco/vegetation.f90 \
    src/teco/transfer.f90 \
    src/tools/mcmc_mod.f90 \
    src/teco/driver.f90 \
    src/tools/mcmc_outputs.f90  \
    src/tools/mcmc_2011-2013/mcmc_P17.f90   \
    src/tools/sensitivity.f90   \
    src/tools/spinup.f90  \
    src/main.f90 \
    -o run_teco_desktop_P17 \
    -I/home/jz964/miniconda3/envs/spruce-da/include -L/home/jz964/miniconda3/envs/spruce-da/lib -lnetcdff -lnetcdf

if find "src" -name "*.mod" -print -quit | grep -q '.*'; then
    rm src/*.mod
fi

if find "src/teco" -name "*.mod" -print -quit | grep -q '.*'; then
    rm src/teco/*.mod
fi

if find "src/tools" -name "*.mod" -print -quit | grep -q '.*'; then
    rm src/tools/*.mod
fi

if find "." -name "*.mod" -print -quit | grep -q '.*'; then
    rm *.mod
fi




gfortran  -g -fbacktrace -Wall -fcheck=all -cpp -DUSE_NETCDF\
    src/teco/datatypes.f90 \
    src/teco/io_mod.f90 \
    src/teco/soil.f90 \
    src/teco/vegetation.f90 \
    src/teco/transfer.f90 \
    src/tools/mcmc_mod.f90 \
    src/teco/driver.f90 \
    src/tools/mcmc_outputs.f90  \
    src/tools/mcmc_2011-2013/mcmc_P19.f90   \
    src/tools/sensitivity.f90   \
    src/tools/spinup.f90  \
    src/main.f90 \
    -o run_teco_desktop_P19 \
    -I/home/jz964/miniconda3/envs/spruce-da/include -L/home/jz964/miniconda3/envs/spruce-da/lib -lnetcdff -lnetcdf

if find "src" -name "*.mod" -print -quit | grep -q '.*'; then
    rm src/*.mod
fi

if find "src/teco" -name "*.mod" -print -quit | grep -q '.*'; then
    rm src/teco/*.mod
fi

if find "src/tools" -name "*.mod" -print -quit | grep -q '.*'; then
    rm src/tools/*.mod
fi

if find "." -name "*.mod" -print -quit | grep -q '.*'; then
    rm *.mod
fi



gfortran  -g -fbacktrace -Wall -fcheck=all -cpp -DUSE_NETCDF\
    src/teco/datatypes.f90 \
    src/teco/io_mod.f90 \
    src/teco/soil.f90 \
    src/teco/vegetation.f90 \
    src/teco/transfer.f90 \
    src/tools/mcmc_mod.f90 \
    src/teco/driver.f90 \
    src/tools/mcmc_outputs.f90  \
    src/tools/mcmc_2011-2013/mcmc_P20.f90   \
    src/tools/sensitivity.f90   \
    src/tools/spinup.f90  \
    src/main.f90 \
    -o run_teco_desktop_P20 \
    -I/home/jz964/miniconda3/envs/spruce-da/include -L/home/jz964/miniconda3/envs/spruce-da/lib -lnetcdff -lnetcdf

if find "src" -name "*.mod" -print -quit | grep -q '.*'; then
    rm src/*.mod
fi

if find "src/teco" -name "*.mod" -print -quit | grep -q '.*'; then
    rm src/teco/*.mod
fi

if find "src/tools" -name "*.mod" -print -quit | grep -q '.*'; then
    rm src/tools/*.mod
fi

if find "." -name "*.mod" -print -quit | grep -q '.*'; then
    rm *.mod
fi