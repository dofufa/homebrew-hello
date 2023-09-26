# homebrew-hello
hello world homebrew repo

# OVERVIEW
  + This a hello world app written in PHP.
  + This demonstrates a simple Homebrew formula.
  + Uses `main` branch instead of `master` branch in the Formula, as [seen here][v2_main].

# REQUIREMENTS
  + `PHP 7.4+` or `PHP 8.0+` 

# INSTALL

1. Install [Homebrew](https://brew.sh).

2. Add this repo as a brew tap:

```bash
brew tap dofufa/hello
```

3. Install this formula:

```bash
brew install dofufa/hello/hello
```

+ OR, for the latest commit:
+ OR, if you have no releases yet:

```bash
brew install --head dofufa/hello/hello
```

### INSTALL NOTES

TBD

# UNINSTALL
```
brew remove dofufa/hello/hello
```


[v2_main]: https://github.com/dofufa/homebrew-hello/blob/5b72f8fd74ef684756e1f27531bb361963dd91cb/Formula/hello.rb#L6
