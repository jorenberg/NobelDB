## NobelDB®
<i>A Dedicated Database of Nobel Laureates</i>.

## Data Collection
<b>Before</b>, I even started searching online I already had an idea in my head about the data that I wanted to play with this month; all Nobel Prize Winners in their fields since the very first <b>Nobel Prize in 1901</b>.

### About Nobel Foundation
Thankfully, the <b>Nobel Foundation</b> & [Nobelprize.org](http://www.nobelprize.org/) - is a registered trademark, and is produced, managed and maintained by Nobel Media, had created exactly the database of information for every Nobel Prize since 1901, including the Nobel Laureate's biographies, Nobel Lectures, interviews, photos, articles, video clips, and press releases. Nobelprize.org provides comprehensive, first-hand information about the Nobel Prize and Nobel Laureates in Physics, Chemistry, Physiology or Medicine, Literature and Peace starting in 1901, as well as the Sveriges Riksbank Prize in Economic Sciences in Memory of Alfred Nobel and the Economics Laureates starting in 1969.

I would like to thanks, the 'Nobel Foundation' — had created exactly this dataset right before the 2016 Nobel Prize Announcements. Why, I have come to Nobel Foundation, because there wasn't any other place that had the data as nicely structured and informative.<br/><br/>After, 2016 Nobel Prize Announcements — I "only" needed to add the prizes for 2016. Again the Nobel Foundation helped out by supplying a dataset with all of the Nobel Laureates from 1901.

### Nobel Facts
When, I got the raw data, primarily some facts — I have obtained:
- The Nobel Peace Prize — has been awarded 96 times to 129 Nobel Laureates between 1901 and 2015, 103 individuals and 26 organizations. Since the International Committee of the Red Cross has been awarded the Nobel Peace Prize three times (in 1917, 1944 and 1963), and the Office of the United Nations High Commissioner for Refugees has been awarded the Nobel Peace Prize two times (in 1954 and 1981), there are 23 individual organizations which have been awarded the Nobel Peace Prize.
- The Nobel Prize in Physics — has been awarded 109 times to 201 Nobel Laureates between 1901 and 2015. John Bardeen is the only Nobel Laureate who has been awarded the Nobel Prize in Physics twice, in 1956 and 1972. This means that a total of 200 individuals have received the Nobel Prize in Physics.
- The Nobel Prize in Chemistry — has been awarded 107 times to 172 Nobel Laureates between 1901 and 2015. Frederick Sanger is the only Nobel Laureate who has been awarded the Nobel Prize in Chemistry twice, in 1958 and 1980. This means that a total of 171 individuals have received the Nobel Prize in Chemistry.
- The Nobel Prize in Physiology or Medicine — has been awarded 106 times to 210 Nobel Laureates between 1901 and 2015.
- The Nobel Prize in Literature — has been awarded 108 times to 112 Nobel Laureates between 1901 and 2015.
- The Sveriges Riksbank Prize in Economic Sciences in Memory of Alfred Nobel — has been awarded 47 times to 76 Laureates between 1969 and 2015.
- <b>Note:</b> Between 1901 and 2015, the Nobel Prizes and the Prize in Economic Sciences were awarded 573 times to 900 people and organizations. With some receiving the Nobel Prize more than once, this makes a total of 870 individuals and 23 organizations.

<b>573 Nobel Prizes<i>!</i></b> — From 1901 to 2015, the Nobel Prizes & the Prize in Economic Sciences were awarded 573 times.

| Nobel Prize | Number of Prizes | Number of Laureates | Awarded to one Laureate | Shared by two Laureates | Shared by three Laureates |
| ----------- | ---------------- | ------------------- | ----------------------- | ----------------------- | ------------------------- |
| Physics     | 109	             | 201                 | 47                      | 32                      | 30                        |
| Chemistry   | 107	             | 172                 | 63                      | 22                      | 22                        |
| Medicine    | 106	             | 210                 | 38                      | 31                      | 37                        |
| Literature  | 108	             | 112                 | 104                     | 04                      | --                        |
| Peace       | 96	             | 103 + 26<b>*</b>    | 65                      | 29                      | 02                        |
| Economic Sciences | 47         | 76                  | 24                      | 17                      | 06                        |
| <b>Total:</b> | 573            | 900                 | 341                     | 135                     | 97                        |

<b>*</b> These are organizations.

<i>Last Update</i>: 24<sup>th</sup> September, 2016.

## Data Mining Process
After, primary examination of obtained/acquired raw data, I'm going through Data Mining Process — that, I've designed specially for NobelDB®. Data Mining requires data preparation, model building, model testing and computing lift for a model, model applying (scoring), and model deployment.
The methodology for data mining and steps in the process are:

1. <b>Business Understanding</b>: Understand the project objectives and requirements from a business perspective, and then convert this knowledge into a data mining problem definition and a preliminary plan designed to achieve the objectives.
2. <b>Data Understanding</b>: Start by collecting data, then get familiar with the data, to identify data quality problems, to discover first insights into the data, or to detect interesting subsets to form hypotheses about hidden information.
3. <b>Data Preparation</b>: Includes all activities required to construct the final data set (data that will be fed into the modeling tool) from the initial raw data. Tasks include table, case, and attribute selection as well as transformation and cleaning of data for modelling tools.
4. <b>Data Modelling</b>: Select and apply a variety of modelling techniques, and calibrate tool parameters to optimal values. Typically, there are several techniques for the same data mining problem type. Some techniques have specific requirements on the form of data. <i>Therefore, stepping back to the data preparation phase is often needed</i>.
5. <b>Evaluation</b>: Thoroughly evaluate the model, and review the steps executed to construct the model, to be certain it properly achieves the business objectives. Determine if there is some important business issue that has not been sufficiently considered. At the end of this phase, a decision on the use of the data mining results is reached.
6. <b>Deployment</b>: Organize and present the results of data mining. Deployment can be as simple as generating a report or as complex as implementing a repeatable data mining process.
