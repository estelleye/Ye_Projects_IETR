The purpose is to simply explain the steps to partially reconfigure the FPGA 
from the Processer through the PCAP (Processer Configuration Access Port).  

    1- Finish hardware design, and then generate full and partial bit streams
    2- Convert partial bit streams from .bit to .bin
    3- Move partial bit streams to SD card.
    4- Run the C code.
    5- Initially the partial bit streams are loaded to memory.
    6- Durting runtime you can use the “XDcfg_TransferBitfile” function to reconfigure the FPGA by assigning the memory and address of the partial bit stream

The  development environment version: Vivado 2015.4 Xilinx SDK 2015.4.