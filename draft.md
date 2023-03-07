# Introduction

The question ‘Is it a big number?’ is often raised on the BBC radio programme _More or Less_ when probing eye-catching statistics. A figure of several million pounds may initially seem large but may represent a small proportion of total government spending. In data visualisation, this contextual information can be displayed, but is often ommited by default. In this study, we investigate how *this design choice* affects interpretations of numbers’ magnitudes. The magnitude of plotted values is interpreted as larger when the y-axis terminates close to these values, and fails to accomodate a denominator. Thus, we evaluate the consequences of default settings in data visualisation software. 

truncated -> default? even though truncated is technically correct, don’t want to confuse readers with the typical use of the term. Also don’t want to overplay the default setting, given that we were selective here. Could go with ‘denominator present/absent’ but this will be confusing when it comes to experiment 2. 

AE2: in no-denominator condition, should there be a 2nd sentence explaining that the denominator is *the same* for all x, even if it’s doesn’t state the number?

# Related Work

# Experiment 1 - Overview

Experiment 1 investigates the influence of y-axis upper bounds on interpretations of plotted values’ magnitude. Participants viewed bar charts with y-axes which either terminated just above the bars, or extended to a denominator value well above the bars. Thus, the same data is displayed with and without its surrounding context. Comparing participants’ interpretations captures the influence of y-axis limits on magnitude judgements.

# Pre-Registration

We predicted that bat charts with truncated axes would elicit greater magnitude ratings than bar charts with extended axes. Pre-registration is available at https://osf.io/e9j43. 

# Materials

We developed 40 scenarios relating to fictitious surveys and experiments. Each scenario described a study evaluating a specific outcome in each of five categories (e.g., the number of employees achieving performance targets, in five finance companies). The denominator (e.g., total number of employees) was identical for each category. Participants were asked to  make judgements about overall magnitude (e.g., How well did the employees perform?), responding on a visual analogue scale with anchors at the extremes (e.g., ‘very poorly’, ‘very well’).

We generated bar charts using ggplot2 in R. Both versions of each chart displayed the same five values, but employed different y-axis upper bounds. For extended charts, the denominator from the text description (400, 500, or 600) was used as the y-axis upper bound. The denominators were also used in the generation of the datasets, which employed a normal distribution with a mean equal to 20% or 40% of a given denominator value, and a standard deviation equal to 1% of a given denominator value. 

In truncated charts, the y-axis upper bound was dictated by ggplot2’s default axis settings. These settings automatically identify a set of convenient breaks for each dataset, then slightly extend the plot area, adding 5% of the axis range to the upper axis limit. In both conditions, contrary to the default settings, a smaller expansion factor of 1% was applied to the lower axis limit, eliminating visible space below the 0 baseline.

The default settings tended to produce charts where the highest axis break fell below the tallest bar. For the purposes of consistency, when the opposite situation occured, we automatically generated an alternative dataset to ensure the highest axis break appeared below the tallest bar. This dataset was used in both conditions. In our stimuli set, x alternative datasets were generated in this way. 

In experimental trials, plotted values consisted of relatively small proportions of the denominator value specified in the accompanying text (around 20% or 40%). To introduce variety and encourage attention, eight filler trials showed plotted values which were around 90% of their denominator value. 

We included six attention check trials to assess participants’ engagement. These trials were similar to experimental and filler trials, comprising of text, a bar chart, question and visual analogue scale. However, participants were instructed to ignore the bar chart and provide a specified response on the visual analogue scale. 

# Procedure

Participants were instructed to carry out the experiment using a laptop or desktop computer (not a mobile phone or tablet). After providing informed consent, participants completed a demographic questionnaire and Garcia-Retamero et al.’s (2016) subjective data visualisation literacy measure. Participants were asked to image they were a researcher tasked with determining the outcome of experiments and surveys. They were instructed to make an overall assessment of all data presented in the graph after studying the text, graph, and question. Items were presented in a random order.

Questions were tailored to specific scenarios, but each question required participants to make a judgement about the data’s magnitude, along a given spectrum. For example, if the chart showed the number of people using public transport regularly, participants were asked to assess the popularity of public transport, on a scale from “very unpopular” to “very popular”. 

Participants were permitted to move the response marker as many times as they liked before proceeding to the next trial, but could not return to previous trials. Finally, they were informed that all data presented was fictitious and were given the option to provide comments on the experiment and describe any strategies used. Average completion time was x minutes. 

# Design

We employed a within-participants design: participants viewed 16 different charts in each of the two conditions (32 experimental trials total). We also included eight filler items and six attention check items.

# Participants

Participants were recruited from Prolific.co. The experiment was advertised to fluent English speakers, who had normal-or-corrected to normal vision, who had previously participated in at least 100 studies on Prolific. 

Per our pre-registeration, we recruited participants until 150 had successfully completed the experiment, excluding seven individuals who answered more than 1 attention check item incorrectly. Participants with accepted submissions received £3.50. 

For those in the final sample, The average age was x, the average graph literacy score was x. The participnats were x%female, y% male, z% non-binary. j% had completed at least high school education. 

This experiment was approved by the University of Manchester’s Division of Neuroscience and Experimental Psychology Ethics Committee (ethics code: 2022-11115-24245). 

# Discussion

In this experiment, we explored the role of y-axis upper bounds in bar charts. We found that axes which extended beyond the plotted data were associated with greater magnitudes, compared to axes which terminated just above the plotted data. Axes change the appearance of plotted data, add visual cues to context, biasing interpretations of those values. 

On the whole, participants’ responded to truncated and extended charts with broadly similar approaches. Ratings tended to correspond to the proportion of the denominator taken up by the plotted values. For example, when plotted values roughly equalled 20% of the denominator value, markers were placed approximately at the scale’s 20% point. Yet, in some cases, truncated charts’ tall bars and lack of denominator were particularly influential, eliciting extreme ratings not replicated for extended charts. However, these extreme ratings were not the only difference between conditions. Even ratings below the visual analogue scale’s midpoint are influenced by axis upper bounds. This reveals a complex picture, with a strong bias in a minority of cases, and a subtle bias in a majority. 

In the extended trials, denominator information was available through the text and the axis. Thus we cannot know which source (or sources) participants used to make their judgements. In the truncated trials, however, denominator information was only available through the text: the axis upper limit was bounded by the highest plotted value. In some of the truncated trials, we can see that this denominator information is used, since they follow approximately the bimodal pattern of the proportions of the data themselves. Despite following this pattern, they still exhibited a slight bias. This suggests that tall bars in truncated charts biased participants’ *calculation* of the percentage/judgements of proportion (could be behavioural rather than cognitive). However, in other trials, it seems that the denominator information was not used, with high ratings awarded in response to the high bars. This suggests the responses were driven purely by the appearance of the values. Participants may have assumed that the upper limit was the denominator. 

Inconsistency in responses to truncated charts indicates variation in their influence on magnitude judgements. Identifying the source of this variation is necessary for accurately predicting/understanding how these designs will influence viewers. Experiment 2 seeks to understand this inconsistency. We hypothesise that the influence of the appearance of values in a visualisation will be affected by whether the upper limit is seen as the denominator or not.

# Experiment 2

# Introduction

Experiment 1’s results suggest that bar charts’ upper bounds influence magnitude judgements. However, the amount of bias is unclear. Ratings for truncated charts were ocassionally much more extreme than for extended charts, but often only marginally greater. Extreme ratings for truncated charts reflect the assumption that the axis upper bound represents the denominator. In contrast, less extreme ratings for truncated charts indicate a visual bias in combination with use of the denominator specified in text. 

Whether denominator information is selected from charts or text seems to distinguish the larger and smaller effects observed in E1. To experimentally manipulate this factor, we conducted an additional experiment in which denominator information was omitted from the text in half of trials. Ambiguity about the denominator will cause participants to rely on other information when judging magnitude, such as the appearance of data. However, whilst this should occur in an isolated case, how will other trials affect it? Exposure to charts which do and do not display denominators, could prompt various other strategies. This may obscure the true effect which would occur in the real world. 

In these cases, participants would be unaware of whether the upper limit corresponded to the denominator: unaware whether the appearance of bars was an honest or misleading account of magnitude.  

In Experiment 1, there was no real ambiguity about the true denominator. Whilst the design of the bar charts may have hinted at something, it was always stated in text. In Experiment 2, however, this ambiguity is real. As a consequence of the greater uncertainty, participants will rely more on other information (e.g. fillers) and may notice patterns. Therefore, we need to update some aspects of Experiment 1 in order to avoid influencing people’s ratings through this surrounding information.

Fillers - reduce the explanation word count

In Experiment 1, there was an imbalance of (experimental) trials where the denominator was always much higher than the highest plotted value, and (filler) trials where the denominator was only marginally higher than the highest plotted value. Thus, participants may be biased towards assuming that the denominator is much higher than the presented values, even when they are not given this information. This would prevent us from properly identifying the effect of the denominator information. What we want is a case where they genuinely do not know. This means that high and low denominators have to be just as likely. Consequently, even though we will still only analyse experimental trials, the fillers become more important. Additionally, by paying attention to what the actual denominators are in the denominator-present trials, participants may build up a picture and use this understanding in the denominator-absent trials. Thus, we need it to be harder for participants to guess the denominators. This requires a wider range of denominator values than in E1. 

Participants are likely to make additional assumptions about the denominator. Thus, the fillers now serve to balance the probabilities of high and low values, not just provide variety (as in E1).

Data Means

Becuase filler trials should seem similar 

The absence of visual cues to numerical context in truncated charts did not totally prohibit recognition of this context. 


# Experiment 2 - Overview

# Pre-Registration

# Method
# Materials

Bar charts were generated using the same method as E1.
Data means were different 
We produced an additional 24 filler scenarios.

Denominator present vs. denominator absent - omission or replacement?
Gridlines for filler trials
How did we decide denominator values for fillers. 

# Procedure

The procedure was identical to Experiment 1. Average completion time was x minutes.

# Design

We employed a 2x2 Latin-squared design with two factors: axis upper bound and denominator presence. Participants viewed 8 different charts for each combination of conditions (32 experimental trials total). We also included 32 filler items and six attention check items.

# Participants

We recruited __ participants. 

