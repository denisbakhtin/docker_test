package main

import (
	"log"

	"github.com/gin-gonic/gin"
)

func main() {
	router := gin.Default()
	router.LoadHTMLGlob("views/*")
	router.GET("/", home)
	log.Fatal(router.Run(":8888"))
}

func home(c *gin.Context) {
	c.HTML(200, "home", gin.H{
		"Title": "Welcome! Willkommen! Du är välkommen!",
	})
}
