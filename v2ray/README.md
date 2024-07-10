# Local v2ray

## Installation

``` bash
brew install v2ray
```

## Configuration File Location

`/usr/local/etc/v2ray/config.json`

## Why

When using `clash` as a proxy service, `proxy mode` is generally set to `rule` to automatically determine whether a proxy is needed. However, sometimes, it is necessary to force an application or a scenario to go through the proxy (equivalent to `global` mode). Although the `proxy mode` of clash can be changed to `global` at this time, it will affect other applications.

Some proxy software provides two ports, one for the proxy itself (equivalent to `global` mode), and the other with built-in rules (equivalent to `rule` mode). Clash does not currently have this feature.

So consider starting another `v2ray` proxy and directing all traffic to `clash`. Within `clash`, rules are configured so that all requests from `v2ray` go through the proxy. This is equivalent to opening an additional port for `clash`. Even if `clash` uses the `rule` mode, a certain application can use the newly opened port as a proxy to ensure that all traffic goes through the proxy server.

Since `clash` doesn't support `mixed-port` currently, two ports need to be enabled: one for SOCKS proxy and the other for HTTP/HTTPS proxy (in case some applications can't use SOCKS proxy).

## Use

After configuration, `v2ray` will listen to two ports (currently configured as SOCKS 1080 and HTTP 1081) during operation. Other applications can choose one of the ports as a proxy service.

Terminal programs can set up proxies by setting environment variables, e.g.:

``` bash
export http_proxy=http://127.0.0.1:1081 https_proxy=http://127.0.0.1:1081 all_proxy=socks5://127.0.0.1:1080
```
