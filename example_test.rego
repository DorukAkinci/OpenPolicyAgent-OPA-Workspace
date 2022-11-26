package deneme

test_get_access {
    allow with input as { 
        "method": "GET",
        "path": ["users"]
    }
}