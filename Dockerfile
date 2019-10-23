FROM kong:1.3

RUN apk add --no-cache git

RUN git clone https://github.com/Emurgo/kong-plugin-header-based-rate-limiting.git && \
    cd kong-plugin-header-based-rate-limiting && \
    luarocks build kong-plugin-header-based-rate-limiting-1.2.0-1.rockspec && \
    cd - && rm -rf kong-plugin-header-based-rate-limiting

RUN apk del git
