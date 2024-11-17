package main

import (
	"api/controllers"

	"github.com/gin-gonic/gin"
)

func main() {
	router := gin.Default()

	public := router.Group("/api")
	public.POST("/register", controllers.Register)

	router.Run(":8080")
}
