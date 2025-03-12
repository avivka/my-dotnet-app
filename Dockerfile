FROM mcr.microsoft.com/dotnet/aspnet:6.0 AS base
WORKDIR /app
EXPOSE 80

FROM mcr.microsoft.com/dotnet/sdk:6.0 AS build
WORKDIR /src
COPY ["src/my-dotnet-app.csproj", "src/"]
RUN dotnet restore "src/my-dotnet-app.csproj"
COPY . .
WORKDIR "/src/."
RUN dotnet build "my-dotnet-app.csproj" -c Release -o /app/build

FROM build AS publish
RUN dotnet publish "my-dotnet-app.csproj" -c Release -o /app/publish

FROM base AS final
WORKDIR /app
COPY --from=publish /app/publish .
ENTRYPOINT ["dotnet", "my-dotnet-app.dll"]