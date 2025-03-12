FROM mcr.microsoft.com/dotnet/aspnet:7.0 AS base
WORKDIR /app
EXPOSE 5001

FROM mcr.microsoft.com/dotnet/sdk:7.0 AS build
WORKDIR /src
COPY ["src/my-dotnet-app.csproj", "src/"]
RUN dotnet restore "src/my-dotnet-app.csproj"
COPY . .
RUN dotnet build "src/my-dotnet-app.csproj" -c Release -o /app/build

FROM build AS publish
RUN dotnet publish "src/my-dotnet-app.csproj" -c Release -o /app/publish

FROM base AS final
WORKDIR /app
COPY --from=publish /app/publish .
ENTRYPOINT ["dotnet", "my-dotnet-app.dll"]