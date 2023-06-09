# kong-plugin-whitelist-url
A kong plugin that whitelist upstream url from an array of matching expressions


# kong-plugin-whitelist-url
A kong plugin that whitelist upstream url from an array of matching expressions


# Installation

Copy the folder `-url` into your kong plugin folder, for an image of kong alpine 3.2.2 is located at ``/usr/local/share/lua/5.1/kong/plugins``

then, add the new plugin to the list of installed plugin :

```bash
# Via env var
export KONG_PLUGINS=$KONG_PLUGINS,whitelist-url
```