#!/bin/bash

if [[ $# == 0 ]]
then
    RED='\033[0;31m'
    NC='\033[0m' # N
    printf "${RED}Please enter file name ${NC}\n"
    exit

fi



# methode 1
dotnet new webapi -n $1
dotnet tool install -g dotnet-aspnet-codegenerator

# for adding packages in project (not mandatory)
dotnet add package Microsoft.VisualStudio.Web.CodeGeneration.Design
dotnet add package Microsoft.EntityFrameworkCore.Tools
dotnet add package Microsoft.EntityFrameworkCore.SqlServer

dotnet aspnet-codegenerator controller -name RecipesController -async -api -m Recipe -dc ApplicationDbContext

## methode 2
# create new Project
dotnet new webapi --use-controllers -o TodoApi

# Trust the HTTPS development certificate by running the following command:
dotnet dev-certs https --trust


# Run the following command to start the app on the https profile:
dotnet run --launch-profile https

dotnet add package Microsoft.EntityFrameworkCore.InMemory
dotnet add package Microsoft.VisualStudio.Web.CodeGeneration.Design
dotnet add package Microsoft.EntityFrameworkCore.Design
dotnet add package Microsoft.EntityFrameworkCore.SqlServer
dotnet add package Microsoft.EntityFrameworkCore.Tools

dotnet tool uninstall -g dotnet-aspnet-codegenerator
dotnet tool install -g dotnet-aspnet-codegenerator
dotnet tool update -g dotnet-aspnet-codegenerator

# create new controllers
dotnet aspnet-codegenerator controller -name {{Controller Name}} -async -api -m {{Model name}} -dc {{dbContext Name}} -outDir {{Controllers folder Name}}
