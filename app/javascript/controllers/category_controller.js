import { Controller } from "stimulus"

export default class extends Controller {
  redirect(event) {
    event.preventDefault()
    const categoryId = event.target.dataset.categoryId
    window.location.href = `/categories/${categoryId}`
  }
}
