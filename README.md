# Introduction to Quarto for Reproducibility

*UNBC Applied Analysis Hub 2025*

**Thursday October 2nd, 2025 1pm-3pm Pacific**

Welcome! 

Do you struggle to keep track of your research analyses in R? Is future-self constantly complaining about past-self's inability to document scripts, data and package versions? Come explore the magic of Quarto! Turn your R scripts into reproducible reports complete with all the information future-self needs to write up your analyses.

In this workshop we'll learn about Markdown, RMarkdown and Quarto. We'll cover different ways of creating reports from scripts and how to customize the output to maximize beauty as well as reproducibility. You will have the opportunity to learn and practice, and will go home of a collection of resources to help you along your journey. Example scripts to work with will be available, but best is to bring your own.

This GitHub repository holds all the information relating to our workshop.

> **Important!**
>
> Make sure you're ready for the workshop by following the **Before the workshop** instructions. Please [email me](mailto:sel@steffilazerte.ca) if you run into any problems.
>
> Take care to update RStudio, in particular, as we need some of the newest features.

## Workshop resources

- Slides
  - [html](https://steffilazerte.ca/intro_to_quarto/index.html) (best)
  - [pdf](https://steffilazerte.ca/intro_to_quarto/intro_to_quarto_sm.pdf)
- Example files
  - Advanced Template ([code](https://github.com/steffilazerte/intro_to_quarto/blob/main/example.qmd) | [download](https://steffilazerte.ca/intro_to_quarto/example.qmd))
  - Advanced Template (Spin example) ([code](https://github.com/steffilazerte/intro_to_quarto/blob/main/example_spin.R) | [download](https://steffilazerte.ca/intro_to_quarto/example_spin.R))


## Before the workshop

-   [Install R](https://muug.ca/mirror/cran/)

-   [Install RStudio](https://www.rstudio.com/products/rstudio/download/)

    -   (**update RStudio** to the newest version, if it's already installed)

-   Install R packages for following along

    -   `tidyverse`
    -   `devtools`
    -   `report`
    -   `DT`
    -   `here`
    -   `knitr`
    -   `quarto`
    -   `rmarkdown`

    To install via R commands:

    ```         
    install.packages(c("tidyverse", "devtools", "report", "DT", 
                     "here", "knitr", "quarto", "rmarkdown"))
    ```

-   Have available an analysis R script to work with (optional)

# Use of this material for teaching

Are you an R educator? Do you want to give this workshop?

Go for it! I would love for you to adapt this material for your own use. It's licensed as GPLv3 which means you can free to copy, adapt, and use this material, but any modifications you make must also be shared under the GPLv3 licence.

Essentially if you use/adapt this material, I hope that you'll pay it forward and share with others.

I'd love to hear if you use this, how the workshop when (what worked, what didn't, and how you made changes), but that's not a requirement.

Have fun!
