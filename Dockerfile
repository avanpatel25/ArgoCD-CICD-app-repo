
FROM ubuntu:latest

WORKDIR /root/

# Copy the application binary
COPY /app/currency_converter .  # Ensure this path is correct

# Create the /static directory
RUN mkdir -p /root/static

# Copy static files to /root/static
COPY /app/static /root/static  # Ensure this path is correct

# Make the application executable
RUN chmod +x /root/currency_converter

# Expose port 8080
EXPOSE 8080

# Run the application
CMD ["./currency_converter"]

