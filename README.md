# trivial-msi

Utilities for working with [Windows Installer][msi] files.

# Usage

The `trivial-msi` package exports two functions: `install` and `uninstall`. Both
take an absolute pathname to the MSI file as their first argument.

`install` has two optional keyword arguments: `directory` to specify an
installation directory, and `mode`. The mode option is one of `:full`,
`:passive` or `:quiet`. The `:full` mode shows the full installation GUI, while
`:passive` proceeds with the installation, showing only a progress bar, and
`:quiet` suppresses all output.

## Example

```lisp
CL-USER> (install #p"/path/to/installer.msi"
                 :directory #p"/custom/installation/directory/"
                 :mode :quiet)

CL-USER> (uninstall #p"/path/to/installer.msi")
```

# License

Copyright (c) 2015 Fernando Borretti

Licensed under the MIT License.

[msi]: https://en.wikipedia.org/wiki/Windows_Installer
