 ./provider init
generating ED25519 keypair...done
peer identity: 12D3KooWJ2aqYAXDiiaZEuTdWt6yxBZQVHHDH7ahFBibAd4EiLXb

./provider daemon

./storetheindex init
Initializing indexer node at /Users/zl/.storetheindex
generating ED25519 keypair...done
peer identity: 12D3KooWNKADtWUpJsQkgP1mD6MtjvZYLWgXcgZ6hbEeZpkEEccR

#在配置中需要将./storetheindex的bootstrap去掉,负责会同步主链的数据索引.

./storetheindex daemon

./provider connect --indexermaddr /ip4/127.0.0.1/tcp/3003/p2p/12D3KooWNKADtWUpJsQkgP1mD6MtjvZYLWgXcgZ6hbEeZpkEEccR
Connected to peer successfully%

./car create --version 2 -f ./car_files/storetheindex.car2 ./storetheindex
file cid is : bafybeid4rrkzj2ybdkogoxriv2pzjhqaiqexzilk42gighf3txhnh54ucy

# 查看索引
./car list ./car_files/storetheindex.car2

# 查找索引
./storetheindex find --cid=bafkreie2y6gtgl2pbx3nlj2rou5hssc4prt4jubsslx6epto7f5hfc7yzu
./storetheindex find --mh=QmWiqNnZbgqXDqzREB61GuWRMqwSDfMeS2gK2srRREfK2M



