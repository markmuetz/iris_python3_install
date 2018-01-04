Building py3 iris on ARCHER
===========================

Attempt to get iris building using Py3 on ARCHER. Unsuccessful. Crashes with "Illegal instruction"
when trying to build cartopy and iris. Worse than that, after having loaded Py3 pc modules and gcc
simultaneously, trying to import numpy causes same problem. Could be related to old glibc version?
glibc=2.11.3 (from 2010).

Why do I want to build anyway? So that I can get iris working from MPI master/slave configuration.
I have to use archer mpi package as it's the only one that seems to work.
