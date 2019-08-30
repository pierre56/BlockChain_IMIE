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
<<<<<<< HEAD
=======
        console.log(res[1]);
>>>>>>> 5c8a4bdb74b3ada1205dee6607eae6df7c313aea
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
     // Initialize web3 and set the provider to the testRPC.
     if (typeof web3 !== 'undefined') {
      App.web3Provider = web3.currentProvider;
      web3 = new Web3(web3.currentProvider);
    } else {
      // set the provider you want from Web3.providers
      App.web3Provider = new web3.providers.HttpProvider('http://localhost:8545');
      web3 = new Web3(App.web3Provider);
    }

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
  document.getElementById("RegisterDocument").style.display="none";
<<<<<<< HEAD
=======
  console.log(document.getElementById("CreateDocument"));
>>>>>>> 5c8a4bdb74b3ada1205dee6607eae6df7c313aea
  document.getElementById("CreateDocument").style.display="flex";
}
function backToAccueil() {
  location.reload();
}
<<<<<<< HEAD
function FormSend(){
  var Name = document.getElementById("inputName").value ;
  var DateBegin = document.getElementById("inputDateDebut").value ;
  var DateEnd = document.getElementById("inputDateFin").value ;
  var AdressEmploy = document.getElementById("inputAddress").value ;
  var AdresseEmployer = document.getElementById("inputAddress2").value ;
  var Pognon = document.getElementById("inputPognon").value ;
  var Contract = document.getElementById("inputContratType").value ;
}
=======

>>>>>>> 5c8a4bdb74b3ada1205dee6607eae6df7c313aea
$(function() {
  $(window).load(function() {
    App.init();
  });
});

