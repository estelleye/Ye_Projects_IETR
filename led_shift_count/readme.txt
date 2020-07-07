
*************************************************************************
This readme describes how to use the files that come with the  Partial Reconfiguration Tutorial for Vivado.

This design targets the ZedBoard platform and is used to highlight the software flow for Partial Reconfiguration.

The directory structure underneath this top-level folder is described below:

\Bitstreams
 |   This folder is the target location for bitstream generation.
 |       
\Implement
 |   This folder is the target location for checkpoints and reports for each of the design configurations. 
 Two subfolders are present, ready for implementation results.
 |
 +-----  \Config_shift_right_count_up
 |        This is the location for the first configuration results.
 |
 +-----  \Config_shift_left_count_down
 |        This is the location for the second configuration results.
 |
\Sources
 |
 +-----  \hdl
 |       source code is located within these folders.
 |    
 |           +--\count_down
 |           +--\count_up
 |           +--\shift_left
 |           +--\shift_right
 |           +--\top
 |
 +-----  \xdc 
 |        This folder contains the design constraint files.
 |           top.xdc is the complete constraint file for automatic scripted processing
 |           top_io.xdc contains pinout and clocking constraints
 |           pblocks.xdc contains the PR floorplan
 |
\Synth
 |   This folder contains receive the post-synthesis checkpoints for all the modules of the design.
 |
 +-----  \count_down
 +-----  \count_up
 +-----  \shift_left
 +-----  \shift_right
 +-----  \Static
 |

The development environment version: Vivado 2017.1.