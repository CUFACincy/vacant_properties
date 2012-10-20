def pretty_params
  {
    "FieldStructure" => {
      "Fields" => [
        {
          "Title" => "Your Name:",
          "Instructions" => "",
          "IsRequired" => "1",
          "ClassNames" => "",
          "DefaultVal" => "",
          "Page" => "1",
          "SubFields" => [
            {
              "DefaultVal" => "",
              "ID" => "Field2",
              "Label" => "First"
            },
            {
              "DefaultVal" => "",
              "ID" => "Field3",
              "Label" => "Last"
            }
          ],
            "Type" => "shortname",
            "ID" => "Field2"
        },
        {
          "Title" => "Your Email:",
          "Instructions" => "",
          "IsRequired" => "0",
          "ClassNames" => "",
          "DefaultVal" => "",
          "Page" => "1",
          "Type" => "email",
          "ID" => "Field5"
        },
        {
          "Title" => "Your Phone:",
          "Instructions" => "",
          "IsRequired" => "1",
          "ClassNames" => "",
          "DefaultVal" => "",
          "Page" => "1",
          "Type" => "phone",
          "ID" => "Field6"
        },
        {
          "Title" => "Your Address:",
          "Instructions" => "",
          "IsRequired" => "0",
          "ClassNames" => "",
          "DefaultVal" => "",
          "Page" => "1",
          "SubFields" => [
            {
              "DefaultVal" => "",
              "ID" => "Field7",
              "Label" => "Street Address"
            }, {
              "DefaultVal" => "",
              "ID" => "Field8",
              "Label" => "Address Line 2"
            }, {
              "DefaultVal" => "",
              "ID" => "Field9",
              "Label" => "City"
            }, {
              "DefaultVal" => "",
              "ID" => "Field10",
              "Label" => "State / Province / Region"
            }, {
              "DefaultVal" => "",
              "ID" => "Field11",
              "Label" => "Postal / Zip Code"
            }, {
              "DefaultVal" => "United States",
              "ID" => "Field12",
              "Label" => "Country"
            }
          ],
            "Type" => "address",
            "ID" => "Field7"
        },
        {
          "Title" => "Street Address:",
          "Instructions" => "Enter the Street Number and Street Name here.rn(for example, 123 Main Street)",
          "IsRequired" => "1",
          "ClassNames" => "",
          "DefaultVal" => "",
          "Page" => "1",
          "Type" => "text",
          "ID" => "Field15"
        },
        {
          "Title" => "Zip Code:",
          "Instructions" => "Enter the Zip Code for this vacant property.",
          "IsRequired" => "0",
          "ClassNames" => "",
          "DefaultVal" => "",
          "Page" => "1",
          "Type" => "number",
          "ID" => "Field16"
        },
        {
          "Title" => "City Name:",
          "Instructions" => "Select the local city name where this vacant property is located.rn(Note the default is the City of Cincinnati.)",
          "IsRequired" => "0",
          "ClassNames" => "",
          "DefaultVal" => "",
          "Page" => "1",
          "Choices" => [
            {
              "Label" => "City of Cincinnati"
            }, {
              "Label" => "City of North College Hill"
            }, {
              "Label" => "City of Elmwood Place"
            }, {
              "Label" => "Third Choice"
            }
          ],
            "Type" => "select",
            "ID" => "Field124",
            "HasOtherField" => false
        },
        {
          "Title" => "Property Owner:",
          "Instructions" => "You may find this information on the Hamilton County Auditor website.",
          "IsRequired" => "0",
          "ClassNames" => "",
          "DefaultVal" => "",
          "Page" => "1",
          "Type" => "text",
          "ID" => "Field123"
        },
        {
          "Title" => "Complaints:",
          "Instructions" => "Check all that apply to this vacant property.",
          "IsRequired" => "0",
          "ClassNames" => "",
          "DefaultVal" => "0",
          "Page" => "1",
          "SubFields" => [
            {
              "DefaultVal" => "0",
              "ID" => "Field18",
              "Label" => "High Grass"
            }, {
              "DefaultVal" => "0",
              "ID" => "Field19",
              "Label" => "Rats, Mice, Opposums, Racoons, etc."
            }, {
              "DefaultVal" => "0",
              "ID" => "Field20",
              "Label" => "Broken Windows/Doors"
            }, {
              "DefaultVal" => "0",
              "ID" => "Field21",
              "Label" => "Trash"
            }, {
              "DefaultVal" => "0",
              "ID" => "Field22",
              "Label" => "Graffiti"
            }, {
              "DefaultVal" => "0",
              "ID" => "Field23",
              "Label" => "Overgrown Bushes"
            }, {
              "DefaultVal" => "0",
              "ID" => "Field24",
              "Label" => "Abandoned Vehicles/Tires"
            }
          ],
            "Type" => "checkbox",
            "ID" => "Field18"
        },
        {
          "Title" => "Other Complaints:",
          "Instructions" => "Add any other complaints in this line.",
          "IsRequired" => "0",
          "ClassNames" => "",
          "DefaultVal" => "",
          "Page" => "1",
          "Type" => "text",
          "ID" => "Field119"
        },
        {
          "Title" => "Attach a Picture:rn(Optional)",
          "Instructions" => "If you have a single photograph of the vacant property to upload, press the [Browse...] button to select the file from your computer's folder system.",
          "IsRequired" => "0",
          "ClassNames" => "",
          "DefaultVal" => "",
          "Page" => "1",
          "Type" => "file",
          "ID" => "Field120"
        },
        {
          "Title" => "Other Comments:",
          "Instructions" => "If you have any other comments this is the place to mention them!",
          "IsRequired" => "0",
          "ClassNames" => "",
          "DefaultVal" => "",
          "Page" => "1",
          "Type" => "textarea",
          "ID" => "Field121"
        }
      ]
    },
    "FormStructure"  =>  {
      "Name" => "Vacant Property Watch",
      "Description" => "Please complete this form and press the [Submit] button at the bottom of the form.rnNote: REQUIRED field are marked with with a red asterisk.",
      "RedirectMessage" => "Great! Thanks for filling out my form!",
      "Url" => "vacant-property-watch",
      "Email" => "kevin.mosher08@gmail.com",
      "IsPublic" => "1",
      "Language" => "english",
      "StartDate" => "2000-01-01 12:00:00",
      "EndDate" => "2030-01-01 12:00:00",
      "EntryLimit" => "0",
      "DateCreated" => "2012-10-18 16:44:58",
      "DateUpdated" => "2012-10-18 18:30:05",
      "Hash" => "z7x3p9"
    },
    "Field2"       => "Chris",
    "Field3"       => "Moore",
    "Field5"       => "cdmwebs@gmail.com",
    "Field6"       => "5132017829",
    "Field7"       => "11126 Kenwood Rd",
    "Field8"       => "",
    "Field9"       => "Blue Ash",
    "Field10"      => "OH",
    "Field11"      => "45242",
    "Field12"      => "United States",
    "Field15"      => "11126 Kenwood Rd",
    "Field16"      => "45242",
    "Field124"     => "City of Cincinnati",
    "Field123"     => "Unknown",
    "Field18"      => "High Grass",
    "Field21"      => "Trash",
    "Field22"      => "Graffiti",
    "Field119"     => "Ugly building!",
    "Field121"     => "",
    "Field120"     => "",
    "Field120-url" => "",
    "Field19"      => "",
    "Field20"      => "",
    "Field23"      => "",
    "Field24"      => "",
    "CreatedBy"    => "public",
    "DateCreated"  => "2012-10-19 18:02:25",
    "EntryId"      => "1",
    "IP"           => "134.53.244.158",
    "HandshakeKey" => "",
    "id"           => "home"
  }
end

def provider_params
  {"FieldStructure"=>"{\"Fields\":[{\"Title\":\"Your Name:\",\"Instructions\":\"\",\"IsRequired\":\"1\",\"ClassNames\":\"\",\"DefaultVal\":\"\",\"Page\":\"1\",\"SubFields\":[{\"DefaultVal\":\"\",\"ID\":\"Field2\",\"Label\":\"First\"},{\"DefaultVal\":\"\",\"ID\":\"Field3\",\"Label\":\"Last\"}],\"Type\":\"shortname\",\"ID\":\"Field2\"},{\"Title\":\"Your Email:\",\"Instructions\":\"\",\"IsRequired\":\"0\",\"ClassNames\":\"\",\"DefaultVal\":\"\",\"Page\":\"1\",\"Type\":\"email\",\"ID\":\"Field5\"},{\"Title\":\"Your Phone:\",\"Instructions\":\"\",\"IsRequired\":\"1\",\"ClassNames\":\"\",\"DefaultVal\":\"\",\"Page\":\"1\",\"Type\":\"phone\",\"ID\":\"Field6\"},{\"Title\":\"Your Address:\",\"Instructions\":\"\",\"IsRequired\":\"0\",\"ClassNames\":\"\",\"DefaultVal\":\"\",\"Page\":\"1\",\"SubFields\":[{\"DefaultVal\":\"\",\"ID\":\"Field7\",\"Label\":\"Street Address\"},{\"DefaultVal\":\"\",\"ID\":\"Field8\",\"Label\":\"Address Line 2\"},{\"DefaultVal\":\"\",\"ID\":\"Field9\",\"Label\":\"City\"},{\"DefaultVal\":\"\",\"ID\":\"Field10\",\"Label\":\"State \\/ Province \\/ Region\"},{\"DefaultVal\":\"\",\"ID\":\"Field11\",\"Label\":\"Postal \\/ Zip Code\"},{\"DefaultVal\":\"United States\",\"ID\":\"Field12\",\"Label\":\"Country\"}],\"Type\":\"address\",\"ID\":\"Field7\"},{\"Title\":\"Street Address:\",\"Instructions\":\"Enter the Street Number and Street Name here.\\r\\n(for example, 123 Main Street)\",\"IsRequired\":\"1\",\"ClassNames\":\"\",\"DefaultVal\":\"\",\"Page\":\"1\",\"Type\":\"text\",\"ID\":\"Field15\"},{\"Title\":\"Zip Code:\",\"Instructions\":\"Enter the Zip Code for this vacant property.\",\"IsRequired\":\"0\",\"ClassNames\":\"\",\"DefaultVal\":\"\",\"Page\":\"1\",\"Type\":\"number\",\"ID\":\"Field16\"},{\"Title\":\"City Name:\",\"Instructions\":\"Select the local city name where this vacant property is located.\\r\\n(Note the default is the City of Cincinnati.)\",\"IsRequired\":\"0\",\"ClassNames\":\"\",\"DefaultVal\":\"\",\"Page\":\"1\",\"Choices\":[{\"Label\":\"City of Cincinnati\"},{\"Label\":\"City of North College Hill\"},{\"Label\":\"City of Elmwood Place\"},{\"Label\":\"Third Choice\"}],\"Type\":\"select\",\"ID\":\"Field124\",\"HasOtherField\":false},{\"Title\":\"Property Owner:\",\"Instructions\":\"You may find this information on the Hamilton County Auditor website.\",\"IsRequired\":\"0\",\"ClassNames\":\"\",\"DefaultVal\":\"\",\"Page\":\"1\",\"Type\":\"text\",\"ID\":\"Field123\"},{\"Title\":\"Complaints:\",\"Instructions\":\"Check all that apply to this vacant property.\",\"IsRequired\":\"0\",\"ClassNames\":\"\",\"DefaultVal\":\"0\",\"Page\":\"1\",\"SubFields\":[{\"DefaultVal\":\"0\",\"ID\":\"Field18\",\"Label\":\"High Grass\"},{\"DefaultVal\":\"0\",\"ID\":\"Field19\",\"Label\":\"Rats, Mice, Opposums, Racoons, etc.\"},{\"DefaultVal\":\"0\",\"ID\":\"Field20\",\"Label\":\"Broken Windows\\/Doors\"},{\"DefaultVal\":\"0\",\"ID\":\"Field21\",\"Label\":\"Trash\"},{\"DefaultVal\":\"0\",\"ID\":\"Field22\",\"Label\":\"Graffiti\"},{\"DefaultVal\":\"0\",\"ID\":\"Field23\",\"Label\":\"Overgrown Bushes\"},{\"DefaultVal\":\"0\",\"ID\":\"Field24\",\"Label\":\"Abandoned Vehicles\\/Tires\"}],\"Type\":\"checkbox\",\"ID\":\"Field18\"},{\"Title\":\"Other Complaints:\",\"Instructions\":\"Add any other complaints in this line.\",\"IsRequired\":\"0\",\"ClassNames\":\"\",\"DefaultVal\":\"\",\"Page\":\"1\",\"Type\":\"text\",\"ID\":\"Field119\"},{\"Title\":\"Attach a Picture:\\r\\n(Optional)\",\"Instructions\":\"If you have a single photograph of the vacant property to upload, press the [Browse...] button to select the file from your computer's folder system.\",\"IsRequired\":\"0\",\"ClassNames\":\"\",\"DefaultVal\":\"\",\"Page\":\"1\",\"Type\":\"file\",\"ID\":\"Field120\"},{\"Title\":\"Other Comments:\",\"Instructions\":\"If you have any other comments this is the place to mention them!\",\"IsRequired\":\"0\",\"ClassNames\":\"\",\"DefaultVal\":\"\",\"Page\":\"1\",\"Type\":\"textarea\",\"ID\":\"Field121\"}]}", "FormStructure"=>"{\"Name\":\"Vacant Property Watch\",\"Description\":\"Please complete this form and press the [Submit] button at the bottom of the form.\\r\\nNote: REQUIRED field are marked with with a red asterisk.\",\"RedirectMessage\":\"Great! Thanks for filling out my form!\",\"Url\":\"vacant-property-watch\",\"Email\":\"kevin.mosher08@gmail.com\",\"IsPublic\":\"1\",\"Language\":\"english\",\"StartDate\":\"2000-01-01 12:00:00\",\"EndDate\":\"2030-01-01 12:00:00\",\"EntryLimit\":\"0\",\"DateCreated\":\"2012-10-18 16:44:58\",\"DateUpdated\":\"2012-10-18 18:30:05\",\"Hash\":\"z7x3p9\"}", "Field2"=>"Test", "Field3"=>"Person", "Field5"=>"test.person@gmail.com", "Field6"=>"5135551212", "Field7"=>"11126 Kenwood Rd", "Field8"=>"Suite C", "Field9"=>"Blue Ash", "Field10"=>"OH", "Field11"=>"45242", "Field12"=>"United States", "Field15"=>"11126 Kenwood Rd", "Field16"=>"45242", "Field124"=>"City of Cincinnati", "Field123"=>"I don't know", "Field18"=>"High Grass", "Field22"=>"Graffiti", "Field119"=>"Anything", "Field121"=>"Nothing", "Field120"=>"", "Field120-url"=>"", "Field19"=>"", "Field20"=>"", "Field21"=>"", "Field23"=>"", "Field24"=>"", "CreatedBy"=>"public", "DateCreated"=>"2012-10-19 22:07:17", "EntryId"=>"14", "IP"=>"74.139.107.209", "HandshakeKey"=>""}
end
