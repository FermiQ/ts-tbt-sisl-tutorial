#/bin/bash

# This script uses the sgeom command to extract the
# bond-currents originating from all electrodes.
# This is extracting the bond-currents at E = 0.1 eV
for elec in X-1 X-2 Y-1 Y-2
do
    echo Creating vector-currents for elec-$elec
    sgeom siesta.TBT.nc \
	  --vector vector_current elec-$elec 0.1 \
	  --out elec-${elec}_0.1.xsf
done
