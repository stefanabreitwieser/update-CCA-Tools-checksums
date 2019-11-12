#this script updates checksums for a CCA Tools-generated SIP
#before running script, cd into the directory which contains all the SIPs
#this will overwrite any existing checksums
#this will not update any other CCA Tools-generated metadata (like Brunnhilde results)
#this script assumes the only directory titled "metadata" in your SIP is the one created by CCA Tools

for f in $(find ~+ -type d -name "metadata"); 
do 
	echo "Generating new checksum for" $f; 
	cd $f ; 
	md5deep -rl ../objects >> checksum.md5 ; 
	echo "Checksum updated." ; 

done