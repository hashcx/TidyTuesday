Useful commands when working with R Virtual Environment:

- `packages.install(renv)`
- `renv::upgrade()` -> upgrade `renv` intself

- `renv::status()`
- `renv::clean()`
- `renv::purge("<package>")` -> remove from cache

- `renv::install(<package>)`
- `renv::install(<github-username><package>)`

- `renv::snapshot()` -> scan code files and snapshot only referenced packages
- `renv::snapshot(packages = "<package>")` -> force snapshotting particular packages
- `renv::snapshot(type = "all")` -> force snapshot all downloading packages
- `renv::restore()` -> after cloning to restore snapshotted packages
- `names(renv::lockfile_read()$Packages)` -> list of snapshotted packages
- `"package" %in% names(renv::lockfile_read()$Packages)`

When using a virtual environment, R caches the installed packages into a user folder--on my Windows, the cache location is `C:\Users\Amin Alhashim\AppData\Local\R\win-library\4.6`.  When snapshotting, the packages are copied from cache (or linked to them) instead of downloading them from the web.

The typical commands routine is **install package** using `renv::install` -> **snapshot environment** using `renv::snapshot` -> **repeat**
