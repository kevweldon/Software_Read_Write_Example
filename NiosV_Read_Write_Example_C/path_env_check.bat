@echo off
echo.
echo This script will check to ensure your PATH environment variable
echo is set correctly.
echo.
echo Testing xpack-riscv-none-embed-gcc path...
where riscv-none-embed-ar
echo.
echo Testing xpack-windows-build-tools path...
where make
echo.
echo Testing cmake path...
where cmake
echo.
echo Testing sopc_builder path...
where qsys-edit
echo.
echo Testing niosv path...
where niosv-app
echo.
echo Testing quartus path...
where quartus_sh
echo.



