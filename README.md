# JSONParseWebAcademy

WebAcademy Homework 4 JSON Parse

1. Create codable structures (e g: struct ModelName: Codable {...} ) that you can use to parse data. Imagine that this data is information about devices released by some company.

2. Now create a JSON file “RawData.json” in the project. Based on the models described above, describe the data in JSON format. You can come up with all the data, but the list of devices must contain at least 2 objects.

3. Go to ViewController. Parse the JSON using the described models. You will have a model containing a list of devices. Output to console:
● Company Description
● First device - modelNumber
● First device - countries - last element
● Last device - price - first country - name
● Last device - price - last country - price
