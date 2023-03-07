# Related Work

Stone et al - Further, displaying part-to-whole data meant that the axis limit was extended to a meaningful value, rather than an arbitrary value. Although it’s not necessarily arbitrary, since it’s related to the maximum value in the data.

# General Discussion

Changes in the appearance of plotted datasets’ variability could be seen as a confound. However, there is no way of  avoiding this whilst truncating an axis. It’s not really a confound because we’re not just comparing the resulting height of the two datasets, we’re comparing the entire effect of truncating. It’s about the scope/conceptualisation of what falls in the remit of axis manipulation.

Naturally, the highest axis break in the extended condition was always higher than the maximum plotted value. Rather than consider this difference a confound, we retained this difference in order to properly compare the custom designs with the typical defaults. 

ggplot_build(plotname)$layout$panel_params[[1]]$y$continuous_range

