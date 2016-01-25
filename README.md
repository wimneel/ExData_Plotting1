## Summary

The four R script files in this repository (plot1.R to plot4.R) produce
the four graphs (plot1.png to plot4.png).

## Background

This assignment uses data from the 
<a href="http://archive.ics.uci.edu/ml/">UC Irvine Machine
Learning Repository</a>.

The dataset is downloaded from <a href="https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip">Electric power consumption</a> and contains measurements of electric power consumption in
one household with a one-minute sampling rate over a period of almost 4 years. 

## Variables

The following descriptions of the 9 variables in the dataset are taken from
the <a href="https://archive.ics.uci.edu/ml/datasets/Individual+household+electric+power+consumption">UCI
web site</a>:

<ol>
<li><b>Date</b>: Date in format dd/mm/yyyy </li>
<li><b>Time</b>: time in format hh:mm:ss </li>
<li><b>Global_active_power</b>: household global minute-averaged active power (in kilowatt) </li>
<li><b>Global_reactive_power</b>: household global minute-averaged reactive power (in kilowatt) </li>
<li><b>Voltage</b>: minute-averaged voltage (in volt) </li>
<li><b>Global_intensity</b>: household global minute-averaged current intensity (in ampere) </li>
<li><b>Sub_metering_1</b>: energy sub-metering No. 1 (in watt-hour of active energy). It corresponds to the kitchen, containing mainly a dishwasher, an oven and a microwave (hot plates are not electric but gas powered). </li>
<li><b>Sub_metering_2</b>: energy sub-metering No. 2 (in watt-hour of active energy). It corresponds to the laundry room, containing a washing-machine, a tumble-drier, a refrigerator and a light. </li>
<li><b>Sub_metering_3</b>: energy sub-metering No. 3 (in watt-hour of active energy). It corresponds to an electric water-heater and an air-conditioner.</li>
</ol>

## The four plots

Our overall goal here is to examine how household energy usage
varies over a 2-day period in February, 2007. All plots are constructed
using the base plotting system.

The four plots show the following:
<ol>
<li>Histogram of "Global Active Power"</li>
<li>"Global Active Power" as a function of time</li>
<li>The three sub metering variables as a function of time</li>
<li>Four graphs in a 2x2 layout:
	<ol>
	<li>as plot 2, but with slightly different y-axis label</li>
	<li>"Voltage" as a function of time</li>
	<li>as plot 3, but without the box around the legend</li>
	<li>"Global reactive power" as a function of time.</li>
	</ol>
	</li>
</ol>


