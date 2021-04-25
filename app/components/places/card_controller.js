import { Controller } from "stimulus"


export default class extends Controller {
  static targets = ['card']

  connect() {
    this.cardTargets.forEach(card => {
      const id = card.dataset.id
      card.addEventListener('mouseenter', () => this.activateMarker(id))
      card.addEventListener('mouseleave', () => this.deactivateMarker(id))
    })
  }

  activateMarker(id) {
    const marker = document.querySelector(`#marker-${id}`)
    marker.classList.add('active')
  }

  deactivateMarker(id) {
    const marker = document.querySelector(`#marker-${id}`)
    marker.classList.remove('active')
  }
}
