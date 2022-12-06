import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="drinks"
export default class extends Controller {
  static targets = ["bartab", "drinks", "beers", "wines", "spirits", "cocktails", "cyders", "shots", "active", "active_beer", "active_cyder", "active_wines", "active_spirits", "active_cocktail", "active_shot"]

  printBarTab() {
    // document.location.reload(); -> para dar reload e apagar tudo
    // const drink = "<% @beers.each do |beer| %><li><%= beer.name %></li><% end %>"
    // this.beersTarget.insertAdjacentHTML("beforeend", drink)
    this.#hideTabs()
    this.#changeActive()
    this.bartabTarget.classList.remove("d-none")
    this.activeTarget.classList.add("horizontal-navbar-active")
  }

  printBeers() {
    // document.location.reload(); -> para dar reload e apagar tudo
    // const drink = "<% @beers.each do |beer| %><li><%= beer.name %></li><% end %>"
    // this.beersTarget.insertAdjacentHTML("beforeend", drink)
    this.#hideTabs()
    this.#changeActive()
    this.beersTarget.classList.remove("d-none")
    this.active_beerTarget.classList.add("horizontal-navbar-active")
  }
  printWines() {
    // document.location.reload(); -> para dar reload e apagar tudo
    // const drink = "<% @beers.each do |beer| %><li><%= beer.name %></li><% end %>"
    // this.beersTarget.insertAdjacentHTML("beforeend", drink)
    this.#hideTabs()
    this.#changeActive()
    this.winesTarget.classList.remove("d-none")
    this.active_winesTarget.classList.add("horizontal-navbar-active")
  }
  printSpirits() {
    // document.location.reload(); -> para dar reload e apagar tudo
    // const drink = "<% @beers.each do |beer| %><li><%= beer.name %></li><% end %>"
    // this.beersTarget.insertAdjacentHTML("beforeend", drink)
    this.#hideTabs()
    this.#changeActive()
    this.spiritsTarget.classList.remove("d-none")
    this.active_spiritsTarget.classList.add("horizontal-navbar-active")
  }
  printCocktails() {
    // document.location.reload(); -> para dar reload e apagar tudo
    // const drink = "<% @beers.each do |beer| %><li><%= beer.name %></li><% end %>"
    // this.beersTarget.insertAdjacentHTML("beforeend", drink)
    this.#hideTabs()
    this.#changeActive()
    this.cocktailsTarget.classList.remove("d-none")
    this.active_cocktailTarget.classList.add("horizontal-navbar-active")
  }

  printCyders() {
    // document.location.reload(); -> para dar reload e apagar tudo
    // const drink = "<% @beers.each do |beer| %><li><%= beer.name %></li><% end %>"
    // this.beersTarget.insertAdjacentHTML("beforeend", drink)
    this.#hideTabs()
    this.#changeActive()
    this.cydersTarget.classList.remove("d-none")
    this.active_cyderTarget.classList.add("horizontal-navbar-active")
  }

  printShots() {
    // document.location.reload(); -> para dar reload e apagar tudo
    // const drink = "<% @beers.each do |beer| %><li><%= beer.name %></li><% end %>"
    // this.beersTarget.insertAdjacentHTML("beforeend", drink)
    this.#changeActive()
    this.#hideTabs()
    this.shotsTarget.classList.remove("d-none")
    this.active_shotTarget.classList.add("horizontal-navbar-active")
  }

  #changeActive() {
    this.activeTargets.forEach((tab) =>
      tab.classList.remove("horizontal-navbar-active")
    );
  }

  #hideTabs() {
    this.drinksTargets.forEach((drinks) => {
      drinks.classList.add("d-none");
    })
  }
}
