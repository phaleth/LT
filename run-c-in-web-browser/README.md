# Install clang on Ubuntu (linux)

Download clang
```sh
wget https://github.com/llvm/llvm-project/releases/download/llvmorg-14.0.0/clang+llvm-14.0.0-x86_64-linux-gnu-ubuntu-18.04.tar.xz
```

Untar
```sh
tar xvf clang*ubuntu*.tar.xz
```

Install clang
```sh
sudo rm -rf /opt/clang* && sudo mv clang*ubuntu*/ /opt/clang && rm clang*ubuntu*.tar.xz
```

Edit the `.bashrc` environment file
```sh
nano .bashrc
```

Add following to the end of `.bashrc` and then exit nano
```sh
export PATH=$PATH:/opt/clang/bin
```

Refresh the environment in the currently openned terminal
```sh
source .bashrc
```

Test the clang installation
```sh
clang --version
```

# Compile WebAssembly module

Compile unoptimized
```sh
clang ./src/program.c -target wasm32-unknown-unknown-wasm -nostdlib -Wl,--no-entry -Wl,--export-all -Wl,--allow-undefined -o ./public/program.wasm
```

Convert WebAssembly module to WebAssembly text format
```sh
wasm2wat ./public/program.wasm -o ./src/program.wat
```

Compile optimized
```sh
clang ./src/program.c -target wasm32-unknown-unknown-wasm -nostdlib -Wl,--no-entry -Wl,--export-all -Wl,--allow-undefined -Oz -o ./public/program.wasm
```


# Run local server

Run python server
```sh
cd ./public
python3 -m http.server 8000
```

Visit the page
[http://localhost:8000](http://localhost:8000)

