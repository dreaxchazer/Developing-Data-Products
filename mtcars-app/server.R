library(shiny)
data(mtcars)

shinyServer(
	function(input, output){
		output$newHist = renderPlot({
			hist(mtcars$mpg, xlab="Miles per gallon", col="lightblue", main="Histogram")
			mu = input$mu
			lines(c(mu,mu), c(0,20), col="red", lwd=5)
			mse = mean((mtcars$mpg - mu)^2)
			text(30, 10, paste("mu = ",mu))
			text(30, 9, paste("MSE = ", round(mse,2)))
		})
	}
)