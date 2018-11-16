# STAT547 Homework 7 repository

This repo contains my homework 7 for [STAT547](http://stat545.com/Classroom/). The goal of this homework was to add a function to an existing R package. I decided to extend the `foofactors` package with the function `reorder_desc`, which reorders factor levels based on the values of another variable, in a descending order:

```{r}
Species_reordered_desc <- reorder_desc(iris$Species, iris$Sepal.Width, median)

ggplot(iris, aes(Species_reordered_desc, Sepal.Width)) + 
  geom_boxplot() +
  labs(x = "")
```

![](foofactors-master/README-unnamed-chunk-7-1.png)

The full package can be found in the [foofactors_master folder](https://github.com/STAT545-UBC-students/hw07-fjbasedow/tree/master/foofactors-master), which includes a detailed description of the package in its [README](https://github.com/STAT545-UBC-students/hw07-fjbasedow/blob/master/foofactors-master/README.md). 

Other files that you may be interested in:
* The vignette can be found by typing `browseVignettes("foofactors")` into your console.
* [The file describing the reorder_desc function](https://github.com/STAT545-UBC-students/hw07-fjbasedow/blob/master/foofactors-master/R/reorder_desc.R)
* [Tests for reorder_desc](https://github.com/STAT545-UBC-students/hw07-fjbasedow/blob/master/foofactors-master/tests/testthat/test_reorder_desc.R)

**NOTE: Most contents of this repo were taken from the original [foofactors repo](https://github.com/jennybc/foofactors) by Jenny Bryan. I only developed the `reorder_desc` function and created the contents related to it.**



