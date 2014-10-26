library(shiny)

shinyUI(
	pageWithSidebar(
	headerPanel("Motor Trend Car Road Tests"),
	sidebarPanel(
		sliderInput('mu', 'Guess the mean Miles/gallon', value=20, min=5, max=35, step=0.1,)
	),
	mainPanel(
		plotOutput('newHist')
	)
))