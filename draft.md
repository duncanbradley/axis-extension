# Introduction1219-2019

The question ‘Is it a big number?’ is often raised on the BBC radio programme _More or Less_ when probing eye-catching statistics. A figure of several million pounds may initially seem large but may represent a small proportion of total government spending. In data visualisation, the presence of contextual information is uncertain. It can be displayed, but is often ommited by default. In this study, we investigate how this design choice impacts interpretations of numbers’ magnitudes. We observe that extending an axis beyond the range of plotted values to accomodate a denominator causes the magnitude of these values to be interpreted as smaller. Thus, effect of the default setting for data visualisation software to ignore denominators is quantified. 

examines the numbers in current affairs

# Related Work



# Experiment 1

# Materials

Denominator present vs. denominator absent
Extended vs. default

For the truncated charts, we exploited ggplot2’s default axis settings. Based on the data, an appropriate set of breaks is selected, on the basis of easily divisible values. Then, per the default expansion factor, 5% of this axis range was added to the upper axis limit, slightly extending the plot area to a small degree. Contrary to the default settings, a smaller expansion factor of 0.01 was applied to the lower axis limit, avoiding visible space below the 0 baseline. 

Gplot2’s algorithm for selecting axis limits produces some variability in a chart’s appearance. In the majority of cases, the highest axis break will be below the highest plotted value. In a minority, the highest axis break will be above the highest plotted value. To avoid this additional source of complexity in our experimental design/stimuli, when the latter, rarer case occured, we automatically generated an alternative dataset where the highest value would exceed the highest axis break. Naturally, the highest axis break in the extended condition was always higher than the maximum plotted value. Rather than consider this difference a confound, we retained this difference in order to properly compare the custom designs with the typical defaults. 

ggplot_build(plotname)$layout$panel_params[[1]]$y$continuous_range

# Discussion

This experiment found that truncated charts elicited higher magnitude ratings than extended charts. Changes in the appearance of plotted datasets’ variability could be seen as a confound. However, there is no way avoiding this whilst truncating an axis. It’s not really a confound because we’re not just comparing the resulting height of the two datasets, we’re comparing the entire effect of truncating.

However, Figure XX illustrates that the degree of difference between extended and truncated conditions was varied. In some cases, there was a marginal difference between ratings for the extended and truncated conditions (horizontal lines), in other cases there was a more stark difference (diagonal lines). 

The peaks of the distribution correspond approximately to the proportions present in the data, indicating that the majority of participants treated the response slider as if it reflected the percentage of the denominator. That is, when the values were approximately a fifth of the denominator, ratings were awarded a fifth of the way along the slider. These judgements require knowledge of a denominator. In the extended trials, denominator information was available through the text and the axis. Thus we cannot know which source (or sources) participants used to make their judgements. In the truncated trials, however, denominator information was only available through the text: the axis upper limit was bounded by the highest plotted value. In some of the truncated trials, we can see that this denominator information is used, since they follow approximately the bimodal pattern of the proportions of the data themselves. Despite following this pattern, they still exhibited a slight bias. This suggests that tall bars in truncated charts biased participants’ *calculation* of the percentage. However, in other trials, it seems that the denominator information was not used, with high ratings awarded in response to the high bars. This suggests the responses were driven purely by the appearance of the values. Participants may have assumed that the upper limit was the denominator. 

Note: don’t assume that the truncated chart is the *source* of inconsistency. The two charts are merely being treated differently from each other. It could be that the information used in each is not necessarily the same (visual, text). 

The inconsistency in the response to the truncated charts indicates an inconsistency in the way that these visualisations affect interpretations. Identifying the source of this inconsistency is necessary for accurately predicting the degree to which these designs will influence viewers. Experiment 2 seeks to understand this inconsistency. We hypothesise that the influence of the appearance of values in a visualisation will be affected by whether the upper limit is seen as the denominator or not.

# Experiment 2

# Introduction

The results from Experiment 1 suggest that people’s judgements of magnitude are biased by the visual appearance of a bar chart. However, the amount of influence of this factor has seems to vary. In some cases, truncated charts are rated much higher than extended charts, in others they are not rated so differently. This variability in the way magnitude is assessed could be a result of whether Ps think that the upper limit represents the denominator. If they do not use the information about the denominator, they can’t know whether the appearance of bars presents an honest or misleading view of the magnitude. So neglect of the denominator could lead to chart design having a big influence, and paying close attention to the denominator could lead to chart design having only a minor influence. 

To experimentally manipulate participants’ knowledge of the denominator, we omitted this information from the text on half of trials (denominator absent). In these cases, it would be unclear to participants whether the upper limit of the chart represented the denominator, or whether it was simply the highest value. 

However participants judgements could still be influenced by the patterns in the stimuli. As a consequence of the greater uncertainty, participants will rely more on other information (e.g. fillers). In Experiment 1, there was an imbalance of (experimental) trials where the denominator was always much higher than the highest plotted value, and (filler) trials where the denominator was only marginally higher than the highest plotted value. Thus, participants may be biased towards assuming that the denominator is much higher than the presented values, even when they are not given this information. This would prevent us from properly identifying the effect of the denominator information. What we want is a case where they genuinely do not know. This means that high and low denominators have to be just as likely. Consequently, even though we will still only analyse experimental trials, the fillers become more important. Additionally, by paying attention to what the actual denominators are in the denominator-present trials, participants may build up a picture and use this understanding in the denominator-absent trials. Thus, we need it to be harder for participants to guess the denominators. This requires a wider range of denominator values than in E1. 

Participants are likely to make additional assumptions about the denominator. Thus, the fillers now serve to balance the probabilities of high and low values, not just provide variety (as in E1).

Becuase filler trials should seem similar 

# Materials

An additional 24 filler items were created, thus there were 32 experimental items, 32 filler items, and 6 attention check questions.


