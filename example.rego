package deneme

import input
import data.test.admin
import data.test.specialList
default allow = false

allow {
    input.method == "GET"
}

allow {
    input.method == "POST"
    input.username == data.test.admin.username
}

message := msg {
    input.method == "POST"
    input.username == data.test.admin.username
    msg := "Welcome, admin!"
}

MessageThatIsVisibleEverytime := "Interesting message!"

showDataArrayListOnlyIfItIsAdmin[list] {
    input.username == data.test.admin.username
    list := data.test.specialList
}