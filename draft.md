# Introduction1219-2019

The question ‘Is it a big number?’ is often raised on the BBC radio programme _More or Less_ when probing eye-catching statistics. A figure of several million pounds may initially seem large but may represent a small proportion of total government spending. In data visualisation, the presence of contextual information is uncertain. It can be displayed, but is often ommited by default. In this study, we investigate how this design choice impacts interpretations of numbers’ magnitudes. We observe that extending an axis beyond the range of plotted values to accomodate a denominator causes the magnitude of these values to be interpreted as smaller. Thus, effect of the default setting for data visualisation software to ignore denominators is quantified. 

# Related Work

# Experiment 1 - Overview

Experiment 1 investigates the influence of y-axis upper bounds on interpretations of plotted values’ magnitude. Participants viewed bar charts with y-axes which either terminated just above the bars, or extended to a denominator value well above the bars. Thus, the same data is displayed with and without its surrounding context. Comparing participants’ interpretations captures the influence of y-axis limits on magnitude judgements.

# Pre-Registration

# Materials

Extended vs. default

For the truncated charts, we exploited ggplot2’s default axis settings. Based on the data, an appropriate set of breaks is selected, on the basis of easily divisible values. Then, per the default expansion factor, 5% of this axis range was added to the upper axis limit, slightly extending the plot area to a small degree. Contrary to the default settings, a smaller expansion factor of 0.01 was applied to the lower axis limit, avoiding visible space below the 0 baseline. 

Gplot2’s algorithm for selecting axis limits produces some variability in a chart’s appearance. In the majority of cases, the highest axis break will be below the highest plotted value. In a minority, the highest axis break will be above the highest plotted value. To avoid this additional source of complexity in our experimental design/stimuli, when the latter, rarer case occured, we automatically generated an alternative dataset where the highest value would exceed the highest axis break. Naturally, the highest axis break in the extended condition was always higher than the maximum plotted value. Rather than consider this difference a confound, we retained this difference in order to properly compare the custom designs with the typical defaults. 

ggplot_build(plotname)$layout$panel_params[[1]]$y$continuous_range

In all experimental items, plotted values were significantly smaller than the denominator specified in the accompanying text. Due to concern that participants would consistently respond in this manner, and not consider the data properly, we developed filler trials with plotted values that were only marginally smaller than the specified denominator. Here, we used a proportion of 90%. 

We also included six attention check trials to assess participants’ engagement with the task. These trials appeared similar to experimental and filler trials, comprising of text, a bar chart, question and visual analogue scale. However, participants were instructed to ignore the bar chart and provide a specified response on the visual analogue scale. 

# Procedure

Participants were instructed to carry out the experiment using a laptop or desktop computer (not a mobile phone or tablet). After providing informed consent, participants completed a demographic questionnaire and Garcia-Retamero et al.’s (2016) subjective data visualisation literacy measure. Participants were asked to image they were a researcher tasked with determining the outcome of experiments and surveys. They were instructed to make an overall assessment of all data presented in the graph after studying the text, graph, and question. Items were presented in a random order.

Questions were tailored to specific scenarios, but each question required participants to make a judgement about the data’s magnitude, along a given spectrum. For example, if the chart showed the number of people using public transport regularly, participants were asked to assess the popularity of public transport, on a scale from “very unpopular” to “very popular”. 

Participants were permitted to move the response marker as many times as they liked before proceeding to the next trial, but could not return to previous trials. Finally, they were informed that all data presented was fictitious and were given the option to provide comments on the experiment and describe any strategies used. Average completion time was x minutes. 

# Design

We employed a within-participants design: participants viewed 16 different charts in each of the two conditions (32 experimental trials total). We also included eight filler items and six attention check items.

# Participants

Participants were recruited from Prolific.co. The experiment was advertised to fluent English speakers, who had normal-or-corrected to normal vision, who had previously participated in more than 100 studies on Prolific. 

Per our pre-registeration, we recruited participants until 150 had successfully completed the experiment, excluding those who answered more than 1 AC item incorrectly. Participants with accepted submissions received £3.50. 

For those in the final sample, The average age was x, the avergae graph literacy score was x. The participnats were x%female, y% male, z%non-binary. j% had completed at least high school education. 

This experiment was approved by the University of Manchester’s Division of Neuroscience and Experimental Psychology Ethics Committee (ethics code: 2022-11115-24245). 

# Discussion

In this experiment, we explored the role of y-axis upper bounds in bar charts. We found that axes which extended beyond the plotted data were associated with greater magnitudes, compared to axes which terminated just above the plotted data.  Axes change the appearance of plotted data, add visual signifier of context, biasing interpretations of those values. 

Changes in the appearance of plotted datasets’ variability could be seen as a confound. However, there is no way avoiding this whilst truncating an axis. It’s not really a confound because we’re not just comparing the resulting height of the two datasets, we’re comparing the entire effect of truncating. It’s about the scope/conceptualisation of what falls in the remit of axis manipulation.

Participants ratings had a systematic pattern. When the sampling distribution for the mean was 20% of the denominator value, participants’ ratings were approximately one fifth along the visual analogue scale; when it was 40%, ratings were at the 40% mark. Despite this, the placement of the response marker was still biased by the axis manipulation. However, looking at exactly how the chart designs affected judgments reveals a more complex picture. Overall, there seems to be little difference in the response patterns: truncated charts do not have ratings suggesting perceptions of enormous magnitude. However, in a smaller number of cases, they do -

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
Denominator present vs. denominator absent


