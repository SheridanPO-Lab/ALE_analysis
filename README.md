# ALE_analysis


## *Calculating transfers to and from each branch on the species tree*
In examing gene family transfers it may be of interest to examine lateral gene transfer donors, as well as recipients. The calc_from_to_T.sh script manipulates results from the ALE output transfer frequency files (ending .uTs) to identify branches of species trees with high numbers of gene family donation, as well as receipt. 

## Sample data for testing workflows
To test that things are working as expected, it may be convenient to experiment with the files in Example100_uTs.tar.gz in this repository.

## Usage
Run script in directory containing the transfer frequency files (ending .uTs) from the ALE gene tree-species tree reconciliations.
```bash
sh calc_from_to_T.sh
```
## Output file: From_to_T.txt
Example output
```
Branch	From	To
100	1.26	2.66
101	2.41	3.46
102	6.94	10.29
103	6.68	9.72
104	1.5	6.56
```
