import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="drinks"
export default class extends Controller {
  static targets = ["drinks", "beers", "wines", "spirits", "cocktails", "cyders", "shots"]

  connect() {
    console.log(this.drinksTargets);
  }

  printBeers() {
    // document.location.reload(); -> para dar reload e apagar tudo
    // const drink = "<% @beers.each do |beer| %><li><%= beer.name %></li><% end %>"
    // this.beersTarget.insertAdjacentHTML("beforeend", drink)
    this.#hideTabs()
    this.beersTarget.classList.remove("d-none")
  }
  printWines() {
    // document.location.reload(); -> para dar reload e apagar tudo
    // const drink = "<% @beers.each do |beer| %><li><%= beer.name %></li><% end %>"
    // this.beersTarget.insertAdjacentHTML("beforeend", drink)
    this.#hideTabs()
    this.winesTarget.classList.remove("d-none")
  }
  printSpirits() {
    // document.location.reload(); -> para dar reload e apagar tudo
    // const drink = "<% @beers.each do |beer| %><li><%= beer.name %></li><% end %>"
    // this.beersTarget.insertAdjacentHTML("beforeend", drink)
    this.#hideTabs()
    this.spiritsTarget.classList.remove("d-none")
  }
  printCocktails() {
    // document.location.reload(); -> para dar reload e apagar tudo
    // const drink = "<% @beers.each do |beer| %><li><%= beer.name %></li><% end %>"
    // this.beersTarget.insertAdjacentHTML("beforeend", drink)
    this.#hideTabs()
    this.cocktailsTarget.classList.remove("d-none")
  }

  printCyders() {
    // document.location.reload(); -> para dar reload e apagar tudo
    // const drink = "<% @beers.each do |beer| %><li><%= beer.name %></li><% end %>"
    // this.beersTarget.insertAdjacentHTML("beforeend", drink)
    this.#hideTabs()
    this.cydersTarget.classList.remove("d-none")
  }

  printShots() {
    // document.location.reload(); -> para dar reload e apagar tudo
    // const drink = "<% @beers.each do |beer| %><li><%= beer.name %></li><% end %>"
    // this.beersTarget.insertAdjacentHTML("beforeend", drink)
    this.#hideTabs()
    this.shotsTarget.classList.remove("d-none")
  }

  #hideTabs() {
    this.drinksTargets.forEach((drinks) => {
      drinks.classList.add("d-none");
    })
  }
}
