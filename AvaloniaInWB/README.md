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

Visit the page at
[http://localhost:5000](http://localhost:5000)

