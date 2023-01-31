import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["sidebar"]

  connect() {
    setTimeout(() => {
      this.sidebarTarget.classList.remove('exit')
      this.sidebarTarget.classList.add('open')
    }, 50)

    this.element.addEventListener("turbo:submit-end", (event) => {
      if (event.detail.success) {
        Turbo.visit(event.detail.fetchResponse.response.url)
      }
    })
  }

  close() {
    this.sidebarTarget.classList.remove('open')
    this.sidebarTarget.classList.add('exit')

    setTimeout(() => {
      this.element.parentElement.removeAttribute("src")
      this.element.remove()
    }, 250)
  }
}
