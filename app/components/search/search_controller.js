import { Controller } from "stimulus"

export default class extends Controller {
  static targets = [ "locationInput", "category", "categoryModal", "categoryCards" ]

  connect() {
    this.location = this.locationInputTarget.value
    this.chosenCategory = this.categoryTarget.innerText
  }

  openCategory() {
    this.categoryModalTarget.classList.remove('hidden')
    setTimeout(() => {
      this.categoryCardsTargets.forEach(card => {
        card.classList.add('animate')
      })
    }, 10)
  }

  closeCategory() {
    this.categoryCardsTargets.forEach(card => {
      if(card.dataset.category === this.chosenCategory) return

      card.classList.remove('animate')
    })

    setTimeout(() => {
      this.categoryModalTarget.classList.add('hidden')
    }, 500)
  }

  chooseCategory(e) {
    this.chosenCategory = e.target.dataset.category
    this.categoryTarget.innerText = this.chosenCategory
    this.categoryCardsTargets.find((card) => card.dataset.category === this.chosenCategory).classList.add('border-green')
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

  submit() {
    window.location = `/places?category=${this.chosenCategory}&location=${this.location}`
  }
}
