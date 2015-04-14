(function() {
  var app = angular.module('store', [ ]);

  app.controller('StoreController', function() {
    this.products = gems;
  });

  app.controller('PanelController', function() {
    this.tab = 1;

    this.selectTab = function(setTab){
      this.tab = setTab;
    };

    this.isSelected = function(checkTab){
      return this.tab === checkTab;
    };
  });

  app.controller("ReviewController", function() {
    this.review = {};

    this.addReview = function(product) {
      product.reviews.push(this.review);
      this.review = {};
    };
  });

  app.directive('productForm', function() {
    return {
      retrict: 'E',
      templateUrl: 'product-form.html',
      controller:function(){

      },
      controllerAs: 'form'
    }
  });

  app.directive('productTitle', function(){
    return {
      restrict: 'E',
      templateUrl: 'product-title.html'
    };
  });

  app.directive('productPanels', function() {
    return {
      retrict: 'E',
      templateUrl: 'product-panels.html',
      controller:function(){

      },
      controllerAs: 'panels'
    }
  });


  var gems = [
    {
      name: "Ruby",
      price: 2.95,
      description: ". . .",
      canPurchase: true,
      soldOut: false,
      images: [
       {
        full: 'ruby.jpeg',
       }
      ],
      reviews: [
        {
          stars: 5,
          body: "I love this gem!",
          author: "joe@example.org",
          createdOn: 1397490980837
        },
        {
          stars: 1,
          body: "This gem sucks.",
          author: "tim@example.org",
          createdOn: 1397490980837
        }
      ]
    },
    {
      name: "Pentagonal Gem",
      price: 5.95,
      description: ". . .",
      canPurchase: true,
    },
  ]

})();
