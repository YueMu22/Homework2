<app>
  <div>
    <h1>Feed Me Chocolate</h1>
    <img src="img/{ FaceImage }.jpg">
  </div>

  <div >
    <button onclick={ feed }>Feed</button>
    <button onclick={ unfeed }>Not Feed</button>
  </div>
  <div>
    <div class="bar hunger">
      <div style="width:{ hunger }%;">&nbsp;</div>
    </div>
    <h1>Happy: { happy }</h1>
  </div>

  <script>

  var that  = this;
  this.happy = 0;
  this.FaceImage = "2";

  window.setInterval(function(){
    that.decHappy();
    console.log("wait");
    that.update();
    that.checkStatus();
    console.log(this);
  }, 3000);

  decHappy() {

    this.happy = this.happy - 10 < 0 ? 0 : this.happy - 10;
  }

  incHappy() {
    console.log(this.happy);
    this.happy = this.happy + 10 > 100 ? 100 : this.happy + 10;
  }

  checkStatus() {
    if (this.happy >= 70){
      this.FaceImage = "1";
    } else if (this.happy <= 30){
      this.FaceImage = "3";
    }else{
      this.FaceImage = "2";
    }
  }


  feed(e) {
    this.incHappy();
    this.checkStatus();
  }

  unfeed(e) {
    this.decHappy();
    this.checkStatus();
  }


  </script>

  <style media="screen">
    :scope{

    }
    h1{
      color:brown;
    }
    img{
      width: 40%;
    }

  </style>
</app>
