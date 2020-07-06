#!/bin/bash
cd /tmp/2.18.0_rc2/dbgen
./dbgen -v -s $SCALE_FACTOR
# Remove the final '|' delimiter from every line otherwise data cannot be
# imported in Postgres
sed -i 's/|$//' *.tbl
mkdir /tmp/tpchdata
mv *.tbl /tmp/tpchdata/
