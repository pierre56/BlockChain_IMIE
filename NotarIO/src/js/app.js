App = {
  web3Provider: null,
  contracts: {},

  init: async function() {
    // Load pets.
    $.getJSON('../pets.json', function(data) {
      var petsRow = $('#petsRow');
      var petTemplate = $('#petTemplate');

      for (i = 0; i < data.length; i ++) {
        petTemplate.find('.panel-title').text(data[i].name);
        var res = data[i].name.split(".");
        petTemplate.find('img').attr('src', "/images/" + res[1] + ".png");
        petTemplate.find('.pet-breed').text(data[i].breed);
        //format date 
        dateTZ = data[i].date;
        dateFormatlll = dateTZ.toString();
        petTemplate.find('.date').text(dateFormatlll);
        petTemplate.find('.btn-read').attr('data-id', data[i].id);

        petsRow.append(petTemplate.html());
      }
    });

    return await App.initWeb3();
  },

  initWeb3: async function() {
    /*
     * Replace me...
     */

    return App.initContract();
  },

  initContract: function() {
    /*
     * Replace me...
     */

    return App.bindEvents();
  },

  bindEvents: function() {
    $(document).on('click', '.btn-adopt', App.handleAdopt);
  },

  markAdopted: function(adopters, account) {
    /*
     * Replace me...
     */
  },

  handleAdopt: function(event) {
    event.preventDefault();

    var petId = parseInt($(event.target).data('id'));

    /*
     * Replace me...
     */
  }

};

function addDocument() {
  document.getElementById("petsRow").style.display="none";
  document.getElementById("CreateDocument").style.display="none";
  document.getElementById("RegisterDocument").style.display="none";
  document.getElementById("addDocument").style.display="flex";
}
function AjouterDocument() {
  document.getElementById("addDocument").style.display="none";
  document.getElementById("CreateDocument").style.display="none";
  document.getElementById("RegisterDocument").style.display="flex";
}
function CreerDocument() {
  document.getElementById("addDocument").style.display="none";
  document.getElementById("RegisterDocument").style.display="flex";
  console.log(document.getElementById("CreateDocument"));
  document.getElementById("CreateDocument").style.display="flex";
}
function backToAccueil() {
  location.reload();
}

$(function() {
  $(window).load(function() {
    App.init();
  });
});

