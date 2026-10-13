CFLAGS = -O2 $(INC)

SRC =  receive.cpp $(wildcard src/*.cpp)
INC = -I./inc -I./src

all: receive

run: receive
	./receive
	
receive: $(SRC)
	$(CXX) $(CFLAGS) -o $@ $^

clean:
	rm -f receive *.o
