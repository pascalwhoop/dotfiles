# Dotfiles managed with stow

These are my dotfiles. I recently found [this
article](https://brandon.invergo.net/news/2012-05-26-using-gnu-stow-to-manage-your-dotfiles.html)
about how to manage your dotfiles with stow. Such a great find!

## Bootstrap scripts

I manage a couple of lists for various platforms that contain the files I want to have on the systems. E.g. debian, arch, macos etc. 
These are called `*.stows` and are in the root folder. You can then run

```
cat debian.stows | xargs -I {} stow -t ~ {}
```

which runs stow on all the matching folders. 

The more complete bootstrapping of a system is available in
[bootstrap](personal_scripts/.scripts/bootstrap), which also installs various packages
for the applicable platform. I use `brew` a lot on macos so I got used to using that also
for systems where I otherwise need to add various repositories to the package managers.
For arch I will stick with `pacman` or `yay`. 


## Private files

I have a second `dotfiles` repository hosted in a private repo. This one I keep private but I can share the setup there. I use `git-crypt` together with a `.gitattributes` file containing the line

```
_**/* filter=git-crypt diff=git-crypt
```

There I place all applications in folders just like here but prefixed with an underscore.
That way, the files are encrypted before pushing to github, giving me an extra level of
security. For the complete (including GPG key usage) setup check [the readme of
git-crypt](https://github.com/AGWA/git-crypt).

This btw is also a great way to store secrets in git and share them with other people. The concept is rather simple:

- generate encryption key
- encrypt encryption key with public GPG key of people
- store encrypted key in repo given people's GPG IDs

```bash
⋊> ~/dotfiles_private on main ↑ tree .git-crypt/
.git-crypt/
└── keys
    └── default
        └── 0
            └── BB6E506D63C258297A2ADA481C49A27D63A8B5A0.gpg

3 directories, 1 file
```
a very simple way to share secrets with colleagues if one doesn't have a password vault etc. 

