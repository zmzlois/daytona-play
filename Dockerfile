FROM amd64/debian:bullseye AS builder

COPY setup.sh /app/setup.sh

# Set the script as executable (if needed)
RUN chmod +x /app/setup.sh

RUN apt-get update && apt-get install -y \
    curl \
    sudo 
    # Command to run your script
CMD ["/app/setup.sh"]


# Docker build command: docker build -t daytona-play .

# Docker run command: docker run --rm -it --env-file ./docker.env daytona-play 

# There are two records need to be added in the interactive mode, and if you skip one of them it will fail

# if you set up domain on cloudflare, make sure the proxy is off (the orange cloud)

# If you are prompted to ask to verify your TXT record, you can use this website to verify if the TXT record is set up correctly : https://www.nslookup.io/
# In any case you want to stop the process but docker stucked, run `docker ps` and find out the container id associated with image name, then run `docker stop <container id>`