class KeyNav {
  constructor(p) {
    this.p = p
    this.make()
  }

  make(){
    let navArray;
    if (this.p === 2) {
      navArray = ['#p2-container', 38, 40, 37, 39, 16]
    } else {
      navArray = ['#p1-container', 87, 83, 65, 68, 9]
    }
    let image = document.querySelector(navArray[0]).querySelector('img')
    let current = document.querySelector(navArray[0]).querySelector('button')
    current.className = 'current'

    document.addEventListener('keydown', e => {
    // e.preventDefault();
    switch (e.keyCode) {
      case navArray[1]:
      // UP
      $('.current').trigger('mouseover')
      e.preventDefault();

      current.className = ''
      if (current.parentElement.previousElementSibling) {
        current = current.parentElement.previousElementSibling.firstChild
      }else {
        current = current.parentElement.parentElement.lastElementChild.lastElementChild
      }
      current.className = 'current'

      break;
      case navArray[2]:

      $('.current').trigger('mouseover')
      e.preventDefault();

      // DOWN
      current.className = ''
      if (current.parentElement.nextElementSibling) {
        current = current.parentElement.nextElementSibling.firstChild
      }else {
        current = current.parentElement.parentElement.firstElementChild.firstElementChild
      }
      current.className = 'current'
      break;
      case navArray[3]:
      e.preventDefault();
      //LEFT
      if (current.parentElement.parentElement.parentElement.previousElementSibling) {
        current.className = ''
        current = current.parentElement.parentElement.parentElement.previousElementSibling.firstElementChild.firstElementChild.firstElementChild
        current.className = 'current'
      }
      break;
      case navArray[4]:
      e.preventDefault();
      //RIGHT
      if (current.parentElement.parentElement.parentElement.nextElementSibling) {
        current.className = ''
        current = current.parentElement.parentElement.parentElement.nextElementSibling.firstElementChild.firstElementChild.firstElementChild
        current.className = 'current'
      }
      break;
      case navArray[5]:
      e.preventDefault();
      //SHIFT
      current.click()
      if (current.parentElement.tagName == 'TR') {
        current.className = ''
        current = document.querySelector(navArray[0]).querySelector('button')
        current.className = 'current'
      }
      break;
      // default:

    }
  })}
}
