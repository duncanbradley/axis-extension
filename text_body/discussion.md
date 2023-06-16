# General Discussion

*Axis limits can be easily manipulated in common data visualisation software, in order to include a visual cue to denominator information. However, the default is based on the data, which often omits denominator information. We demonstrate that magnitude was interpreted as smaller when a bar chart’s axes were extended to the denominator value, rather than the default settings. The influence of axis limits was particularly large when no denominator information was included in the text accompaning a chart. This provides insight into the cognitive process involved in magnitude judgements, indicating that denominator information is an important aspect in interpreting bar charts.*

In Experiment 1, we identified a framing effect, wherein charts with axes that terminated just above the plotted data elicited judgements of greater magnitude, compared to charts with axes that accomodated a much higher denominator value. The extended axes condition had a visual cue to denominator, but in both conditions the denominator was explicitly presented in the text. However, some extreme responses in the default condition appeared to disregard this denominator. Given the apparent importance of denominator information, we conducted another experiment in order to experimentally examine the denominator’s role in the cognitive processing of magnitude. We examined how interpretations were affected by the absence of denominator information, quantifying the influence of integrating external denominator information in resolving ambiguity in different chart designs. Whether denominator information is selected from charts or text seems to distinguish the two types of responses to truncated charts observed in E1. This allows us to test whether viewers’ assumptions about the denominator moderate the influence of a bar chart’s appearance. 

Experiment 2 makes several contributions. First, we replicated the main effect from E1. That is, we observed an overall bias to interpret magnitudes as smaller when shown with an extended axis, rather than default axis. Second, we illustrate the impact of including a denominator information in text, which affects interpretations differently depending on whether a chart’s axis also incorporates this value. The magnitude of values plotted using default axes can be totally ambiguous without denominator information in text. The denominator’s role in reducing ambiguity is illustrated by drastically higher ratings when absent.  Interpretation of values plotted using extended axes was affected to a lesser extent by denominator information in text. This suggests that the upper axis bound is used as a cue to the denominator when interpreting magnitudes. The impact of chart design is diminished if the chart is accompanied by a denominator. 

Third, we replicated the pattern of responses observed in E1 for the condition where charts were truncated and denominators were present in text. This pattern consists of a small number of higher magnitude ratings, in contrast to the general tendency for lower magnitude ratings. @fig-e2-mag reveals a close resemblance between the distribution of these higher ratings and the overall distribution of ratings for truncated charts without accompanying denominator information. This suggests that these extreme ratings may share a cause. Extreme ratings in the presence of a denominator likely result from failure to account for that denominator information and a subsequent total reliance on visual framing. Equivalent ratings in the denominator absent condition can be considered an experimentally-induced version of the same cognitive process. 

*Fourth, additional ratings collected in E2 provide insight into participants’ confidence. Although analysis of these ratings indicated an interaction between denominator information and axis limits, the minuscule effect size casts doubt over its practical significance. In spite of this, absence of a denominator clearly lowered confidence. This suggests that participants were hesitant to form magnitude judgements based solely on a bar chart’s appearance. Inclusion of a denominator value in text was desired regardless of graphical cues to context.*

Although our manipulation is crude, we want to know what happens what you remove denominator information altogether. Bias is not an indicator of faulty reasoning, but provides insight into cognitive mechanisms. 

## Implications

For visualisations intended to convey magnitudes, both the axis upper bound and accompanying text warrant consideration from data visualisation designers. Where it is not possible to present a denominator in accompanying text, an extended axis should be used, in order to display plotted data in context. Even when a denominator is present, a default axis will elicit more variation in responses. Not all participants will interpret the chart in the same way as they would if it was displayed graphically. An extended axis provides insurance against those failing to take account of denominator information in the accompanying text. 

Where background knowledge is missing, omitting a denominator influences judgement more than chart design. 

We also found that *confidence* ratings are consistently high in the absence of a denominator, despite use of an extended axis. In order to improve confidence, denominators should be explicitly provided, regardless of whether the axes upper bound shows this denominator or not.

It is also worth considering situations which are likely to accentuate this bias. Even when denominator information is supplied in text, cognitive load may prevent participants from taking it into account. We suspect that ratings would resemble those where it is absent in E2. Under high cognitive load, participants’ ratings are most likely to resemble their best guess if an extended axis is used. Pelham et al (1994) find issues 

## Relationship to Prior Work

*We contribute to a large body of evidence regarding biases in the interpretation of numerical information, specifically *framing effects* (Tversky Kahneman).*

*Our results are consistent with research demonstrating that manipulating a bar chart’s axis limit influences interpretation of plotted values (Garcia-Retamero and Galesic, 2010; Okan et al., 2018). Furthermore, Okan et al. (2018) found that participants’ perceptions of risk were influenced more by bar charts’ axis limits when labels containing numerator and denominator information were excluded. Similarly, we observed that interpretations of magnitude were influenced more by bar charts’ axis limits when excluding denominator values from accompanying text.*

*Previous work exploring interpretation of magnitude in bar charts observed different responses according to whether stacked bars or blank space conveyed alternative outcomes (Stone et al., 2017). We demonstrate the manipulating the amount of blank space above bars can elicit different magnitude judgements, without plotting alternative outcomes explicitly.*

Stone 2015 - compared to numerical-only displays to graphical depictions without denominator information, found that the latter increased perceptions of risk. This is consistent with our finding that higher ratings when denominator and numerator in different formats. 

### Improvements on Similar Work

*Our study of participants’ judgements of values’ magnitudes in noteworthy becuase the vast majority of related work has explored participants’ judgements of *differences between* values (). Responses to questions about values’ magnitudes have often been obscured through inclusion in composite measures (e.g., Okan et al., 2018), or have been collected to assess comprehension, rather than interpretation (e.g., Garcia-Retamero et al., 2010). As Stone et al. (2015) discuss, failing to consider interpretations of values’ magnitudes reflects two issues. First, neglecting values’ magnitudes overlooks a relevant aspect of plotted data. Second, neglecting participants’ *interpretations* limits insight into decision-making, which is not simply governed by accurate retrieval of information (see Reyna, 2008).*

*Whereas much prior research has been limited to interpretation of risk information (), we demonstrate that biases in interpretation extend to a wide range of non-risk scenarios. This provides confidence that these findings are widely applicable, and using *multiple* trials per participant enhances statistical power. When generating charts that do not include denominator values, previous experiments () appear to have employed abritary axis limits. By employing axis limits based on with {ggplot2}’s default settings, our materials reflect common practice, enhancing our experiment’s ecological validity.*

### Relation to Existing Theory

Appearance matters for gist representations - physical sizes of the elements on a graph, and relations between these elements, contribute, so foreground only charts may increase perceptions of magnitude (Reyna, 2008).

For fuzzy-trace theory, the goal is to promote an appropriate gist-level message, rather than expecting memorisation of verbatim information, since gist takes precedence over verbatim information when it comes to reasoning. 

Proportional reasoning:
Denominator neglect:
Fuzzy-trace theory and gist: help to see the values in context

*We did not find evidence that data visualisation literacy affected our results. This is contrary to the finding that data visualisation literacy predicted the efficacy of using icon arrays to reduce denominator neglect (Okan et al., 2012). However, this is consistent with the finding that the impact of manipulations like ours (axis range, numerical labels) are independent of data visualisation literacy (Okan et al., 2018). This measure may capture whether people have sufficient ability to extract information rather than predicting the degree to which they will be influenced by subtler design choices (Yang et al., 2021). Numeracy is associated with decreased sensitivity to framing effects (Peters et al. 2006), so this may be a better candidate for understanding individual differences in response to visualisation design.*

## Limitations and Future Work

*This work is concerned with visualisations intended to convey plotted values’ magnitudes. However, design considerations will differ when conveying *differences* between values. In this case, axis ranges should be determined by the magnitude of the differences (Correll, Witt, Yang). Consequently, our recomendations are not relevant for all communicative scenarios. However, maintaining awareness of the implication of plotted values’ magnitudes may help avoid misinterpretation of data, even if this type of judgement is not a primary concern.*

*Our experiment applies best to controlled scenarios, such as surveys and experiments, where all categories plotted share the same denominator. These findings may also extend to datasets with unequal denominators, if bars are used to depict proportions or percentages, permitting use of a single meaningful axis limit. However, this design will not be suitable for plotting other types of dataset. We also acknowledge that proportions are not the only factor influencing magnitude judgements: the subject matter is also likely to inform assessments. For example, bars clearly depicting 1 or 2 hours spent on administrative tasks within a 35-hour work week will still elicit differences of opinion regarding whether these values are high or low.*

*Our materials only included visualisations produced using {ggplot2}. Therefore, our conclusions about default axis limits only pertain to bar charts created using this package’s settings, though we expect other visualisation libraries’ default settings to elicit similar responses, due to similarity in their behaviour. For uniformity in our materials, we only employed default charts where the highest gridline was positioned below the highest value. Whilst was the most common visual arrangement, we cannot provide evidence on the minority of cases where the highest gridline exceeds the highest value. Whether this influences magnitude judgements could be explored in future experiments. In addition, future work should employ decision-making tasks to quantify the impact of axis limits on applied judgements.*

## Conclusion

*In two experiments, we generated evidence on the effects of default and extended axis limits, illustrating the influential role of denominators in gauging magnitude. We provide insight into the cognitive processes involved in interpreting plotted values’ magnitudes in bar charts and offer recommendations for facilitating judgements. Framing effects demonstrate the power of design and presentation choices on the intepretation of numbers.*






