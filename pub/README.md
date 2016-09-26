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

<b>Note</b>: Data mining is iterative. <i>A data mining process continues after a solution is deployed</i>.

## Data Preparation
<b>Missing Nobel Medals in the Nobel dataset</b>:
<br/><br/>
Thinking, I had wrongly obtained the datasets, then I started by re-examine them.
<br/><br/>
While working through the (1914 - 1918) and  (1939 - 1945) dataset I started to notice that it did not contain all the medal winners, many data were missing, but also many Nobel Laureates weren't in there. These descrepancies forced me to check each and every of the disciplines to see if my dataset contained the same number of medals as the number of nobel events held at Stockholm and Oslo.

<b>But, this was not the fact of!</b>

<b>Years without Nobel Prizes</b>
<br/><br/>
Since the start, in 1901, there are some years when the Nobel Prizes have not been awarded. The total number of times are <b>49</b>. <i>Most of them during World War I (1914 - 1918) and II (1939 - 1945)</i>.

<b>Why, I was thinking?</b><br/><br/>A common problem in a data mining task is that often in a dataset there are certain attributes with missing or incorrect permissible values. So, this renders the dataset imbalanced. Missing data handling is an important preparation step for most data discrimination or mining tasks. Inappropriate treatment of missing data may cause large errors or false results.

<b>Nobel Prize	Years without a Prize</b>

| Nobel Prize | Years without a Prize
| ----------- | :-------------------- |
| Physics     | 1916, 1931, 1934, 1940, 1941, 1942 |
| Chemistry   | 1916, 1917, 1919, 1924, 1933, 1940, 1941, 1942 |
| Medicine    | 1915, 1916, 1917, 1918, 1921, 1925, 1940, 1941, 1942 |
| Literature  | 1914, 1918, 1935, 1940, 1941, 1942, 1943 |
| Peace       | 1914, 1915, 1916, 1918, 1923, 1924, 1928, 1932, 1939, 1940, 1941, 1942, 1943, 1948, 1955, 1956, 1966, 1967, 1972 |
| Economic Sciences | - |

After, Data Acquiring, Data Mining, Data Cleaning, I did Data Preparation — for this all dataset written in `CSV` format to easy manipulation. Then, committed in [raw](https://github.com/NobelDB/NobelDB/tree/master/pub/data/raw) directory. This directory contains all data since the very first Nobel Prize in 1901.

## Data Transformation
A Data Transformation converts a set of data values from the data format of a source data system into the data format of a destination data system. It is the application of a deterministic mathematical function to each point in a data set — that is, each data point <i>z<sub>i</sub></i> is replaced with the transformed value <i>y<sub>i</sub></i> = <i>f</i>(<i>z<sub>i</sub></i>), where <i>f</i> is a function. Transforms are usually applied so that the data appear to more closely meet the assumptions of a statistical inference procedure that is to be applied, or to improve the interpretability or appearance of graphs.

After completion of it, I have committed all dataset in to [tank](https://github.com/NobelDB/NobelDB/tree/master/pub/data/tank) directory. This directory contains all transformed data since the very first Nobel Prize in 1901.

## Data Visualization
Data visualization or data visualisation is viewed by many disciplines as a modern equivalent of visual communication. (e.g. it is viewed as a branch of descriptive statistics by some, but also as a grounded theory development tool by others). It involves the creation and study of the visual representation of data, meaning "information that has been abstracted in some schematic form, including attributes or variables for the units of information".<br/><br/>A primary goal of data visualization is to communicate information clearly and efficiently to users via the statistical graphics, plots, information graphics and charts. Effective visualization helps users analyze and reason about data and evidence. It makes complex data more accessible, understandable and usable. Users may have particular analytical tasks, such as making comparisons or understanding causality, and the design principle of the graphic (i.e., showing comparisons or showing causality) follows the task. Tables are generally used where users will look-up a specific measurement, while charts of various types are used to show patterns or relationships in the data for one or more variables.

### Why in NobelDB®?
Data visualization is both an art and a science. It's a general term that describes any effort to help people understand the significance of data by placing it in a visual context, by help of Graph Theory. Patterns, trends and correlations that might go undetected in text-based data can be exposed and recognized easier with data visualization software.<br/><br/>That's why, for <b>Scientific Data Visualization</b> — We're using many algorithms, methods and principles of it in <b>NobelDB®</b>.

## Graph Theory
In mathematics and computer science, graph theory is the study of graphs, which are mathematical structures used to model pairwise relations between objects. A graph in this context is made up of <i>vertices</i>, <i>nodes</i>, or <i>points</i> which are connected by <i>edges</i>, <i>arcs</i>, or <i>lines</i>.

### Definition
The following are some of the more basic ways of defining graphs and related mathematical structures.

<b>Graph:</b>

In the most common sense of the term, a <i>graph</i> is an ordered pair <i>G = (V, E)</i> comprising a set <i>V</i> of <i>vertices</i> or <i>nodes</i> or <i>points</i> together with a set <i>E</i> of <i>edges</i> or <i>arcs</i> or <i>lines</i>, which are 2-element subsets of <i>V</i> (i.e. an edge is related with two vertices, and the relation is represented as an unordered pair of the vertices with respect to the particular edge).

<b>Mathematical Expression:</b> <i>E</i> ⊆ [<i>V</i>]<sup>2</sup>;
  
  thus, the elements of <i>E</i> are 2-element subsets of <i>V</i>.

<b>Note:</b> To avoid notational ambiguities, always assume tacitly that <i>V</i> ∩ <i>E</i> = Ø.

<a name="degree" href="#degree">#</a>&nbsp;<b>The degree of a vertex:</b>

Let <i>G</i> = (<i>V</i>, <i>E</i>) be a (non-empty) graph.

The <i>degree</i> (or <i>valency</i>) <i>d<sub>G</sub></i>(<i>u</i>) = <i>d</i>(<i>u</i>) of a vertex <i>u</i> is the number |<i>E</i>(<i>u</i>)| of edges at <i>u</i>; by the definition of a graph, this is equal to the number of neighbours of <i>u</i>.

<b>Note:</b> A vertex of degree 0 is <i>isolated</i>.

- The number ∂(<i>G</i>) := min { <i>d</i>(<i>u</i>) | <i>u</i> ∈ V }, is the <i>minimum degree</i> of <i>G</i>,
- the number ∆(<i>G</i>) := max { <i>d</i>(<i>u</i>) | <i>u</i> ∈ V }, is the <i>maximum degree</i> of <i>G</i>.

<b>Note:</b>
- If all the vertices of <i>G</i> have the same degree <i>k</i>, then <i>G</i> is <i>k-regular</i>, or simply <i>regular</i>.
- A 3-regular graph is called <i>cubic</i>.

<a name="cycles" href="#cycles">#</a>&nbsp;<b>Paths and Cycles:</b>

A <i>path</i> is a (non-empty) graph <i>P</i> = (<i>V</i>, <i>E</i>) of the form,

<i>V</i> = { x<sub>0</sub>, x<sub>1</sub>,..., x<i><sub>k</sub></i> }

<i>E</i> = { x<sub>0</sub>x<sub>1</sub>, x<sub>1</sub>x<sub>2</sub>,..., x<i><sub>k-1</sub></i> - x<i><sub>k</sub></i> },

Where the x<i><sub>i</sub></i> are all distinct.

The vertices x<sub>0</sub> and x<sub>k</sub> are <i>linked</i> by <i>P</i> and are called it's <i>ends</i>; the vertices x<sub>1</sub>,..., x<sub>k-1</sub> are the <i>inner</i> vertices of <i>P</i>.

The number of edges of a path is it's <i>length</i>, and the path of length <i>k</i> is denoted by <i>P<sup>k</sup></i>.

Note, that <i>k</i> is allowed to be zero; thus, <i>P<sup>0</sup></i> = <i>K<sup>1</sup></i>.

<a name="connectivity" href="#connectivity">#</a>&nbsp;<b>Connectivity:</b>

A (non-empty) graph <i>G</i> is called <i>connected</i>, if any two of it's vertices are linked by a path in <i>G</i>. If <i>U</i> ⊆<i>V</i>(<i>G</i>) and <i>G</i>[<i>U</i>] is connected, also called <i>U</i> itself connected (in <i>G</i>).

<b>Note:</b> Instead of 'not connected', usually can say 'disconnected'.

<a name="trees" href="#trees">#</a>&nbsp;<b>Trees and Forests:</b>

An <i>acyclic</i> graph, one not containing any cycles, is called <i>forest</i>. A connected forest is called a <i>tree</i>. (Thus, a forest is a graph whose components are trees). The <i>vertices</i> of <i>degree</i> 1 in a tree are it's <i>leaves</i>. Every non-trivial tree has a leaf - consider, for example, the ends of a longest path.

<b>Theorem:</b>

<i>The following assertions are equivalent for a graph T</i>:
- <i>T is a tree</i>;
- <i>Any two vertices of T are linked by a unique path in T</i>;
- <i>T is minimally connected, i.e. T is connected but T - e is disconnected for every edge e ∈ T</i>;
- <i>T is maximally acyclic, i.e., T contains no cycle but T + xy does, for any two non-adjacent vertices x,y ∈ T</i>.

<a name="eulertour" href="#eulertour">#</a>&nbsp;<b>Euler Tour:</b>

In <i>graph theory</i>, an <i>Eulerian trail</i> (or <i>Eulerian path</i>) is a trail in a graph which visits every <i>edge</i> exactly once.

The term <i>Eulerian graph</i> has two common meanings in graph theory. One meaning is a graph with an <i>Eulerian circuit</i>, and the other is a graph with every <i>vertex</i> of even <i>degree</i>. These definitions coincide for connected graphs.

<b>Definition:</b>

An <i>Eulerian cycle</i>, <i>Eulerian circuit</i> or <i>Euler tour</i> in an <i>undirected graph</i> is a cycle that uses each <i>edge</i> exactly once. If such a cycle exists, the graph is called <i>Eulerian</i> or <i>unicursal</i>.

<b>Note:</b> A graph is <i>Eulerian</i>, if it admits an <b>Euler Tour</b>.

<b>Theorem:</b>

<i>A connected graph is <b>Eulerian</b> if and only if every vertex has even degree</i>.
