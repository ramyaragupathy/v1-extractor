const csvFilePath = './refugee-list.csv'
const csv = require('csvtojson')
var xmlParser = require('xml2json')
const request = require('request')
var options = {
  headers: {
    'Accept': 'text/xml',
    'Accept-Language': 'en'
  }
}

csv({delimiter: ['\t']})
  .fromFile(csvFilePath)
  .then((jsonObj) => {
    console.log('id,created,lat,lon')
    jsonObj.forEach(ele => {
      options.url = 'https://www.openstreetmap.org/api/0.6/node/' + ele['@id'] + '/history'
      request(options, function (error, response, body) {
        if (!error && response.statusCode === 200) {
          var historyJson = JSON.parse(xmlParser.toJson(body))
          console.log(historyJson.osm.node[0].id + ',' 
                     + historyJson.osm.node[0].timestamp + ','
                     + historyJson.osm.node[historyJson.osm.node.length - 1].lat + ','
                     + historyJson.osm.node[historyJson.osm.node.length - 1].lon)
        }
      })
    })
  })
