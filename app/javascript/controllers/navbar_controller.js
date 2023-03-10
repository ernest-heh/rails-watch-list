import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="navbar"
export default class extends Controller {
  connect() {
    console.log('hello from the navbar controller');
  }

  updateNavbar() {
    if (window.scrollY >= 100) {
      this.element.classList.add("navbar-lewagon-black")
    } else {
      this.element.classList.remove("navbar-lewagon-black")
    }
  }
}
