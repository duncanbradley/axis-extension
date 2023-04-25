# Introduction

The question ‘Is it a big number?’ is often raised on the BBC radio programme _More or Less_ when probing eye-catching statistics. A figure of several million pounds may initially seem large but may represent a small proportion of total government spending. In data visualisation, this contextual information can be displayed, but is often ommited by default. In this study, we investigate how *this design choice* affects interpretations of numbers’ magnitudes. The magnitude of plotted values is interpreted as larger when the y-axis terminates close to these values, and fails to accomodate a denominator. Thus, we evaluate the consequences of default settings in data visualisation software. 

# Related Work

# Experiment 1 - Overview

Experiment 1 investigates the influence of y-axis upper bounds on interpretations of plotted values’ magnitude. Participants viewed bar charts with y-axes which either terminated just above the bars, or extended to a denominator value well above the bars. Thus, the same data is displayed with and without its surrounding context. Comparing participants’ interpretations captures the influence of y-axis limits on magnitude judgements.

# Pre-Registration

We predicted that bar charts with truncated axes would elicit greater magnitude ratings than bar charts with extended axes. Pre-registration is available at https://osf.io/e9j43. 

# Materials

We developed 40 scenarios relating to fictitious surveys and experiments. Each scenario described a study evaluating a specific outcome in each of five categories (e.g., the number of employees achieving performance targets, in five finance companies). The denominator (e.g., total number of employees) was identical for each category. Participants were asked to  make judgements about overall magnitude (e.g., How well did the employees perform?), responding on a visual analogue scale with anchors at the extremes (e.g., ‘very poorly’, ‘very well’).

We generated bar charts using ggplot2 in R (version 4.1.2), using tidyverse version 1.3.1 and ggh4x version 0.2.1. Both versions of each chart displayed the same five values, but employed different y-axis upper bounds. For extended charts, the denominator from the text description (400, 500, or 600) was used as the y-axis upper bound. The denominators were also used in the generation of the datasets, which employed a normal distribution with a mean equal to 20% or 40% of a given denominator value, and a standard deviation equal to 1% of a given denominator value. 

In truncated charts, the y-axis upper bound was dictated by ggplot2’s default axis settings. These settings automatically identify a set of convenient breaks for each dataset, then slightly extend the plot area, adding 5% of the axis range to the upper axis limit. In both conditions, contrary to the default settings, a smaller expansion factor of 1% was applied to the lower axis limit, eliminating visible space below the 0 baseline.

The default settings tended to produce charts where the highest axis break fell below the tallest bar. For the purposes of consistency, when the opposite situation occured, we automatically generated an alternative dataset to ensure the highest axis break appeared below the tallest bar. This dataset was used in both conditions. In our stimuli set, x alternative datasets were generated in this way. 

In experimental trials, plotted values consisted of relatively small proportions of the denominator value specified in the accompanying text (roughly 20% or 40%). To introduce variety and encourage attention, eight filler trials showed plotted values which were around 90% of the corresponding denominator value. The denominators were selected so that numerical labels on the y-axis roughly resembled either extended or truncated experimental trials.

We included six attention check trials to assess participants’ engagement. These trials were similar to experimental and filler trials, comprising of text, a bar chart, question and visual analogue scale. However, participants were instructed to ignore the bar chart and provide a specified response on the visual analogue scale. 

# Procedure

PsychoPy version 2022.1.4. Participants were instructed to carry out the experiment using a laptop or desktop computer (not a mobile phone or tablet). After providing informed consent, participants completed a demographic questionnaire and Garcia-Retamero et al.’s (2016) subjective data visualisation literacy measure. Participants were asked to image they were a researcher tasked with determining the outcome of experiments and surveys. They were instructed to make an overall assessment of all data presented in the graph after studying the text, graph, and question. Items were presented in a random order. There was a total of 46 trials.

Participants were permitted to move the response marker as many times as they liked before proceeding to the next trial, but could not return to previous trials. Finally, they were informed that all data presented was fictitious and were given the option to provide comments on the experiment and describe any strategies used. Average completion time was 19.2 minutes. 

# Design

We employed a within-participants design: participants viewed 16 different charts in each of the two conditions (32 experimental trials total). The correspondence between scenarios and conditions was counterbalanced using two lists. However, all participants saw the same versions of the eight filler items and six attention check items. 

# Participants

Participants were recruited from Prolific.co. The experiment was advertised to fluent English speakers, who had normal-or-corrected to normal vision, who had previously participated in at least 100 studies on Prolific. 

Per our pre-registeration, we recruited participants until 150 had successfully completed the experiment, excluding seven individuals who answered more than 1 attention check item incorrectly. Participants with accepted submissions received £3.50. 

For those in the final sample, The average age was x, the average graph literacy score was x. The participnats were x%female, y% male, z% non-binary. j% had completed at least high school education. 

This experiment was approved by the University of Manchester’s Division of Neuroscience and Experimental Psychology Ethics Committee (ethics code: 2022-11115-24245). 

# Discussion

In this experiment, we explored the role of y-axis upper bounds in bar charts. We found that axes which extended beyond the plotted data were associated with greater magnitudes, compared to axes which terminated just above the plotted data. Axes change the appearance of plotted data, adding a visual cues to context, which biases interpretations of plotted values. 

On the whole, participants’ responded to truncated and extended charts with broadly similar approaches. Ratings tended to correspond to the proportion of the denominator taken up by the plotted values. For example, when plotted values roughly equalled 20% of the denominator value, markers were placed approximately at the scale’s 20% point. Yet, in some cases, truncated charts’ tall bars and lack of denominator were particularly influential, eliciting extreme ratings not replicated for extended charts. This reveals a complex picture, with variation in the amount of bias observed. 

In the extended trials, denominator information was available through the text and the axis. Thus we cannot know which source (or sources) participants used to make their judgements. In the truncated trials, however, denominator information was only available through the text: the axis upper limit did not exceed the highest plotted value. In some of the truncated trials, we can see that this denominator information is used, since they approximately follow the bimodal pattern of the proportions of the data themselves. However, in other trials, it seems that the denominator information was not used, with high ratings awarded in response to the high bars. This suggests the responses were driven purely by the appearance of the values. Participants may have assumed that the upper limit was the denominator. 

Inconsistency in responses to truncated charts indicates variation in their influence on magnitude judgements. Identifying the source of this variation is necessary for understanding how these designs will influence viewers. Experiment 2 seeks to understand this inconsistency. We hypothesise that the influence of the appearance of values in a visualisation will be affected by whether the upper limit is seen as the denominator or not.

# Experiment 2

# Introduction

Experiment 1’s results suggest that bar charts’ upper bounds influence magnitude judgements. However, the source of this bias is unclear. Ratings for truncated charts were often in the same ballpark as extended charts, but were ocassionally much more extreme. Extreme ratings for truncated charts reflect the assumption that the axis upper bound represents the denominator. In contrast, less extreme ratings for truncated charts suggest use of the denominator specified in text. 

Whether denominator information is selected from charts or text seems to distinguish the two types of responses to truncated charts observed in E1. To experimentally manipulate this behaviour, we conducted an additional experiment in which denominator information was omitted from the text in half of trials. This allows us to test whether viewers’ assumptions about the denominator moderate the influence of a bar chart’s appearance. 

Increased ambiguity in denominator-absent trials warrants adapations to materials and procedure. 

First, high uncertainty may elicit unreliable random ratings by suppressing generation of impressions of magnitude. Including an additional measure of uncertainty allows direct indexing of this aspect of participants’ evaluations. This will build a more comprehensive picture of cognitive states and spontaneous interpretations generated by the plots. 

Second, in the denominator’s absence, participants may use denominator values stated in the text of previous trials to inform their judgements. A limited range of denominators (as in E1) would artificially diminish uncertainty regarding possible values, inhibiting authentic, spontaneous judgements. Therefore, we expand the range of denominators in E2. 

Finally, repeated exposure to relatively low magnitudes in experimental trials may prime response patterns. Increasing the number of fillers (which depict relatively high magnitudes) to match the number of experimental items will make both high and low magnitudes seem equally plausible. 

# Experiment 2 - Overview

# Pre-Registration

# Method
# Materials

We generated bar charts using ggplot2 in R (version ), using tidyverse version xxx and ggh4x version xxx. The same scenarios were used as in E1 and bar charts were generated using the same method. We expanded the range of denominators, employing the following values: Consequently, the values plotted in the charts and on the axes, differed from E1.

We added the word ‘surveyed’ or ‘assessed’ to [x] accompanying sentences in items, that were unclear in the absence of a denominator. 

# Procedure

The procedure was identical to Experiment 1. Average completion time was x minutes.

# Design

We employed a 2x2 Latin-squared design with two factors: axis upper bound and denominator presence. Participants viewed 8 different charts for each combination of conditions (32 experimental trials total). We also included xx filler items and six attention check items. 

# Participants

We recruited __ participants. 

# Analysis

We acknowledge that our magnitude rating measure may be unreliable becuase of low confidence.
We acknowledge that our confidence ratings measure may be unreliable becuase of poor introspection.
By combining these two analyses, we conduct a more robust analysis. It’s more precise and more comprehensive, because it indexes additional aspect of cognition. 

