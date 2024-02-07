# Resumé 
My resume, written in LaTeX

### Installation 

If you have ![Nix](https://nixos.org/download) installed with Flakes enabled, you can simply do: 

```
nix build
```

and nix will take care of everything without you have to muck about with texlive vesions. 

You can also do 

```
nix develop
```

if you just want a shell with texlive installed to hack on stuff. 

#### Old way, Ubuntu, MacOS
This is the fairly basic ModernCV template.  On Ubuntu, you need to install LaTeX using the `texlive` package, along with the `texlive-latex-extra` package: 

```
sudo apt-get install texlive texlive-latex-extra
```

On macOS: 

```
brew install texlive
```

Then you should be able to run it: 

```
pdflatex resume.tex
```

...Or you could just download the PDF that's in the repo.  That's cool too. 

---

I realized that I was getting annoyed at constantly having to paroose through old emails to find a copy of my resumé, and I realized there's no reason I couldn't happily store it on GitHub. 
