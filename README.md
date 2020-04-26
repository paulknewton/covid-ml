# COVID-ML

This project analyses publicly available data on the COVID-19 pandemic and identifies trends and patterns using the pandas data analysis framework.

* The project is written as a Jupyter notebook using pandas [here](covid.ipynb). Github will render a static version. If you want to execute the notebook dynamically, you will need to download it locally (see [instructions below](#installation)).
* A HTML version is updated on an hourly basis [here](https://paulknewton.github.io/covid-ml/covid.html)
* A basic dashboard only including main graphs is updated hourly [here](https://paulknewton.github.io/covid-ml/)

Examples of graphs that are produced:

![covid-19_infection_rate_over_time](docs/graphs/rates/covid-19_infection_rate_over_time.png "Covid-19 Infection Rate Over Time")

![countries_with_highest_number_of_recorded_COVID-19_cases](docs/graphs/totals/countries_with_highest_number_of_recorded_COVID-19_cases.png "Countries With Highest Number Of Recorded Covid-19 Cases")

![countries_with_highest_case_fatality_risk](docs/graphs/totals/countries_with_highest_case_fatality_risk.png "Countries With Highest Case Fatality Risk")

## Installation
The data runs inside a Jupyter notebook.
Make sure you install the core Jupyter runtime as well as the following libraries:
* pandas - the core data manipulation
* sklearn (optional) - was used for normalisation scaling but no longer needed
* matplotlib - for plotting the data
* xlrd - used by pandas to read the raw data in Excel

All dependencies are stored inside ```requirements.txt``` and can be installed via ```pip```:

```
pip install -r requirements.txt
```

## Usage
To run the notebook in interactive mode, launch it with:

```
jupyter notebook covid.ipynb
```

This will start the Jupyter server and open the notebook in a browser window.
Press the 'h' key to get help on using Jupyter.

To execute the notebook in non-interactive mode (i.e. to just force a download of the latest data and the generation of the graphs), type:

```
jupyter notebook --execute covid.ipynb
```

This will execute the notebook silently and create a ```covid.html``` file as output.
All the graphs will be updated in the graphs folder.
