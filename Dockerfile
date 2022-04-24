FROM mcr.microsoft.com/dotnet/sdk:6.0 AS build-env
WORKDIR /app

COPY ./AvaloniaInWB/ ./

RUN apt update \
  && apt install -y --no-install-recommends python3 \
  && dotnet workload install wasm-tools \
  && dotnet build --configuration=Release \
  && dotnet dev-certs https \
  && apt clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

ENTRYPOINT ["dotnet", "run", "--project=AvaloniaInWB.Web", "--configuration=Release"]

#RUN dotnet restore
#RUN dotnet publish ./AvaloniaInWB.Web/AvaloniaInWB.Web.csproj -c Release -o out

#FROM mcr.microsoft.com/dotnet/aspnet:6.0
#WORKDIR /app
#COPY --from=build-env /app/out .
#ENTRYPOINT ["dotnet", "aspnetapp.dll"]
