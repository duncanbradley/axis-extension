Magnitude judgements, axis limits, proportional reasoning, denominator neglect, cognitive mechanisms, cognitive processing, in bar charts

# Abstract
Gauging a number’s magnitude can be difficult without sufficient background knowledge. Interpreting the magnitude of certain types of data requires awareness of a denominator. This contextual information can be implied through the visualisation’s design, or can be included in text accompanying a data visualisation. 

# Introduction

The question ‘Is it a big number?’ is often raised on the BBC radio programme _More or Less_ when probing eye-catching statistics. A figure of several million pounds may initially seem large, but may represent a small proportion of total government spending. Awareness of a denominator value can influence judgement of a number’s magnitude. In data visualisation, this contextual information can be displayed by extending an axis to accomodate the denominator value. However, this option is typically omitted from visualisations, since axis settings are typically based on plotted data by default. In this study, we investigate how these design settings affect interpretations of how large or small plotted values are.

# Overview

Across two experiments, we investigate the interpretation of magnitudes in bar charts. We plotted ficticious datasets which contained multiple observations of a subset, all with the same denominator values. In the first experiment, we displayed charts with axes which either terminated just above plotted values, or terminated at the denominator value, which was specified in accompanying text. Participants rated values’ magnitudes as higher when default axes were used, compared to extended axes. In the second experiment, we manipulated the axis range, as before, and also the presence of the denominator information in text. The difference in magnitude ratings between the two axis settings was greater when denominator information not supplied. This indicate that this information mitigates the biasing effect of visual appearance.

# Related Work

A wealth of research demonstrates biases in the interpretation of numbers. A disease’s survival rate elicits different judgements compared to its corresponding mortality rate (Tversky & Kahneman, 1981), the fat content of meat elicits different judgements compared to its corresponding lean content (Levin, 1987). The units used to express the same values (e.g., months vs. years) affect comparisons (Burson, Monga and Bagchi) and also interpretations of precision and accuracy (Zhang and Schwarz). 

Various biases in magnitude judgements reveal the importance of accounting for numerical context. Base rate neglect describes difficulty acknowledging population-level characteristics when making judgements about a sample (Cosmides and Tooby). Format neglect describes a bias against incorporating set size information when judging percentage formats (top 20%) and numerical formats (top 10, Sevilla et al., 2018). Denominator neglect occurs in judgements which overweight numerator information at the expense of denominator information (Reyna and Brainerd, 2008). The latter also leads (in part) to large percentages of a small number appearing greater than the *numerically equivalent* smaller percentages of a larger number (Li and Chapman, 2013). The general mechanism responsible for these biases is a failure to properly acknowledge numerical context.

Visualisations can help combat biases. Denominator information becomes visually available when icon arrays present both focal outcomes (e.g., number deceased) *and also* alternative outcomes (e.g., number survived). Research suggests that the combined array acts as a visual cue to the denominator, facilitating reasoning. For example, including alternative outcomes in an icon array, and therefore displaying denominator information, reduces denominator neglect, increasing comprehension of relative risk (Garcia-Retamero and Galesic, 2010). Icon arrays displaying both types of outcome are particularly helpful for understanding datasets with unequal denominators, and for individuals with high graph literacy (Okan et al., 2012). However, these effects are largest when depicting small probabilities (Okan et al. 2020). 

Stacked bar charts function similarly to icon arrays: lower bars represent the focal outcome, upper bar represent the alternative outcome, and their combination represents the denominator. Like icon arrays, stacked bar charts lessen the influence of denominator neglect (Stone et al., 2003). However, denominator information can be displayed in bar charts without using additional stacked bars to represent alternative outcomes. Extending an axis to incorporate the denominator value also communicates relevant numerical context. In this case, the blank space between the bars for focal outcomes and the upper axis limit corresponds to the alternative outcomes. Research has denonstrated that bar charts representing alternative outcomes with blank space increase perceptions of risk likelihood compared to those representing alternative outcomes with stacked bars (Stone et al., 2017). This research did not examine how presenting *denominator information* influences interpretation, since identical axis limits were employed across conditions.

Directly manipulating bar charts’ upper axis limits provides insight into use of this source of denominator information. Bar charts with axes which extended to the denominator value produces more accurate estimates of changes in risk (Garcia-Retamero and Galesic, 2010). This design also elicits decreased ratings of risk perception (Okan et al., 2018). In both studies, accompanying text included the denominator value. These studies demonstrate that extending axes to incorporate denominator values influences interpretation of risk. However, they do not provide specific evidence on how interpretations of *plotted values’ magnitudes* are affected. Garcia-Retamero and Galesic (2010) measured risk understanding: how faithfully participants represented the exact numbers displayed. Only assessing comprehension fails to capture individuals’ *impressions* of plotted information (Feldman-Stewart et al., 2007). Understanding the ‘gist’ obtained from a visualisation is crucial since this takes precedence over ‘verbatim’ information when making decisions (Reyna, 2008). Reyna (2008) argues that assessing gist requires consideration of how plotted values’ magnitudes are interpreted, since plotted values’ relative differences are only one aspect of a dataset conveyed by a visualisation. Indeed, Okan et al. (2018) collected magnitude ratings, yet these cannot be examined in isolation, since they were assimilated into a combined measure of perceived risk, along with ratings of the degree of *difference between* plotted values. Outside the risk communication literature, a substantial body of research has demonstrated that judgements of the difference between values change as a function of axis range (Pandey, Correll, Witt, Yang). In spite of this, research has neglected the effects of axis range on judgements of the magnitude of *the values themselves*. This is the focus of experiments in this work.

Various accounts have sought to explain the consequences of including denominator information in visualisations. Depicting denominators may facilitate understanding of part-to-whole relationships, diminishing class-inclusion errors associated with denominator neglect (Reyna, 2008). This argument is consistent with Fuzzy Trace Theory, which also predicts the influence of physical attributes in gist representations, such that the appearance of short bars in charts with extended axes may contribute to smaller magnitude judgements (Reyna, 2008). Additionally, Stone et al. (2018) suggest facilitation of proportional reasoning may be largely responsible for observed effects. Increasing the salience of the denominator in text fails to affect judgements, yet a graphical representation effectively communicates the true scale of the denominator, helping put numerators into perspective. 

Prior work on extending axes, discussed above, did not disclose methods for determining axis limits in charts without denominators. The values used as upper limits appear to be arbitrary. In the present study, we increase ecological validity by employing default axis limits from ggplot2, a popular visualisation tool. Furthermore, previous studies’ statistical power and generalisability have been limited by the use of one (Okan et al. 2018) or two (Garcia-Retamero and Galesic, 2010) trials per participant. Our experiments explore a range of scenarios (32 experimental trials per participant). The data presented are also unrelated to risk judgements, the domain of this prior work.

# Experiment 1

# Discussion

In this experiment, we explored the role of y-axis upper bounds in bar charts. We found that axes which extended beyond the plotted data were associated with greater magnitudes, compared to axes which terminated just above the plotted data. Axes change the appearance of plotted data, adding a visual cues to context, which biases interpretations of plotted values. 

On the whole, participants’ responded to truncated and extended charts with broadly similar approaches. Ratings tended to correspond to the proportion of the denominator taken up by the plotted values. For example, when plotted values roughly equalled 20% of the denominator value, markers were placed approximately at the scale’s 20% point. Yet, in some cases, truncated charts’ tall bars and lack of denominator were particularly influential, eliciting extreme ratings not replicated for extended charts. This reveals a complex picture, with variation in the amount of bias observed. 

In the extended trials, denominator information was available through the text and the axis. Thus we cannot know which source (or sources) participants used to make their judgements. In the truncated trials, however, denominator information was only available through the text: the axis upper limit did not exceed the highest plotted value. In some of the truncated trials, we can see that this denominator information is used, since they approximately follow the bimodal pattern of the proportions of the data themselves. However, in other trials, it seems that the denominator information was not used, with high ratings awarded in response to the high bars. This suggests the responses were driven purely by the appearance of the values. Participants may have assumed that the upper limit was the denominator. 

Inconsistency in responses to truncated charts indicates variation in their influence on magnitude judgements. Identifying the source of this variation is necessary for understanding how these designs will influence viewers. Experiment 2 seeks to understand this inconsistency. We hypothesise that the influence of the appearance of values in a visualisation will be affected by whether the upper limit is seen as the denominator or not.

The absence of visual cues to numerical context in truncated charts did not totally prohibit recognition of this context. 

# Experiment 2

Experiment 1’s results suggest that bar charts’ upper bounds influence magnitude judgements. However, the source of this bias is unclear. Ratings for truncated charts were often in the same ballpark as extended charts, but were ocassionally much more extreme. Extreme ratings for truncated charts reflect the assumption that the axis upper bound represents the denominator. In contrast, less extreme ratings for truncated charts suggest use of the denominator specified in text. 

Whether denominator information is selected from charts or text seems to distinguish the two types of responses to truncated charts observed in E1. To experimentally manipulate this behaviour, we conducted an additional experiment in which denominator information was omitted from the text in half of trials. This allows us to test whether viewers’ assumptions about the denominator moderate the influence of a bar chart’s appearance. 

Increased ambiguity in denominator-absent trials warrants adapations to materials and procedure. 

First, high uncertainty may elicit unreliable random ratings by suppressing generation of impressions of magnitude. Including an additional measure of uncertainty allows direct indexing of this aspect of participants’ evaluations. This will build a more comprehensive picture of cognitive states and spontaneous interpretations generated by the plots. 

Second, in the denominator’s absence, participants may use denominator values stated in the text of previous trials to inform their judgements. A limited range of denominators (as in E1) would artificially diminish uncertainty regarding possible values, inhibiting authentic, spontaneous judgements. Therefore, we expand the range of denominators in E2. 

Finally, repeated exposure to relatively low magnitudes in experimental trials may prime response patterns. Increasing the number of fillers (which depict relatively high magnitudes) to match the number of experimental items will make both high and low magnitudes seem equally plausible. 

# Discussion

# General Discussion

Visual cues to denominator are easily implemented in common data visualisation software, but are not included by default. We demonstrate that magnitude was interpreted as smaller when a bar chart’s axes were extended to the denominator value, rather than the default settings. This was particularly true when no denominator information accompanied the chart. This provides insight into the cognitive process involved in interpreting magnitude in bar charts, indicating that denominator information is an important aspect in interpretation of charts.

In Experiment 1, we identified a framing effect, wherein charts with axes that terminated just above the plotted data elicited judgements of greater magnitude, compared to charts with axes that accomodated a much higher denominator value. The extended axes condition had a visual cue to denominator, but in both conditions denominator was explicitly presented in the text in both conditions. However, some extreme responses in the default condition appeared to disregard this denominator. Given the apparent importance of denominator information, we conducted another experiment in order to experimentally examine the denominator’s role in the cognitive processing of magnitude. We examined how interpretations were affected by the absence of denominator information, quantifying the influence of integrating external denominator information in resolving ambiguity in different chart designs. 

Experiment 2 makes several contributions. First, we replicated the main effect from E1. That is, an overall bias to interpret magnitudes as smaller when shown with an extended axis, rather than default axis. Second, we illustrate the impact of including a denominator information in text, which affects interpretations differently depending on whether a chart’s axis also incorporates this value. The magnitude of values plotted using default axes can be totally ambiguous without denominator information in text. The denominator’s role in reducing ambiguity is illustrated by drastically higher ratings when absent.  Interpretation of values plotted using extended axes was affected to a lesser extent by denominator information in text. This suggests that the upper axis bound is used as a cue to the denominator when interpreting magnitudes. The impact of chart design is diminished if the chart is accompanied by a denominator. 

Third, we replicated the pattern of responses observed in E1 for the condition where charts were truncated and denominators were present in text. This pattern consists of a small number of higher magnitude ratings, in contrast to the general tendency for lower magnitude ratings. @fig-e2-mag reveals a close resemblance between the distribution of these higher ratings and the overall distribution of ratings for truncated charts without accompanying denominator information. This suggests that these extreme ratings may share a cause. Extreme ratings in the presence of a denominator likely result from failure to account for that denominator information and a subsequent total reliance on visual framing. Equivalent ratings in the denominator absent condition can be considered an experimentally-induced version of the same cognitive process. 

Fourth, additional ratings collected in E2 provide insight into participants’ confidence. Although analysis of these ratings indicated an interaction between denominator information and axis setting, the minuscule associated effect size casts doubt over its practical significance. In spite of this, absence of a denominator clearly lowered confidence, compared to when a denominator was present. This suggests that participants were hesitant to form magnitude judgements based solely on a bar chart’s appearance. Textual confirmation of a denominator was prefered regardless of graphical cues to context.

## Relationship to Prior Work

For fuzzy-trace theory, the goal is to promote an appropriate gist-level message, rather than expecting memorisation of verbatim information, since gist takes precedence over verbatim information when it comes to reasoning. 

We contribute a broad body of literature demonstrating biases in the interpretation of numerical information (). Our results resemble a type of framing effect, where presentation format elicit different interpretations of the same values. 

They demonstrate that insufficient attention to denominators reduces comprehension of presented information (Okan et al., 2018).


Like others, we found 
  * the role of axis limits
  * the importance of denominator information
… In addition, we Reveal + investigate inconsistency - we demonstrate that variability in ratings, and explore.
Our findings are consistent with foreground-background theory/proportional reasoning theory.

Much prior research has observed that manipulating axis limits can change interpretations of the difference between values. We contribute to a smaller body of related work on the effect of axis limits on the interpretation of the magnitude of values. Even those studies which have looked at magnitude, have tended to use composite measures, or have investigate related concepts, such as understanding. The benefit of looking at interpretations is that they are closest to gist - the takeaway message, rather the verbatim information which is unlikely to stick in the mind. Look at justification in Stone et al. 2015.  

Some (no) prior work has investigated the role of additional information. We demonstrate that contextual information can limit a bias. The observed effects may be mitigated by additional information. 

Whereas much prior research has been limited to interpretation of risk probability information (), we demonstrate that biases in interpretation exist for a range of non-risk scenarios. This provides confidence that these findings are widely applicable. This work also tends to use a single trial. With multiple trials per condition, we have enhanced statistical power, increasing confidence in our results. 

When similar explorations of the visual denominator displays developed charts without denominator information, they appeared to use abitrary upper bounds. By using the upper bounds selected by the ggplot2 visualisation tool, we increase ecoloical validity. Our results are more relevant to charts people create, consequently creating better practical recommendations.

Okan et al. (2018) suggest that biases related to axis limits will be affected by data visualisation literacy. They found… We did not find evidence that data visualisation literacy affected our results. It’s possible that this measure captures whether people have sufficient ability to extract information but can’t predict the degree to which they’ll be influenced by subtler design choices (Yang et al., 2021). Reyna and Brainerd report that several studies have denomstrated that those with high numeracy are less susceptible to bias. Gauging magnitude by calculating at proprotions would certainly rely on numeracy, so this is perhaps a better candidate for understanding individual differences. Numeracy (but not necessarily visualisation literacy) is associated with increased sensitivity to framing effects (Peters et al. 2006). 

Appearance matters for gist representations - physical sizes of the elements on a graph, and relations between these elements, contribute, so foreground only charts may increase perceptions of magnitude (Reyna, 2008).

## Implications

For visualisations intended to convey magnitudes, both the axis upper bound and accompanying text warrant consideration from data visualisation designers. Where it is not possible to present a denominator in accompanying text, an extended axis should be used, in order to display plotted data in context. Even when a denominator is present, a default axis will elicit more variation in responses. Not all participants will interpret the chart in the same way as they would if it was displayed graphically. An extended axis provides insurance against those failing to take account of denominator information in the accompanying text. 

We also found that *confidence* ratings are consistently high in the absence of a denominator, despite use of an extended axis. In order to improve confidence, denominators should be explicitly provided, regardless of whether the axes upper bound shows this denominator or not.

It is also worth considering situations which are likely to accentuate this bias. Even when denominator information is supplied in text, cognitive load may prevent participants from taking it into account. We suspect that ratings would resemble those where it is absent in E2. Under high cognitive load, participants’ ratings are most likely to resemble their best guess if an extended axis is used. Pelham et al (1994) find issues 

## Limitations and Future Work

In this work, we are concerned with charts which are designed to convey plotted values’ magnitudes. However, when designing charts to convey differences between values, design considerations will be different. Differences will be easiest to see when a smaller axis range is used. Indeed, this is why the default settings are so defined. Blank space is unhelpful when it comes to identifying differences. Therefore, we don’t claim that extended axes are suitable for all communicative scenarios. However, we illustrate what will happen if denominator information is not supplied. 

The charts used in this experiment employ a single denominator, corresponding to the denominator for each bar. Our experiment applies best to controlled scenarios, such as surveys and experiments, where each category plotted shares a single denominator. Our findings may also extend to cases with variation in denominators, depicted using proportions or percentages. However, we recognise that this is not always possible. Also releveant is that magnitude judgements are not only informed by proportions, the subject might play a role in interpretation. Future work could explore these points. 

This work employed magnitude ratings, to assess interpretations. This captures the type of assessment likely to precede decision-making. It’s distinct and valuable. However, future work could employ a decision-making task, to explore the effects on behaviour. 

Our investigation was interested in interpretations of the types of default plots produced by default settings. Obviously we only looked at the plots produced using ggplot2, though we expected interpretations for other tools’ default charts to elicit similar responses. For uniformity in our materials, we used only default charts where the highest gridlines fell below the highest value. So, whilst we do investigate the most common scenario, we cannot therefore make comparisons between those where the highest gridline is above the highest value. Future work should explore this. 

## Conclusion

In two experiments, we expose the effects of default and extended axis limits on magnitude judgements, and illustrate how awareness of a denominator can play a crucial role. This provides important insight into the cognitive processes involved in interpreting magnitude in bar charts. We provide recommendations for facilitating interpretation of magnitude in context. Visualisation design is important, but accompanying information also requires consideration. Framing effects demonstrate the power of presentation format on takeaway message. 






