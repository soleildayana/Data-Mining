#bash

echo "Extrayendo años de descubrimiento en orden ascendente" 

TAP="https://exoplanetarchive.ipac.caltech.edu/TAP/sync?format=csv&query="
ADQL="SELECT disc_year, COUNT (pl_name) FROM ps GROUP BY disc_year ORDER BY disc_year ASC"

ADQL_URL=$(echo $ADQL | sed 's/ /+/g')

wget -q -O years.csv "$TAP$ADQL_URL"

echo "Descarga de datos completada"
