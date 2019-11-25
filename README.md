# CausalExplorer_1.5

===============================================================================

0. full manual under Documentation folder

===============================================================================

Version 1.5 (November 2019)

1. Rebuild all P-code files (Matlab R2017b)

===============================================================================

Version 1.4 (June 2005)

1. Distributive also includes a platform independent version of Causal Explorer for Matlab R14
2. User's manual
3. New algorithms: MMPC, PMMPC, MMMB, HITON_PC, and HITON_MB
4. Improved implementations of TPDA and MMHC
5. More algorithms execution examples are included in the distributive
6. Discretization utility

===============================================================================

Version 1.3 (October 2004):

1. Added MMHC Algorithm
2. Improved implementation of SCA algorithm

===============================================================================

Version 1.2 (May-June 2003):

1. Added BN Tiling Tool

===============================================================================

Version 1.1 (April 2003):

1. Sparse Candidate algorithm added. 
2. When the conditioning set is very large or/and variables are of high cardinality (i.e. there are more 
   than 20000 cells to be fitted), mutual information is computed efficiently via considering only cells 
   with nonzero counts. This allows to speed-up computation of mutual information in some cases even more 
   than 100 times and save memory.
3. New implementation of degrees of freedom in computation of conditional independence test with G^2 
   statistic accounts for cases when there are too many structural zeros.
4. All algorithms (including PC) using conditional independence test with G^2 statistic make reliable 
   decisions (about dependency/independency) iff there are at least 5 samples per cell avialbale. 
   The variables are ranked based on their associations according to p-values (when they are comparable
   numerically) and according to G^2 statistic values otherwise.

===============================================================================

Version 1.0a (December 2002-January 2003):

   First public release version.

