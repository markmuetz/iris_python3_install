Building py3 iris on ARCHER
===========================

Attempt to get iris building using Py3 on ARCHER. Unsuccessful. Crashes with "Illegal instruction"
when trying to build cartopy and iris. Worse than that, after having loaded Py3 pc modules and gcc
simultaneously, trying to import numpy causes same problem. Could be related to old glibc version?
glibc=2.11.3 (from 2010).

Why do I want to build anyway? So that I can get iris working from MPI master/slave configuration.
I have to use archer mpi package as it's the only one that seems to work.

Update 5/1/18
-------------

This is now successfully building. I think the problem was related to building *on the serial node*.
This causes issues because of the "Illegal instruction" problem above. When I built on an HPC node
it worked. N.B. I have not done a full rebuild yet because I'm not 100% sure I've worked out all the
steps that are needed. It all works however - I can use qsub to launch a python script that uses MPI
and iris. If I can get omnium and friends working too then I am sorted for the time being.
