From nginx:latest

LABEL maintainer="Huan Di <hd@iamhd.top>" \
      description="This image can solve cerbot chanllenge with proper configuration." \
      version="0.0.1"

ENV CHANLLENGE_ROOT "/usr/share/nginx/html/.well-known/acme-challenge"
ENV CHANLLENGE_FILE "some_file"
ENV CHANLLENGE_DATA "some_content"

COPY ./entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]

CMD ["nginx", "-g", "daemon off;"]
