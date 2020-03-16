# Genetic Codes
> This repository contains ready-to-use files of the **genetic codes** downloaded from the **National Center for Biotechnology Information** (NCBI). 


# How to use them

The genetic code tables are in the `maps` directory. The name of each file corresponds to the translation table code used by NCBI. The `list.txt` file maps these codes to their corresponding descriptions (e.g. `1` is Standard, `2` is Vertebrate Mitochondrial, and so on).

# Materials and Methods

## Sources

[This NCBI page](https://www.ncbi.nlm.nih.gov/Taxonomy/Utils/wprintgc.cgi?chapter=tgencodes#SG5) contains a compilation of the different genetic codes made by Andrzej (Anjay) Elzanowski and Jim Ostell at NCBI. I copy-pasted each genetic code table into a file at `sources`, naming them with the NCBI translation table code. The names of the translation codes are available at `list.txt`. Moreover, the HTML code of the page is available at `sources/ncbi.html`. 

## From tables to maps

Then, I ran the following lines to convert the tables into maps:

```bash
mkdir -p maps
for file in $(ls sources | grep -v "html"); do 
	./table-to-map.sh "sources/$file" > "maps/$file"
done
```