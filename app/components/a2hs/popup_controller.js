import { Controller } from "stimulus"
import Rails from "@rails/ujs";

export default class extends Controller {
  static targets = ['container']

  connect() {
    if (!navigator.standalone) {
      this.containerTarget.classList.remove('hidden')
    }
  }

  discard() {
    this.containerTarget.classList.add('hidden')
    Rails.ajax({
      type: "post",
      url: '/a2hs/discard'
    })
  }
}
