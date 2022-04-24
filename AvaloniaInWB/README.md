Create Blank Solution in MS Visual Studio Community 2022
> Solution Name: AvaloniaInWB

# Install bash
Open terminal
> View -> Terminal

Setup bash shell, use the following shell location
```sh
C:\Program Files\Git\bin\bash.exe
```

See what dotnet cli version is installed
```sh
dotnet --version
```

# Download workload for WebAssembly
```sh
dotnet workload install wasm-tools
```

# Install avalonia templates
```sh
dotnet new -i avalonia.templates
```

# Setup a new project
```sh
dotnet new avalonia.xplat
```

# Run project
```sh
dotnet run --project AvaloniaInWB.Web --configuration Release
```

Visit the page at\
[http://localhost:5000](http://localhost:5000)

# Deploy using docker
Install docker\
[Get Docker](https://docs.docker.com/get-docker/)

Clone this repo (linux/mac way)
```sh
git clone git@github.com:phaleth/LT.git
```

Get into repo dir
```sh
cd ./LT
```

Use included [Dockerfile](../Dockerfile)

Build image
```sh
docker build -t avalonia-example:2022-04-24 .
```

Run container
```sh
docker run -d -p 5000:5000 --name=avalonia-example avalonia-example:2022-04-24
```

Visit the page at\
[http://localhost:5000](http://localhost:5000)
