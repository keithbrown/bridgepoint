---

This work is licensed under the Creative Commons CC0 License

---

# pyrsl as a replacement for gen_erate.exe
### xtUML Project Analysis Note

1. Abstract
-----------
The bridgepoint toolchain currently rely on a windows-only interpreter called gen_erate.exe to execute RSL archetype files. To execute these parts of the tool chain on a non-windows machine, wine must be used. Rather than using wine, an experimental interpreter called pyrsl [1] may be used instead.This note aims to investigate if pyrsl is feasable as a replacement to gen_erate.exe

2. Document References
----------------------
In this section, list all the documents that the reader may need to refer to.
Give the full path to reference a file.

[1] [pyrsl github page](https://github.com/john-tornblom/pyrsl)  
[2] [self contained python version of gen_erate](https://github.com/john-tornblom/pyrsl/raw/bindist/gen_erate)
[3] [python-based replacement of the perl script xtumlmc_build](https://raw.githubusercontent.com/john-tornblom/mc/master/bin/mc3020.py)

3. Background
-------------
In its current condition, pyrsl behaves much like the original gen_erate.exe. A self-contained python-based version of gen_erate is availale for download [2] which uses a command line interface (CLI) with looks just like the original.

An more modern CLI is also available, wich expose additional features not available in gen_erate.exe.
* **--include**    Similar to the gcc -I flag and the #include directive, pyrsl may search for a file is several places when using .include "filename". When the same filename is available in several paths, the one provided first on CLI will be used.
* **--emit=WHEN**  choose when to emit a buffer to disk (never, when the files differ, always)
* **--force**    make read-only emit files writable, i.e. chmod +w
* **--diff=PATH**   generate a diff/patch between the text located on disk before every emit, and the emited text.

#### 3.1 Licensing ####
Like bash, pyrsl is licenced under the GPLv3. Unlike the apache 2 license with most of bridgepoint is licenced under, GPLv3 require any distributor to also distribute the source code. In addition, derived work must be made available to any reciever under the same licence as the orignal work. Of cource, source code which is interpreted by pyrsl (or bash) is not affected.

Just like the apache license, GPL licensed software is provided without warranty and the software author/license owner cannot be held liable for damages.

4. Requirements
---------------
Not sure about the requirements.

5. Analysis
-----------
The windows version of gen_erate is wrapped with a perl-script which modifies the sql-file generated from the prebuilder in various ways. For example:
* remove the (') symbol from all phrases
* change all uuid values to integer values
* copy archetype files from the /sysc or /c folder into the project folder

With pyrsl, some of these modifications are unessecary, and some may done in a more robust way [3].
Note: The current version of the python script [3] does not generate a makefile.

6. Work Required
----------------
Decide on which approach is most suitable:
6.1 Create a drop-in replacement for gen_erate.exe, and use the existing wrapper written in perl.
* add gen_erate to packing
* update perl scripts which invoke gen_erate.exe using wine to point at gen_erate instead.

6.2 Replace the perl-script with a python script
* come up with a viable solution for windows users
* come up with a good way for generating a makefile

7. Acceptance Test
------------------
Not sure about the acceptance test.

End
---


