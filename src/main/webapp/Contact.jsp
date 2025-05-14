<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact Us | EduCore School Management</title>
    <!-- Tailwind CSS -->
    <script src="https://cdn.tailwindcss.com"></script>
    <!-- FontAwesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <style>
        .contact-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 10px 25px -5px rgba(0, 0, 0, 0.1);
        }
        .form-input:focus {
            border-color: #4f46e5;
            box-shadow: 0 0 0 3px rgba(79, 70, 229, 0.2);
        }
    </style>
</head>
<body class="bg-gray-50 font-sans">

    <!-- Header / Navbar -->
	  <header class="bg-white shadow-md">
	    <div class="container mx-auto px-4 py-3 flex justify-between items-center">
	      
	      <!-- Logo -->
	      <div class="text-2xl font-bold text-blue-600 flex items-center gap-2">
	        <i class="fas fa-graduation-cap text-blue-500"></i>
	        EduCore
	      </div>
	      
	      <!-- Nav links (hidden on mobile) -->
	      <nav class="hidden md:flex gap-6 text-gray-700 font-medium">
	        <a href="#" class="hover:text-blue-600 transition">Home</a>
	        <a href="#" class="hover:text-blue-600 transition">About</a>
	        <a href="#" class="hover:text-blue-600 transition">Features</a>
	        <a href="#" class="hover:text-blue-600 transition">Contact</a>
	      </nav>
	      <!-- Search Bar -->
	<div class="hidden md:block w-full max-w-xs ml-6">
	  <form action="search.jsp" method="get" class="relative">
	    <input type="text" name="query" placeholder="Search..." 
	           class="w-full py-2 pl-4 pr-10 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500 focus:border-blue-500" />
	    <button type="submit" class="absolute top-8 right-3 transform -translate-y-1/2 text-gray-500 hover:text-blue-600">
	      <i class="fas fa-search"></i>
	    </button>
	  </form>
	</div>
	
	      <!-- Auth Buttons (hidden on small screens) -->
	      <div class="flex items-center gap-4">
	    		<span class="text-gray-600 flex items-center gap-2">
	      			<img src="data:image/png;base64,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" alt="Admin Profile" class="w-8 h-8 rounded-full object-cover" />
	      				Welcome
	    		</span>
	   			<a href="logout.jsp" class="text-red-500 hover:text-red-700"><i class="fas fa-sign-out-alt"></i> Logout</a>
	  		</div>
	
	      <!-- Mobile Menu Icon -->
	      <div class="md:hidden">
	        <button id="menuToggle" class="text-2xl text-gray-600 focus:outline-none">
	          <i class="fas fa-bars"></i>
	        </button>
	      </div>
	    </div>
	
	    <!-- Mobile Menu (hidden by default) -->
	    <div id="mobileMenu" class="md:hidden hidden px-4 pb-4">
	      <nav class="flex flex-col gap-2 text-gray-700 font-medium">
	        <a href="#" class="hover:text-blue-600">Home</a>
	        <a href="#" class="hover:text-blue-600">About</a>
	        <a href="#" class="hover:text-blue-600">Features</a>
	        <a href="#" class="hover:text-blue-600">Contact</a>
	        <div class="flex gap-2 mt-2">
	          <a href="#" class="w-full text-center px-4 py-2 border border-blue-600 text-blue-600 rounded-full hover:bg-blue-50">Login</a>
	          <a href="#" class="w-full text-center px-4 py-2 bg-blue-600 text-white rounded-full hover:bg-blue-700">Register</a>
	        </div>
	      </nav>
	    </div>
	  </header>

    <!-- Main Content -->
    <main class="container mx-auto px-4 py-12">
        <!-- Page Header -->
        <div class="text-center mb-16">
            <h2 class="text-4xl font-bold text-gray-800 mb-4">Contact Our Team</h2>
            <p class="text-xl text-gray-600 max-w-2xl mx-auto">
                Have questions or need support? Reach out to us and our team will get back to you as soon as possible.
            </p>
        </div>

        <div class="flex flex-col lg:flex-row gap-12">
            <!-- Contact Information -->
            <div class="lg:w-1/3 space-y-8">
                <!-- Contact Card - Support -->
                <div class="bg-white p-8 rounded-xl shadow-md contact-card transition duration-300">
                    <div class="flex items-center mb-4">
                        <div class="bg-indigo-100 p-3 rounded-full mr-4">
                            <i class="fas fa-headset text-indigo-600 text-xl"></i>
                        </div>
                        <h3 class="text-xl font-semibold text-gray-800">Support Team</h3>
                    </div>
                    <p class="text-gray-600 mb-4">
                        Our dedicated support team is available to help with any technical issues or questions about EduCore.
                    </p>
                    <div class="space-y-2">
                        <div class="flex items-center">
                            <i class="fas fa-phone-alt text-indigo-500 mr-3"></i>
                            <span>+1 (555) 123-4567</span>
                        </div>
                        <div class="flex items-center">
                            <i class="fas fa-envelope text-indigo-500 mr-3"></i>
                            <span>support@educore.edu</span>
                        </div>
                        <div class="flex items-center">
                            <i class="fas fa-clock text-indigo-500 mr-3"></i>
                            <span>Mon-Fri: 8:00 AM - 6:00 PM</span>
                        </div>
                    </div>
                </div>

                <!-- Contact Card - Sales -->
                <div class="bg-white p-8 rounded-xl shadow-md contact-card transition duration-300">
                    <div class="flex items-center mb-4">
                        <div class="bg-indigo-100 p-3 rounded-full mr-4">
                            <i class="fas fa-chart-line text-indigo-600 text-xl"></i>
                        </div>
                        <h3 class="text-xl font-semibold text-gray-800">Sales Inquiries</h3>
                    </div>
                    <p class="text-gray-600 mb-4">
                        Interested in EduCore for your school? Our sales team can help you find the perfect solution.
                    </p>
                    <div class="space-y-2">
                        <div class="flex items-center">
                            <i class="fas fa-phone-alt text-indigo-500 mr-3"></i>
                            <span>+1 (555) 987-6543</span>
                        </div>
                        <div class="flex items-center">
                            <i class="fas fa-envelope text-indigo-500 mr-3"></i>
                            <span>sales@educore.edu</span>
                        </div>
                        <div class="flex items-center">
                            <i class="fas fa-calendar-alt text-indigo-500 mr-3"></i>
                            <span>Schedule a demo</span>
                        </div>
                    </div>
                </div>

                <!-- Contact Card - Location -->
                <div class="bg-white p-8 rounded-xl shadow-md contact-card transition duration-300">
                    <div class="flex items-center mb-4">
                        <div class="bg-indigo-100 p-3 rounded-full mr-4">
                            <i class="fas fa-map-marker-alt text-indigo-600 text-xl"></i>
                        </div>
                        <h3 class="text-xl font-semibold text-gray-800">Our Office</h3>
                    </div>
                    <p class="text-gray-600 mb-4">
                        Visit us at our headquarters to discuss your school's needs in person.
                    </p>
                    <div class="space-y-2">
                        <div class="flex items-start">
                            <i class="fas fa-building text-indigo-500 mt-1 mr-3"></i>
                            <span>123 Education Blvd, Suite 400<br>San Francisco, CA 94107</span>
                        </div>
                        <div class="flex items-center">
                            <i class="fas fa-subway text-indigo-500 mr-3"></i>
                            <span>5 min walk from Powell St Station</span>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Contact Form -->
            <div class="lg:w-2/3">
                <div class="bg-white p-8 rounded-xl shadow-md">
                    <h3 class="text-2xl font-semibold text-gray-800 mb-6">Send Us a Message</h3>
                    <form class="space-y-6">
                        <div class="grid grid-cols-1 md:grid-cols-2 gap-6">
                            <div>
                                <label for="first-name" class="block text-sm font-medium text-gray-700 mb-1">First Name</label>
                                <input type="text" id="first-name" class="w-full px-4 py-3 border border-gray-300 rounded-lg form-input focus:outline-none">
                            </div>
                            <div>
                                <label for="last-name" class="block text-sm font-medium text-gray-700 mb-1">Last Name</label>
                                <input type="text" id="last-name" class="w-full px-4 py-3 border border-gray-300 rounded-lg form-input focus:outline-none">
                            </div>
                        </div>
                        
                        <div>
                            <label for="email" class="block text-sm font-medium text-gray-700 mb-1">Email Address</label>
                            <input type="email" id="email" class="w-full px-4 py-3 border border-gray-300 rounded-lg form-input focus:outline-none">
                        </div>
                        
                        <div>
                            <label for="subject" class="block text-sm font-medium text-gray-700 mb-1">Subject</label>
                            <select id="subject" class="w-full px-4 py-3 border border-gray-300 rounded-lg form-input focus:outline-none">
                                <option value="" disabled selected>Select a subject</option>
                                <option>General Inquiry</option>
                                <option>Technical Support</option>
                                <option>Sales Question</option>
                                <option>Feedback</option>
                                <option>Other</option>
                            </select>
                        </div>
                        
                        <div>
                            <label for="message" class="block text-sm font-medium text-gray-700 mb-1">Message</label>
                            <textarea id="message" rows="5" class="w-full px-4 py-3 border border-gray-300 rounded-lg form-input focus:outline-none"></textarea>
                        </div>
                        
                        <div class="flex items-center">
                            <input type="checkbox" id="consent" class="h-4 w-4 text-indigo-600 focus:ring-indigo-500 border-gray-300 rounded">
                            <label for="consent" class="ml-2 block text-sm text-gray-700">
                                I agree to the <a href="#" class="text-indigo-600 hover:text-indigo-500">privacy policy</a>
                            </label>
                        </div>
                        
                        <button type="submit" class="w-full bg-indigo-600 text-white py-3 px-4 rounded-lg font-medium hover:bg-indigo-700 transition duration-200">
                            <i class="fas fa-paper-plane mr-2"></i> Send Message
                        </button>
                    </form>
                </div>
            </div>
        </div>
    </main>

    <!-- Map Section -->
    <section class="bg-gray-100 py-12">
        <div class="container mx-auto px-4">
            <h3 class="text-2xl font-semibold text-gray-800 mb-8 text-center">Find Us On The Map</h3>
            <div class="bg-white p-4 rounded-xl shadow-md">
                <!-- Placeholder for map - in a real implementation you would embed Google Maps or similar -->
                <div class="h-96 bg-gray-200 rounded-lg flex items-center justify-center">
                    <div class="text-center">
                        <i class="fas fa-map-marked-alt text-4xl text-indigo-500 mb-3"></i>
                        <p class="text-gray-600">Interactive map would appear here</p>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- FAQ Section -->
    <section class="container mx-auto px-4 py-16">
        <h3 class="text-2xl font-semibold text-gray-800 mb-8 text-center">Frequently Asked Questions</h3>
        <div class="max-w-4xl mx-auto space-y-4">
            <!-- FAQ Item 1 -->
            <div class="bg-white p-6 rounded-xl shadow-md">
                <button class="flex justify-between items-center w-full text-left">
                    <h4 class="font-medium text-gray-800">How quickly can I expect a response to my inquiry?</h4>
                    <i class="fas fa-chevron-down text-indigo-500 transition-transform duration-300"></i>
                </button>
                <div class="mt-3 text-gray-600 hidden">
                    <p>Our support team typically responds within 24 hours during business days. For urgent matters, please call our support line for immediate assistance.</p>
                </div>
            </div>
            
            <!-- FAQ Item 2 -->
            <div class="bg-white p-6 rounded-xl shadow-md">
                <button class="flex justify-between items-center w-full text-left">
                    <h4 class="font-medium text-gray-800">What information should I include in my support request?</h4>
                    <i class="fas fa-chevron-down text-indigo-500 transition-transform duration-300"></i>
                </button>
                <div class="mt-3 text-gray-600 hidden">
                    <p>Please include your account details, the nature of the issue, any error messages you're receiving, and steps to reproduce the problem if possible.</p>
                </div>
            </div>
            
            <!-- FAQ Item 3 -->
            <div class="bg-white p-6 rounded-xl shadow-md">
                <button class="flex justify-between items-center w-full text-left">
                    <h4 class="font-medium text-gray-800">Do you offer on-site training for school staff?</h4>
                    <i class="fas fa-chevron-down text-indigo-500 transition-transform duration-300"></i>
                </button>
                <div class="mt-3 text-gray-600 hidden">
                    <p>Yes, we offer comprehensive training packages that can be delivered on-site or virtually. Contact our sales team to discuss training options for your institution.</p>
                </div>
            </div>
        </div>
    </section>

		   <!-- Footer -->
		<footer class="bg-blue-900 text-white mt-12">
		  <div class="max-w-7xl mx-auto px-6 py-10 grid grid-cols-1 md:grid-cols-4 gap-8">
		    
		    <!-- Logo and Tagline -->
		    <div>
		      <div class="flex items-center space-x-3 mb-4">
		        <i class="fas fa-graduation-cap text-3xl text-yellow-400"></i>
		        <span class="text-2xl font-bold">EduCore</span>
		      </div>
		      <p class="text-gray-300 text-sm">
		        EduCore is a smart, all-in-one school management system that empowers admins, teachers, students, and parents.
		      </p>
		    </div>
		
		    <!-- Quick Links -->
		    <div>
		      <h3 class="text-xl font-semibold mb-4">Quick Links</h3>
		      <ul class="space-y-2 text-gray-300 text-sm">
		        <li><a href="#" class="hover:text-yellow-400 transition">Home</a></li>
		        <li><a href="#" class="hover:text-yellow-400 transition">About</a></li>
		        <li><a href="#" class="hover:text-yellow-400 transition">Features</a></li>
		        <li><a href="#" class="hover:text-yellow-400 transition">Contact</a></li>
		      </ul>
		    </div>
		
		    <!-- Resources -->
		    <div>
		      <h3 class="text-xl font-semibold mb-4">Resources</h3>
		      <ul class="space-y-2 text-gray-300 text-sm">
		        <li><a href="#" class="hover:text-yellow-400 transition">Documentation</a></li>
		        <li><a href="#" class="hover:text-yellow-400 transition">Support</a></li>
		        <li><a href="#" class="hover:text-yellow-400 transition">Privacy Policy</a></li>
		        <li><a href="#" class="hover:text-yellow-400 transition">Terms of Service</a></li>
		      </ul>
		    </div>
		
		    <!-- Contact Info -->
		    <div>
		      <h3 class="text-xl font-semibold mb-4">Contact</h3>
		      <ul class="space-y-3 text-gray-300 text-sm">
		        <li class="flex items-center gap-2">
		          <i class="fas fa-map-marker-alt text-yellow-400"></i>
		          123 School Lane, Education City
		        </li>
		        <li class="flex items-center gap-2">
		          <i class="fas fa-envelope text-yellow-400"></i>
		          support@educore.com
		        </li>
		        <li class="flex items-center gap-2">
		          <i class="fas fa-phone text-yellow-400"></i>
		          +1 (234) 567-8900
		        </li>
		      </ul>
		    </div>
		  </div>
		
		  <!-- Bottom Bar -->
		  <div class="border-t border-blue-700 text-sm text-gray-400 py-4 px-6 md:px-20 flex flex-col md:flex-row items-center justify-between">
		    <p>&copy; 2025 EduCore. All rights reserved.</p>
		    <div class="flex space-x-4 mt-2 md:mt-0">
		      <a href="#" class="hover:text-yellow-400"><i class="fab fa-facebook-f"></i></a>
		      <a href="#" class="hover:text-yellow-400"><i class="fab fa-twitter"></i></a>
		      <a href="#" class="hover:text-yellow-400"><i class="fab fa-instagram"></i></a>
		      <a href="#" class="hover:text-yellow-400"><i class="fab fa-linkedin-in"></i></a>
		    </div>
		  </div>
		</footer>

    <script>
        // Simple FAQ toggle functionality
        document.querySelectorAll('section#faq button').forEach(button => {
            button.addEventListener('click', () => {
                const content = button.nextElementSibling;
                const icon = button.querySelector('i');
                
                content.classList.toggle('hidden');
                icon.classList.toggle('rotate-180');
            });
        });
    </script>
</body>
</html>