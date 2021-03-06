FROM kriation/centos7
LABEL maintainer="armen@kriation.com"

ARG BUILD_DATE
LABEL org.label-schema.build-date=$BUILD_DATE
LABEL org.label-schema.name="CentOS v7 with JRE v8"
LABEL org.label-schema.license=""
LABEL org.opencontainers.image.created=$BUILD_DATE
LABEL org.opencontainers.image.title="CentOS v7 with JRE v8"
LABEL org.opencontainers.image.licenses=""

# Download, install Oracle JRE 8 via RPM, and tidy up
RUN	rpm -i https://javadl.oracle.com/webapps/download/AutoDL?BundleId=244574_d7fc238d0cbf4b0dac67be84580cfb4b
