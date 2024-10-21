cd ./PoartaFrontend
docker rmi poarta_frontend
docker buildx build --platform linux/amd64 -t poarta_frontend --load .
docker save -o $PSScriptRoot/result_sv/poarta_frontend.tar poarta_frontend
scp $PSScriptRoot/result_sv/poarta_frontend.tar root@176.223.125.188:/root/tar

ssh root@176.223.125.188 '/root/script/poarta_frontend.sh'