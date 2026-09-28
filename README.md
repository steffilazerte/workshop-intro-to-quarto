# Introduction to Quarto for Reproducibility

*SCO-SOC Virtual Meeting 2026*

**Monday October 5th, 2026 11:30am-1:30pm Eastern**

Welcome!

Do you struggle to keep track of your research analyses in R? Is future-self
constantly complaining about past-self's inability to document scripts, data and
package versions? Come explore the magic of Quarto! Turn your R scripts into
reproducible reports complete with all the information future-self needs to
write up your analyses.

In this workshop we'll learn about Markdown, RMarkdown and Quarto. We'll cover
different ways of creating reports from scripts and how to customize the output
to maximize beauty as well as reproducibility. You will have the opportunity to
learn and practice, and will go home with a collection of resources to help you
along your journey. Example scripts to work with will be available, but best is
to bring your own.

This GitHub repository holds all the information relating to our workshop.

> **Important!**
>
> Make sure you're ready for the workshop by following the **Before the
> workshop** instructions. Please [email me](mailto:sel@steffilazerte.ca) if you
> run into any problems.
>
> Take care to update RStudio/Positron, in particular, as we need some of the
> newest features.

## Workshop resources

- Slides
  - [html](https://steffilazerte.ca/workshop-intro-to-quarto/index.html) (best)
  - [pdf](https://steffilazerte.ca/workshop-intro-to-quarto/intro_to_quarto_sm.pdf)
- Example files
  - Advanced Template
    ([code](https://github.com/steffilazerte/workshop-intro-to-quarto/blob/main/example.qmd)
    \|
    [download](https://steffilazerte.ca/workshop-intro-to-quarto/example.qmd))
  - Advanced Template (Spin example)
    ([code](https://github.com/steffilazerte/workshop-intro-to-quarto/blob/main/example_spin.R)
    \|
    [download](https://steffilazerte.ca/workshop-intro-to-quarto/example_spin.R))

## Before the workshop

> **RStudio or Positron?**
>
> 1. If you don't understand the question, install RStudio
> 2. If you're newish to R and programming, install RStudio
> 3. If you're familiar with programming and want to explore a more complex but
>    feature rich IDE, install Positron (but this workshop may not be the best
>    time to experiment, so give yourself time to get familiar with it!)
> 4. If you already use Positron, just make sure it's up-to-date ;)

- [Install R](https://muug.ca/mirror/cran/)

- [Install RStudio](https://docs.posit.co/ide/user/#rstudio-ide-oss-downloads)
  or [Positron](https://positron.posit.co/)
  - (**update RStudio/Positron** to the newest version, if it's already
    installed)

- Install R packages for following along

  - `tidyverse`
  - `devtools`
  - `report`
  - `DT`
  - `here`
  - `knitr`
  - `quarto`
  - `rmarkdown`

  To install via R commands:

  ```
  install.packages(c("tidyverse", "devtools", "report", "DT", 
                   "here", "knitr", "quarto", "rmarkdown"))
  ```

- Have available an analysis R script to work with (optional)

# Use of this material for teaching

Are you an R educator? Do you want to give this workshop?

Go for it! I would love for you to adapt this material for your own use. It's
licensed as GPLv3 which means you are free to copy, adapt, and use this
material, but any modifications you make must also be shared under the GPLv3
licence.

Essentially if you use/adapt this material, I hope that you'll pay it forward
and share with others.

I'd love to hear if you use this, how the workshop went (what worked, what
didn't, and how you made changes), but that's not a requirement.

Have fun!
