<template>
  <div>
      <section class="page-title bg-1">
  <div class="container">
    <div class="row">
      <div class="col-md-12">
        <div class="block text-center">
          <span class="text-white">Contact Us</span>
          <h1 class="text-capitalize mb-4 text-lg">Get in Touch</h1>
          <ul class="list-inline">
            <li class="list-inline-item"><router-link to="/" class="text-white">Home</router-link></li>
            <li class="list-inline-item"><span class="text-white">/</span></li>
            <li class="list-inline-item"><a class="text-white-50">Contact Us</a></li>
          </ul>
        </div>
      </div>
    </div>
  </div>
</section>
<!-- contact form start -->
<section class="contact-form-wrap section">
    <div class="container">
        <div class="row">
            <div class="col-lg-6 col-md-12 col-sm-12">
                 <form id="contact-form" class="contact__form">
                 <!-- form message -->
                    <div class="row">
                        <div class="col-12">
                            <div class="alert alert-success contact__msg" style="display: none" role="alert">
                                Your message was sent successfully.
                            </div>
                        </div>
                    </div>
                    <!-- end message -->
                    <span class="text-color">Send a message</span>
                    <h3 class="text-md mb-4">Contact Form</h3>
                    <div class="form-group">
                        <input name="name" type="text" class="form-control" placeholder="Your Name">
                    </div>
                    <div class="form-group">
                        <input name="email" type="email" class="form-control" placeholder="Email Address">
                    </div>
                    <div class="form-group-2 mb-4">
                        <textarea name="message" class="form-control" rows="4" placeholder="Your Message"></textarea>
                    </div>
                    <button class="btn btn-main" name="submit" type="submit">Send Message</button>
                </form>
            </div>

            <div class="col-lg-5 col-sm-12">
                <div class="contact-content pl-lg-5 mt-5 mt-lg-0">
                    <span class="text-muted">We are Professionals</span>
                    <h2 class="mb-5 mt-2">Don’t Hesitate to contact with us for any kind of information</h2>

                    <ul class="address-block list-unstyled">
                        <li>
                            <i class="ti-direction mr-3"></i>Maniknagor Motijheel, Dhaka ,Bangladesh
                        </li>
                        <li>
                            <i class="ti-email mr-3"></i>Email: arafataliar69@gmail.com
                        </li>
                        <li>
                            <i class="ti-mobile mr-3"></i>Phone:+88 01704 039 173
                        </li>
                    </ul>

                    <ul class="social-icons list-inline mt-5">
                        <li class="list-inline-item">
                            <a href="#"><i class="fab fa-facebook-f"></i></a>
                        </li>
                        <li class="list-inline-item">
                            <a href="#"><i class="fab fa-twitter"></i></a>
                        </li>
                        <li class="list-inline-item">
                            <a href="#"><i class="fab fa-linkedin-in"></i></a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</section>

<div class="google-map">
    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d7305.280083404488!2d90.43018757250277!3d23.724545110581612!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3755b830b0d7e5b7%3A0x43e67973969354fe!2sManiknagar%2C%20Dhaka!5e0!3m2!1sen!2sbd!4v1641796447349!5m2!1sen!2sbd"
     width="100%" height="450" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
</div>
  </div>
</template>

<script>
export default {

}
</script>

<style>

</style>
