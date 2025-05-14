<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>About Us | EduCore</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css" />
</head>
<body class="bg-gray-50 text-gray-800">

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
        <a href="home.jsp" class="hover:text-blue-600 transition">Home</a>
        <a href="#" class="hover:text-blue-600 transition">About</a>
        <a href="features.jsp" class="hover:text-blue-600 transition">Features</a>
        <a href="contact.jsp" class="hover:text-blue-600 transition">Contact</a>
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
        <a href="home.jsp" class="hover:text-blue-600">Home</a>
        <a href="about.jsp" class="hover:text-blue-600">About</a>
        <a href="" class="hover:text-blue-600">Features</a>
        <a href="contact.jsp" class="hover:text-blue-600">Contact</a>
        <div class="flex gap-2 mt-2">
          <a href="#" class="w-full text-center px-4 py-2 border border-blue-600 text-blue-600 rounded-full hover:bg-blue-50">Login</a>
          <a href="#" class="w-full text-center px-4 py-2 bg-blue-600 text-white rounded-full hover:bg-blue-700">Register</a>
        </div>
      </nav>
    </div>
  </header>

  <!-- Hero Section -->
  <section class="bg-blue-100 py-20 text-center">
    <h1 class="text-4xl md:text-5xl font-bold text-blue-900 mb-4">About EduCore</h1>
    <p class="text-lg text-blue-800 max-w-2xl mx-auto">Empowering education through technology — simplifying school operations and enhancing learning outcomes.</p>
  </section>

  <!-- Who We Are -->
  <section class="py-16 px-6 md:px-20 bg-white">
    <div class="max-w-5xl mx-auto">
      <h2 class="text-3xl font-bold mb-6">Who We Are</h2>
      <p class="text-gray-700 text-lg leading-relaxed">
        EduCore is a comprehensive school management platform designed to meet the evolving needs of educational institutions.
        Whether you're a teacher, student, administrator, or parent, EduCore provides tools that make communication, tracking, and administration seamless.
        Our goal is to digitize education infrastructure for better learning and efficient administration.
      </p>
    </div>
  </section>

  <!-- Our Mission & Vision -->
  <section class="py-16 bg-gray-100 px-6 md:px-20">
    <div class="max-w-5xl mx-auto grid md:grid-cols-2 gap-12">
      <div>
        <h3 class="text-2xl font-semibold mb-4 flex items-center gap-2">
          <i class="fas fa-bullseye text-blue-600"></i> Our Mission
        </h3>
        <p class="text-gray-700 text-base leading-relaxed">
          To bridge the gap between education and technology by offering user-centric solutions that streamline school operations
          and enhance learning environments across all academic levels.
        </p>
      </div>
      <div>
        <h3 class="text-2xl font-semibold mb-4 flex items-center gap-2">
          <i class="fas fa-eye text-green-600"></i> Our Vision
        </h3>
        <p class="text-gray-700 text-base leading-relaxed">
          To become the most trusted and widely used school management solution globally, enabling schools to operate smarter,
          faster, and more transparently through technology.
        </p>
      </div>
    </div>
  </section>

  <!-- Why Choose EduCore -->
  <section class="py-16 bg-white px-6 md:px-20">
    <div class="max-w-6xl mx-auto">
      <h2 class="text-3xl font-bold text-center mb-10">Why Choose EduCore?</h2>
      <div class="grid md:grid-cols-3 gap-8 text-center">
        <div class="bg-gray-50 p-6 rounded-xl shadow hover:shadow-md transition">
          <i class="fas fa-laptop-code text-blue-600 text-4xl mb-4"></i>
          <h4 class="text-xl font-semibold mb-2">Easy to Use</h4>
          <p class="text-gray-600 text-sm">Intuitive design and user-friendly dashboards for all user roles.</p>
        </div>
        <div class="bg-gray-50 p-6 rounded-xl shadow hover:shadow-md transition">
          <i class="fas fa-sync-alt text-green-600 text-4xl mb-4"></i>
          <h4 class="text-xl font-semibold mb-2">Automated Workflows</h4>
          <p class="text-gray-600 text-sm">Automate attendance, exams, scheduling, communication, and more.</p>
        </div>
        <div class="bg-gray-50 p-6 rounded-xl shadow hover:shadow-md transition">
          <i class="fas fa-headset text-yellow-500 text-4xl mb-4"></i>
          <h4 class="text-xl font-semibold mb-2">Reliable Support</h4>
          <p class="text-gray-600 text-sm">Our dedicated team ensures fast issue resolution and ongoing assistance.</p>
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
        <li><a href="home.jsp" class="hover:text-yellow-400 transition">Home</a></li>
        <li><a href="about.jsp" class="hover:text-yellow-400 transition">About</a></li>
        <li><a href="features.jsp" class="hover:text-yellow-400 transition">Features</a></li>
        <li><a href="contact.jsp" class="hover:text-yellow-400 transition">Contact</a></li>
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

</body>
</html>
    