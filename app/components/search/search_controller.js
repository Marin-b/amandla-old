import { Controller } from "stimulus"

export default class extends Controller {
  static targets = [ "locationInput", "category", "tags"]

  connect() {
    this.location = this.locationInputTarget.value
    this.chosenCategory = this.categoryTarget.innerText
  }

  openModal(e) {
    this.modal = document.getElementById(e.target.dataset.modal)
    this.modal.classList.remove('hidden')
    this.modal.querySelectorAll('label').forEach(card => {
      setTimeout(() => {
        card.classList.add('flipped')
      }, 10)
    })
  }

  closeModal() {
    this.modal.querySelectorAll('label').forEach(card => {
      if (!card.lastElementChild.checked) {
        card.classList.remove('flipped')
      }
    })

    setTimeout(() => {this.modal.classList.add('hidden')}, 500)
    this.setButtonContent()
  }

  clearModal() {
    this.modal.querySelectorAll('label').forEach(card => {
      card.lastElementChild.checked = false
    })
    this.modal.lastElementChild.checked = true
    this.updateLabels()
    this.closeModal()
  }

  setButtonContent() {
    const inputType = this.modal.querySelector('input').type
    const button = this[this.modal.dataset.name + 'Target']
    const checkedInput = Array.from(this.modal.querySelectorAll('input')).find(i => i.checked)

    if (inputType === 'checkbox' && checkedInput !== this.modal.lastElementChild) {
      button.innerText = `Selected ${this.modal.dataset.name}`
    } else {
      button.innerText = checkedInput.value

    }
  }

  handleSelection(e) {
    this.updateLabels()
    const input = e.target.closest('label').lastElementChild

    if (input.type === 'radio' && input.checked) {
      this.closeModal()
    }
  }

  handleBackgroundClick(e) {
    if (e.target === this.modal) {
      this.closeModal()
    }
  }

  updateLabels()  {
    this.modal.querySelectorAll('label').forEach((label) => {
      const input = label.lastElementChild
      const card = label.querySelector('.flip-front')
      if (input.checked) {
        card.classList.replace('border-darkgreen', 'border-green')
        card.classList.replace('text-darkgreen', 'text-green')
      } else {
        card.classList.replace('border-green', 'border-darkgreen')
        card.classList.replace('text-green', 'text-darkgreen')
      }
    })
  }

  locate(e){
    e.target.classList.remove('fa-map-marker-alt')
    e.target.classList.add('fa-circle-notch', 'fa-spin')
    navigator.geolocation.getCurrentPosition((position) => {
      fetch(`https://places-dsn.algolia.net/1/places/reverse?aroundLatLng=${position.coords.latitude},${position.coords.longitude}`)
      .then(res => res.json())
      .then(data => {
        e.target.classList.remove('fa-circle-notch', 'fa-spin')
        e.target.classList.add('fa-check')
        this.location = data.hits[0].city.default
        this.locationInputTarget.value = this.location
      })
    }, () => {
      e.target.classList.remove('fa-circle-notch', 'fa-spin')
      e.target.classList.add('fa-times')
    })
  }
}
