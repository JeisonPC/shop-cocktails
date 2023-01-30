import { Controller } from "@hotwired/stimulus"


export default class extends Controller {
  static targets = [ "input" ]

  connect() {
    this.formatPrice()
  }

  formatPrice() {
    const formattedPrice = new Intl.NumberFormat('en-US', {
      style: 'currency',
      currency: 'USD'
    }).format(this.inputTarget.value)

    this.inputTarget.value = formattedPrice
  }
}
