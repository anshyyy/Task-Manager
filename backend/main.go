package main

import (
	"encoding/json"
	"fmt"
	"log"
	"net/http"

	"github.com/gorilla/mux"
)

type Tasks struct {
	ID          string `json:"id"`
	Taskname    string `json:"taskname"`
	TaskDetails string `json:"taskdetails"`
	Date        string `json:"date"`
}

var tasks []Tasks

func allTasks() {
	task := Tasks{
		ID:          "1",
		Taskname:    "New Project",
		TaskDetails: "You must lead the project",
		Date:        "2022-01-22",
	}
	task1 := Tasks{
		ID:          "2",
		Taskname:    "Power Project",
		TaskDetails: "You must do this before the deadline",
		Date:        "2022-01-22",
	}
	tasks = append(tasks, task)
	tasks = append(tasks, task1)
	fmt.Print("your task are", tasks)
}
func homePage(w http.ResponseWriter, r *http.Request) {
	fmt.Print("I am homePage")
}
func getTasks(w http.ResponseWriter, r *http.Request) {
	w.Header().Set("Content-Type", "application/json")
	json.NewEncoder(w).Encode(tasks)
}
func getTask(w http.ResponseWriter, r *http.Request) {
	taskId := mux.Vars(r)
	flag := false
	for i := 0; i < len(tasks); i++ {
		if taskId["id"] == tasks[i].ID {
			json.NewEncoder(w).Encode(tasks[i])
			flag = true
			break
		}
	}
	if flag == false {
		json.NewEncoder(w).Encode(map[string]string{"status": "Error"})
	}
}
func createTask(w http.ResponseWriter, r *http.Request) {

}
func deleteTask(w http.ResponseWriter, r *http.Request) {

}
func updateTask(w http.ResponseWriter, r *http.Request) {

}
func handleRoutes() {
	router := mux.NewRouter()
	router.HandleFunc("/", homePage).Methods("GET")
	router.HandleFunc("/gettasks", getTasks).Methods("GET")
	router.HandleFunc("/gettask/{id}", getTask).Methods("GET")
	router.HandleFunc("/create", createTask).Methods("POST")
	router.HandleFunc("/delete/{id}", deleteTask).Methods("DELETE")
	router.HandleFunc("/update/{id}", updateTask).Methods("PUT")

	log.Fatal(http.ListenAndServe(":8082", router))
}

func main() {
	allTasks()
	handleRoutes()

}
