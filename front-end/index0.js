class Driver {
  constructor(name, dateString) {
    this.name = name
    this.startDate = new Date(dateString);
  }


  yearsExperienceFromBeginningOf(year) {
    let endDate = new Date(year, 0, 1)
    let experience = (endDate - this.startDate)/(1000*60*60*24*365)
    return Math.round(experience)
  }
}

let eastWest = ['1st Avenue', '2nd Avenue', '3rd Avenue', 'Lexington Avenue', 'Park', 'Madison Avenue', '5th Avenue']

class Route extends Driver {
  constructor(beginningLocation, endingLocation) {
    this.beginningLocation = beginningLocation
    this.endingLocation = endingLocation
  }

  blocksTravelled() {
    let blocksNorthSouth = Math.abs(beginningLocation["horizontal"] - endingLocation["horizontal"])

    let totalBlocks = northSouth +
    return totalBlocks
  }

  estimatedTime() {

  }
}
