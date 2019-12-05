export OVPN3_HOME_DIR "D:/library/openvpn3"
rm build
mkdir build
cd build
cmake -DCMAKE_TOOLCHAIN_FILE=D:\library\vcpkg\scripts\buildsystems\vcpkg.cmake -DCMAKE_GENERATOR_PLATFORM=x64 ..