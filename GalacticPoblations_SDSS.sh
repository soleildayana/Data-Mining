#bash


echo "Importemos los datos del SDSS"

ADQL="SELECT TOP 20000 s.class,s.z,p.u,p.g FROM SpecObj AS s INNER JOIN PhotoObj AS p ON s.bestObjID=p.objID WHERE s.class IN ('STAR','GALAXY') AND p.u BETWEEN 15 AND 18"
TAP="http://skyserver.sdss.org/dr18/SkyServerWS/SearchTools/SqlSearch?format=csv&cmd="

URL_ADQL=$(echo $ADQL | sed 's/ /+/g')

wget -q -O GalPob_SDSS.csv "$TAP$ADQL"

echo "Datos descargados en GalPob_SDSS.csv"

