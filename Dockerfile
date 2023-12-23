# Use the official Microsoft .NET SDK image as a base image
FROM mcr.microsoft.com/dotnet/sdk:7.0
EXPOSE 5000
EXPOSE 44385

# Set the working directory inside the container
WORKDIR /app

# Copy the application files to the container
COPY src/ .

# # Build the application
# RUN dotnet publish -c Release --self-contained --runtime linux-x64

# # Use a smaller runtime image for the final image
# FROM mcr.microsoft.com/dotnet/runtime:7.0

# # Set the working directory inside the container
# WORKDIR /app

# # Copy the published application from the build image
# COPY --from=build /app/publish .

# EXPOSE 5000

# # Define the entry point for the container
# # ENTRYPOINT ["dotnet", "run", "net7.0/WeatherApp.dll"]
