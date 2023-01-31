import { Controller } from '@hotwired/stimulus'
import Cleave from 'cleave.js'

export default class extends Controller {
  static targets = [ 'price' ]

  connect() {
    const cleave = new Cleave(this.priceTarget, {
      numeral: true,
      numeralDecimalMark: ',',
      prefix: '$ '
    })
    console.log("Hole")
  }
}
