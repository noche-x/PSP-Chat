g++ -g -O3 -I/data[...]/ -I ~/PSP-Chat/src/Test-Server/lib/json/include -I ~/PSP-Chat/src/Test-Server/aegis.cpp/include -I ~/PSP-Chat/src/Test-Server/aegis.cpp/lib/asio/asio/include -I ~/PSP-Chat/src/Test-Server/aegis.cpp/lib/json/include -I ~/PSP-Chat/src/Test-Server/aegis.cpp/lib/spdlog/include -I ~/PSP-Chat/src/Test-Server/aegis.cpp/lib/websocketpp src/Test-Server/main.cpp -std=c++17 -lssl -lcrypto -lpthread -lz -ldl -o server.out