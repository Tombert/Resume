# Resumé 
My resume, written in Typst 

### Installation 

If you have ![Nix](https://nixos.org/download) installed with Flakes enabled, you can simply do: 

```
nix build
```

and nix will take care of everything without you having to muck about with Typst versions. 

You can also do 

```
nix develop
```

if you just want a shell with Typst installed to hack on stuff. 

#### Old way, Ubuntu, MacOS
This is a Typst resume  On Ubuntu, you need to install Typst using the `typst` package.

```
sudo apt install typst
```

On macOS: 

```
brew install typst
```

Then you should be able to run it: 

```
typst compile template.typ --font-path fonts
```

...Or you could just download the PDF that's in the repo.  That's cool too. 

---

I realized that I was getting annoyed at constantly having to peruse through old emails to find a copy of my resumé, and I realized there's no reason I couldn't happily store it on GitHub. 
