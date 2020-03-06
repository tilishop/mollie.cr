def test_object_json
  %({
    "id": "mastaba",
    "foo": "App noot mies",
    "myField": "Magnificent"
  })
end

def nested_test_object_json
  %({
    "id": "nested",
    "foo": "Wim zus jet",
    "testobjectId": "mastaba"
  })
end

def test_collection_json
  %({
    "_embedded": {
      "testobjects": [
        {"id":"my-id"}
      ]
    }
  })
end

def nested_test_collection_json
  %({
    "_embedded": {
      "nestedobjects": [
        {"id":"my-id"}
      ]
    }
  })
end
