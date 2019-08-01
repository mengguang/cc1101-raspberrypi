all: TX_Demo RX_Demo
TX_Demo: TX_Demo.cpp cc1100_raspi.h cc1100_raspi.cpp
	g++ -lwiringPi -Wall -o TX_Demo TX_Demo.cpp cc1100_raspi.cpp
RX_Demo: RX_Demo.cpp cc1100_raspi.h cc1100_raspi.cpp
	g++ -lwiringPi -Wall -o RX_Demo RX_Demo.cpp cc1100_raspi.cpp
clean:
	rm -f TX_Demo RX_Demo
run_rx: RX_Demo
	./RX_Demo -a 8 -c 10 -f 434 -m 500 -v 1
run_tx:	TX_Demo
	./TX_Demo -a 8 -c 10 -f 434 -m 500 -r 6 -t 0 -v
