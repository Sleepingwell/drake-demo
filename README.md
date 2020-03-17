# Drake Demo

A very simple example of how to use the R workflow package
[drake](https://cran.r-project.org/package=drake) in RStudio.



## Requirements

- ***[drake](https://cran.r-project.org/package=drake)***

    ```R
    install.packages('drake')
    ```



## How To

- Ensure the working directory is set to somewhere sensible (the root of this
  repo is probably sensible).

- Source the file *dummy-data.R*. This will create file named *test.csv* in the
  working directory.

- *Knit* the file *drake-demo-report.Rmd* (by pressing the button *Knit* in the
  toolbar immediately above the file), which will produce the file
  *drake-demo-report-html* in the working directory.

Doing the above will create a folder named *.drake* in the working directory
which contains all sorts of stuff you don't need to know about (I don't). If
you *knit* again, you will notice the output will change; specifically, at the
bottom of the first chunk of code in the file produced it will say something
like:

```R
## All targets are already up to date.
```

whereas on the first run, it would have said:

```R
## target all.data
## target all.in.mod.with.no.ps
## target all.in.mod.with.age
## target t.inds
## target ps.model
## target ate.biased
## target ce.biased
## target ce.age
## target ps
## target ips
## target ate
## target all.in.mod.with.ps
## target ce
```

If you want to start again, just delete the folder *.drake*, or run the section
of code where the plan is defined (near the top of *drake-demo-report.Rmd*) in
the console then type `drake::clean()`.

Not redoing work that has already been done is obviously not very important for
something that runs as fast as this, but when you have hundreds of targets,
your script takes a day or so to run, the environment you are working in is
flaky and hence your session may be randomly killed, ..., you will begin to
appreciate it!
