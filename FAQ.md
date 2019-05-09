# FAQ


## Questions

- [I can't build the ROM, `make` just prints an error!](#i-cant-build-the-rom-make-just-prints-an-error)
  - [`gcc`: command not found](#gcc-command-not-found)
  - ["ERROR: `UNION` already defined"](#error-union-already-defined)
  - ["Segmentation fault" from `rgbgfx`](#segmentation-fault-from-rgbgfx)
  - ["Section is too big" or "Unable to place section in bank"](#section-is-too-big-or-unable-to-place-section-in-bank)
  - ["Invalid file or object file version"](#invalid-file-or-object-file-version)
  - ["Syntax error"](#syntax-error)


## I can't build the ROM, `make` just prints an error!

Reread [INSTALL.md](INSTALL.md) carefully, and make sure you're following all its steps.

### `gcc`: command not found

You need to install `gcc`. If you're using Cygwin, re-run its setup, and at "Select Packages", choose to install `gcc-core`.

### "ERROR: `UNION` already defined"

Download [**rgbds 0.3.8**][rgbds]. Older versions will not work.

### "Segmentation fault" from `rgbgfx`

If you are using 64-bit Windows, download [**64-bit Cygwin**][cygwin] and [**64-bit rgbds**][rgbds].

### "Section is too big" or "Unable to place section in bank"

If you have not changed any of the asm, make sure you have the latest version of pokecrystal and the correct version of rgbds (see [INSTALL.md](INSTALL.md)).

If you added or changed any code, it has to fit in the **memory banks**. The 2MB ROM is divided into 128 banks of 4KB each, numbered $00 to $7F. The linkerscript **pokecrystal.link** lists which `SECTION`s go in which banks. Try moving some code into a new section.

### "Invalid file or object file version"

Run `make clean` to remove all the old `o` files, then re-run `make`.

### "Syntax error"

If you have not changed any of the asm, make sure you have the latest version of pokecrystal and the correct version of rgbds (see [INSTALL.md](INSTALL.md)).

If you added or changed any code, you've made a mistake while writing some of it. Re-read the modifications you've made to the file it complains about and try to compare them with other code.


