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

- [1] [pyrsl github page](https://github.com/john-tornblom/pyrsl)  
- [2] [self contained python version of gen_erate](https://github.com/john-tornblom/pyrsl/raw/bindist/gen_erate)  

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
This section describes the requirements that need to be satisfied.  If there 
is an SRS, this section may simply refer to it.  Each requirement should be as 
short and simple as possible and must be clearly defined.

4.1 Item 1  
4.2 Item 2  
4.3 Item 3  

5. Analysis
-----------
This section is only required if there is no preceding analysis note. If present
it sets out a brief analysis of the problem to be resolved by this design note.

5.1 Item 1  
5.2 Item 2  
5.3 Item 3  

6. Work Required
----------------
In this section, break out the consequential work (as a numbered list) needed
to meet the requirements specified in the Requirements section.
* add gen_erate to packing
* update perl scripts which invoke gen_erate.exe using wine to point at gen_erate instead.

7. Acceptance Test
------------------
In this section, list the tests that need to be performed in order to
verify that all the requirements are satisfied.

End
---


