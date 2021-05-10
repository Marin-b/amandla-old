// Visit The Stimulus Handbook for more details
// https://stimulusjs.org/handbook/introduction
//
// This example controller works with specially annotated HTML like:
//
// <div data-controller="hello">
//   <h1 data-target="hello.output"></h1>
// </div>

import { Controller } from "stimulus"

export default class extends Controller {
  static targets = [ "container", "button" ]

  connect() {
    this.show = this.containerTarget.dataset.show === 'true'
  }

  toggle() {
    this.show = !this.show
    this.updateContainer()
    this.updateButton()
  }

  updateContainer() {
    if (this.show) {
      this.containerTarget.classList.replace('top-full', 'top-0')
    } else {
      this.containerTarget.classList.replace('top-0', 'top-full')
    }
  }

  updateButton() {
    if (this.show) {
      this.buttonTarget.innerHTML = "<i class='fas fa-list fa-sm'></i> List"
    } else {
      this.buttonTarget.innerHTML = "<i class='fas fa-map fa-sm'></i> Map"
    }
  }
}
