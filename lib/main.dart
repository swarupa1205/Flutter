import 'package:flutter/material.dart';

void main() {
  runApp(const MiniAmazonApp());
}

class MiniAmazonApp extends StatelessWidget {
  const MiniAmazonApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mini Amazon (Simple)',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const LoginScreen(), // start with login
    );
  }
}

/// Simple customer model
class Customer {
  final String name;
  final String email;
  final String address;
  final String phone;

  const Customer({
    required this.name,
    required this.email,
    required this.address,
    required this.phone,
  });
}

/// Simple product model with category
class Product {
  final String id;
  final String title;
  final String description;
  final double price;
  final String imageUrl;
  final String category;

  const Product({
    required this.id,
    required this.title,
    required this.description,
    required this.price,
    required this.imageUrl,
    required this.category,
  });
}

/// DUMMY PRODUCTS
const List<Product> dummyProducts = [
  // Electronics
  Product(
    id: 'e1',
    title: 'Laptop',
    description: 'Powerful laptop for work and study.',
    price: 56999,
    category: 'Electronics',
    imageUrl:
        'https://images.pexels.com/photos/374074/pexels-photo-374074.jpeg',
  ),
  Product(
    id: 'e2',
    title: 'Smartphone',
    description: 'Android smartphone with great camera.',
    price: 25999,
    category: 'Electronics',
    imageUrl:
        'https://images.pexels.com/photos/607812/pexels-photo-607812.jpeg',
  ),
  Product(
    id: 'e3',
    title: 'Wireless Headphones',
    description: 'Bluetooth over-ear headphones with deep bass.',
    price: 2999,
    category: 'Electronics',
    imageUrl:
        'https://images.pexels.com/photos/3394659/pexels-photo-3394659.jpeg',
  ),
  Product(
    id: 'e4',
    title: 'Smart Watch',
    description: 'Fitness tracking smart watch with heart rate sensor.',
    price: 4999,
    category: 'Electronics',
    imageUrl:
        'https://images.pexels.com/photos/277406/pexels-photo-277406.jpeg',
  ),

  // Shoes
  Product(
    id: 's1',
    title: 'Running Shoes',
    description: 'Lightweight running shoes with breathable mesh upper.',
    price: 1999,
    category: 'Shoes',
    imageUrl:
        'https://images.pexels.com/photos/2529148/pexels-photo-2529148.jpeg',
  ),
  Product(
    id: 's2',
    title: 'Casual Sneakers',
    description: 'Comfortable everyday sneakers for casual wear.',
    price: 1499,
    category: 'Shoes',
    imageUrl:
        'https://images.pexels.com/photos/2529147/pexels-photo-2529147.jpeg',
  ),
  Product(
    id: 's3',
    title: 'Formal Leather Shoes',
    description: 'Classic brown leather shoes for office and events.',
    price: 2599,
    category: 'Shoes',
    imageUrl: 'https://images.pexels.com/photos/19090/pexels-photo.jpg',
  ),
  Product(
    id: 's4',
    title: 'Sports Training Shoes',
    description: 'High-grip training shoes for gym and sports.',
    price: 2199,
    category: 'Shoes',
    imageUrl:
        'https://www.niviasports.com/cdn/shop/files/Hawks_Black_1_a8060373-e690-4bec-b67d-ef62539ca2c4.jpg?v=1736487167&width=1946',
  ),

  // Dresses / Clothing
  Product(
    id: 'd1',
    title: 'Little Boy Shirt',
    description: 'Elegant shirt for parties and events.',
    price: 499,
    category: 'Dress',
    imageUrl:
        'https://images.pexels.com/photos/3965547/pexels-photo-3965547.jpeg',
  ),
  Product(
    id: 'd2',
    title: 'Casual T-Shirt',
    description: 'Soft cotton T-shirt for everyday wear.',
    price: 499,
    category: 'Dress',
    imageUrl:
        'https://images.pexels.com/photos/428340/pexels-photo-428340.jpeg',
  ),
  Product(
    id: 'd3',
    title: 'Plain Shirt for Women',
    description: 'Simple and comfortable shirt for daily use.',
    price: 1799,
    category: 'Dress',
    imageUrl:
        'https://images.pexels.com/photos/1036623/pexels-photo-1036623.jpeg',
  ),

  // Jewellery
  Product(
    id: 'j1',
    title: 'Bracelet',
    description: 'Traditional gold-plated bracelet.',
    price: 3499,
    category: 'Jewellery',
    imageUrl:
        'https://images.pexels.com/photos/1191531/pexels-photo-1191531.jpeg',
  ),
  Product(
    id: 'j2',
    title: 'Diamond Ring',
    description: 'Elegant ring with crystal stones.',
    price: 5599,
    category: 'Jewellery',
    imageUrl:
        'https://images.pexels.com/photos/1457801/pexels-photo-1457801.jpeg',
  ),
  Product(
    id: 'j3',
    title: 'Bangle Set',
    description: 'Colourful traditional bangles.',
    price: 899,
    category: 'Jewellery',
    imageUrl:
        'https://leshya.com/cdn/shop/products/1063custom_1024x1024@2x.jpg?v=1560930078',
  ),

  // Fruits
  Product(
    id: 'f1',
    title: 'Red Apples',
    description: 'Fresh red apples (1 kg).',
    price: 120,
    category: 'Fruits',
    imageUrl:
        'https://images.pexels.com/photos/102104/pexels-photo-102104.jpeg',
  ),
  Product(
    id: 'f2',
    title: 'Bananas',
    description: 'Organic bananas (1 dozen).',
    price: 60,
    category: 'Fruits',
    imageUrl:
        'https://www.millerchemical.com/wp-content/uploads/2021/03/iStock-1184345169.png',
  ),
  Product(
    id: 'f3',
    title: 'Oranges',
    description: 'Juicy oranges rich in vitamin C (1 kg).',
    price: 90,
    category: 'Fruits',
    imageUrl:
        'https://www.dole.com/sites/default/files/media/2025-01/oranges.png',
  ),

  // Vegetables
  Product(
    id: 'v1',
    title: 'Tomatoes',
    description: 'Fresh red tomatoes (1 kg).',
    price: 40,
    category: 'Vegetables',
    imageUrl: 'https://images.pexels.com/photos/8390/food-wood-tomatoes.jpg',
  ),
  Product(
    id: 'v2',
    title: 'Carrots',
    description: 'Crunchy carrots good for eyesight (1 kg).',
    price: 50,
    category: 'Vegetables',
    imageUrl: 'https://images.pexels.com/photos/65174/pexels-photo-65174.jpeg',
  ),
  Product(
    id: 'v3',
    title: 'Mixed Vegetables',
    description: 'Assorted fresh vegetables.',
    price: 90,
    category: 'Vegetables',
    imageUrl:
        'https://www.spoonfulofflavor.com/wp-content/uploads/2024/02/mixed-vegetables-with-garlic-butter.jpg',
  ),
];

/// Simple cart item
class CartItem {
  final Product product;
  int quantity;

  CartItem({required this.product, this.quantity = 1});
}

/// 🔐 LOGIN SCREEN (SMALL CENTERED BOX)
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();

  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _addressController = TextEditingController();
  final _phoneController = TextEditingController();

  void _submit() {
    if (_formKey.currentState?.validate() != true) return;

    final customer = Customer(
      name: _nameController.text.trim(),
      email: _emailController.text.trim(),
      address: _addressController.text.trim(),
      phone: _phoneController.text.trim(),
    );

    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (_) => ProductListScreen(customer: customer)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Mini Amazon - Login')),
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            width: 320, // SMALL BOX WIDTH
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Theme.of(context).cardColor,
              boxShadow: const [
                BoxShadow(
                  blurRadius: 8,
                  color: Colors.black26,
                  offset: Offset(0, 2),
                ),
              ],
              borderRadius: BorderRadius.circular(12),
            ),
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    'Customer Login',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 16),
                  TextFormField(
                    controller: _nameController,
                    decoration: const InputDecoration(
                      labelText: 'Name',
                      border: OutlineInputBorder(),
                    ),
                    validator: (value) => value == null || value.trim().isEmpty
                        ? 'Enter your name'
                        : null,
                  ),
                  const SizedBox(height: 12),
                  TextFormField(
                    controller: _emailController,
                    decoration: const InputDecoration(
                      labelText: 'Email',
                      border: OutlineInputBorder(),
                    ),
                    keyboardType: TextInputType.emailAddress,
                    validator: (value) {
                      if (value == null || value.trim().isEmpty) {
                        return 'Please enter your email';
                      }
                      if (!value.contains('@')) {
                        return 'Enter a valid email';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 12),
                  TextFormField(
                    controller: _phoneController,
                    decoration: const InputDecoration(
                      labelText: 'Phone',
                      border: OutlineInputBorder(),
                    ),
                    keyboardType: TextInputType.phone,
                    validator: (value) =>
                        value == null || value.trim().length < 10
                        ? 'Enter valid number'
                        : null,
                  ),
                  const SizedBox(height: 12),
                  TextFormField(
                    controller: _addressController,
                    maxLines: 2,
                    decoration: const InputDecoration(
                      labelText: 'Address',
                      border: OutlineInputBorder(),
                    ),
                    validator: (value) => value == null || value.trim().isEmpty
                        ? 'Enter your address'
                        : null,
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: _submit,
                      child: const Text('Continue to Shop'),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

/// Home screen: product grid + cart + search + customer details
class ProductListScreen extends StatefulWidget {
  final Customer customer;

  const ProductListScreen({super.key, required this.customer});

  @override
  State<ProductListScreen> createState() => _ProductListScreenState();
}

class _ProductListScreenState extends State<ProductListScreen> {
  final Map<String, CartItem> _cart = {}; // key = product id
  String _searchQuery = '';

  void _addToCart(Product product) {
    setState(() {
      if (_cart.containsKey(product.id)) {
        _cart[product.id]!.quantity++;
      } else {
        _cart[product.id] = CartItem(product: product, quantity: 1);
      }
    });

    ScaffoldMessenger.of(context).hideCurrentSnackBar();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('${product.title} added to cart'),
        duration: const Duration(seconds: 2),
      ),
    );
  }

  void _incrementFromTile(Product product) {
    // wrapper to increase and show snack
    _addToCart(product);
  }

  int get _cartCount {
    int total = 0;
    for (final item in _cart.values) {
      total += item.quantity;
    }
    return total;
  }

  double get _cartTotal {
    double total = 0;
    for (final item in _cart.values) {
      total += item.product.price * item.quantity;
    }
    return total;
  }

  void _openCart() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (_) => CartScreen(
          cartItems: _cart,
          totalAmount: _cartTotal,
          onClearCart: () {
            setState(() {
              _cart.clear();
            });
          },
          onRemoveItem: (productId) {
            setState(() {
              _cart.remove(productId);
            });
          },
        ),
      ),
    );
  }

  void _openDetails(Product product) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (_) => ProductDetailsScreen(
          product: product,
          onAddToCart: () => _addToCart(product),
        ),
      ),
    );
  }

  void _openCustomerDetails() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (_) => CustomerDetailsScreen(customer: widget.customer),
      ),
    );
  }

  List<Product> get _filteredProducts {
    if (_searchQuery.trim().isEmpty) return dummyProducts;
    final query = _searchQuery.toLowerCase();
    return dummyProducts.where((p) {
      return p.title.toLowerCase().contains(query) ||
          p.category.toLowerCase().contains(query);
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    final products = _filteredProducts;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Mini Amazon'),
        actions: [
          IconButton(
            icon: const Icon(Icons.person),
            tooltip: 'Customer Details',
            onPressed: _openCustomerDetails,
          ),
          Stack(
            alignment: Alignment.center,
            children: [
              IconButton(
                icon: const Icon(Icons.shopping_cart),
                onPressed: _openCart,
              ),
              if (_cartCount > 0)
                Positioned(
                  right: 6,
                  top: 6,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 6,
                      vertical: 2,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      _cartCount.toString(),
                      style: const TextStyle(fontSize: 10, color: Colors.white),
                    ),
                  ),
                ),
            ],
          ),
        ],
      ),
      body: Column(
        children: [
          // 🔍 Search bar
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search products or category...',
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              onChanged: (value) {
                setState(() {
                  _searchQuery = value;
                });
              },
            ),
          ),
          if (products.isEmpty)
            const Expanded(
              child: Center(
                child: Text(
                  'No products found',
                  style: TextStyle(fontSize: 16),
                ),
              ),
            )
          else
            // Grid with 4 columns and square items.
            Expanded(
              child: GridView.builder(
                padding: const EdgeInsets.all(10),
                itemCount: products.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4, // 4 items per row
                  childAspectRatio: 1, // square cells
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 8,
                ),
                itemBuilder: (ctx, i) {
                  final product = products[i];
                  final inCart = _cart.containsKey(product.id);
                  final qty = inCart ? _cart[product.id]!.quantity : 0;

                  // Each cell is square (because childAspectRatio = 1).
                  // We'll use a Stack so the image fills the cell and title/price + cart icon overlay on top,
                  // avoiding extra vertical space under the image.
                  return InkWell(
                    onTap: () => _openDetails(product),
                    child: Card(
                      elevation: 2,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      clipBehavior: Clip.hardEdge,
                      child: Stack(
                        fit: StackFit.expand,
                        children: [
                          // Square image fills the cell
                          Positioned.fill(
                            child: Image.network(
                              product.imageUrl,
                              fit: BoxFit.cover,
                              errorBuilder: (_, __, ___) =>
                                  const Center(child: Icon(Icons.image)),
                            ),
                          ),

                          // Semi-transparent gradient at bottom for title/price
                          Positioned(
                            left: 0,
                            right: 0,
                            bottom: 0,
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 6,
                                vertical: 6,
                              ),
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    Colors.black.withOpacity(0.6),
                                    Colors.black.withOpacity(0.25),
                                  ],
                                  begin: Alignment.bottomCenter,
                                  end: Alignment.topCenter,
                                ),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    product.title,
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(height: 2),
                                  Text(
                                    '₹${product.price.toStringAsFixed(2)}',
                                    style: const TextStyle(
                                      color: Colors.white70,
                                      fontSize: 11,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),

                          // Top-right: if product not in cart -> show add-to-cart icon.
                          // If in cart -> show quantity circle and a small + button to increment.
                          Positioned(
                            right: 6,
                            top: 6,
                            child: inCart
                                ? Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      // Quantity circle
                                      Container(
                                        padding: const EdgeInsets.all(6),
                                        decoration: BoxDecoration(
                                          color: Colors.black.withOpacity(0.6),
                                          shape: BoxShape.circle,
                                        ),
                                        child: Text(
                                          qty.toString(),
                                          style: const TextStyle(
                                            color: Colors.white,
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(height: 6),
                                      // Plus button to increment
                                      Material(
                                        color: Colors.black.withOpacity(0.35),
                                        shape: const CircleBorder(),
                                        child: InkWell(
                                          customBorder: const CircleBorder(),
                                          onTap: () =>
                                              _incrementFromTile(product),
                                          child: const Padding(
                                            padding: EdgeInsets.all(6),
                                            child: Icon(
                                              Icons.add,
                                              size: 16,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  )
                                : Material(
                                    color: Colors.black.withOpacity(0.35),
                                    shape: const CircleBorder(),
                                    child: InkWell(
                                      customBorder: const CircleBorder(),
                                      onTap: () => _addToCart(product),
                                      child: const Padding(
                                        padding: EdgeInsets.all(6),
                                        child: Icon(
                                          Icons.add_shopping_cart,
                                          size: 16,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
        ],
      ),
    );
  }
}

/// Product details screen
class ProductDetailsScreen extends StatelessWidget {
  final Product product;
  final VoidCallback onAddToCart;

  const ProductDetailsScreen({
    super.key,
    required this.product,
    required this.onAddToCart,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(product.title)),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                SizedBox(
                  height: 300,
                  width: double.infinity,
                  child: Image.network(
                    product.imageUrl,
                    fit: BoxFit.cover,
                    errorBuilder: (_, __, ___) =>
                        const Center(child: Icon(Icons.image)),
                  ),
                ),
                const SizedBox(height: 16),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    product.title,
                    style: const TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 4),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    product.category,
                    style: const TextStyle(fontSize: 13, color: Colors.grey),
                  ),
                ),
                const SizedBox(height: 8),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    '₹${product.price.toStringAsFixed(2)}',
                    style: const TextStyle(
                      fontSize: 18,
                      color: Colors.green,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    product.description,
                    style: const TextStyle(fontSize: 15),
                  ),
                ),
              ],
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton.icon(
                  icon: const Icon(Icons.add_shopping_cart),
                  label: const Text('Add to Cart'),
                  onPressed: () {
                    onAddToCart();
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Added to cart')),
                    );
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

/// Cart screen with payment method selection & remove button
class CartScreen extends StatefulWidget {
  final Map<String, CartItem> cartItems;
  final double totalAmount;
  final VoidCallback onClearCart;
  final void Function(String productId) onRemoveItem;

  const CartScreen({
    super.key,
    required this.cartItems,
    required this.totalAmount,
    required this.onClearCart,
    required this.onRemoveItem,
  });

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  double get _cartTotal {
    double total = 0;
    for (final item in widget.cartItems.values) {
      total += item.product.price * item.quantity;
    }
    return total;
  }

  void _showPaymentDialog(BuildContext context) {
    if (widget.cartItems.isEmpty) return;

    String selectedMethod = 'Cash on Delivery';

    showDialog(
      context: context,
      builder: (dialogCtx) {
        return StatefulBuilder(
          builder: (ctx, setInnerState) {
            return AlertDialog(
              title: const Text('Select Payment Method'),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  RadioListTile<String>(
                    title: const Text('Cash on Delivery'),
                    value: 'Cash on Delivery',
                    groupValue: selectedMethod,
                    onChanged: (val) {
                      setInnerState(() {
                        selectedMethod = val!;
                      });
                    },
                  ),
                  RadioListTile<String>(
                    title: const Text('UPI Payment'),
                    value: 'UPI',
                    groupValue: selectedMethod,
                    onChanged: (val) {
                      setInnerState(() {
                        selectedMethod = val!;
                      });
                    },
                  ),
                ],
              ),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.of(dialogCtx).pop();
                  },
                  child: const Text('Cancel'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(dialogCtx).pop();

                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (_) => OrderTrackingScreen(
                          paymentMethod: selectedMethod,
                          totalAmount: _cartTotal,
                          itemCount: widget.cartItems.length,
                        ),
                      ),
                    );

                    setState(() {
                      widget.cartItems.clear();
                    });
                    widget.onClearCart();
                  },
                  child: const Text('Place Order'),
                ),
              ],
            );
          },
        );
      },
    );
  }

  void _deleteItem(String productId) {
    setState(() {
      widget.cartItems.remove(productId);
    });
    widget.onRemoveItem(productId);
  }

  @override
  Widget build(BuildContext context) {
    final itemsList = widget.cartItems.values.toList();

    return Scaffold(
      appBar: AppBar(title: const Text('Your Cart')),
      body: Column(
        children: [
          Card(
            margin: const EdgeInsets.all(12),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                children: [
                  const Text('Total:', style: TextStyle(fontSize: 18)),
                  const SizedBox(width: 8),
                  Chip(
                    label: Text(
                      '₹${_cartTotal.toStringAsFixed(2)}',
                      style: const TextStyle(color: Colors.white),
                    ),
                    backgroundColor: Theme.of(context).colorScheme.primary,
                  ),
                  const Spacer(),
                  TextButton(
                    onPressed: widget.cartItems.isEmpty
                        ? null
                        : () => _showPaymentDialog(context),
                    child: const Text('ORDER NOW'),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 8),
          Expanded(
            child: itemsList.isEmpty
                ? const Center(
                    child: Text(
                      'No items in cart',
                      style: TextStyle(fontSize: 16),
                    ),
                  )
                : ListView.builder(
                    itemCount: itemsList.length,
                    itemBuilder: (ctx, i) {
                      final item = itemsList[i];
                      return Dismissible(
                        key: ValueKey(item.product.id),
                        direction: DismissDirection.endToStart,
                        background: Container(
                          alignment: Alignment.centerRight,
                          padding: const EdgeInsets.only(right: 20),
                          color: Colors.red,
                          child: const Icon(Icons.delete, color: Colors.white),
                        ),
                        onDismissed: (_) {
                          _deleteItem(item.product.id);
                        },
                        child: ListTile(
                          leading: SizedBox(
                            width: 48,
                            height: 48,
                            child: Image.network(
                              item.product.imageUrl,
                              fit: BoxFit.cover,
                              errorBuilder: (_, __, ___) =>
                                  const Icon(Icons.image),
                            ),
                          ),
                          title: Text(item.product.title),
                          subtitle: Text(
                            '₹${item.product.price.toStringAsFixed(2)} x ${item.quantity}',
                          ),
                          trailing: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              IconButton(
                                icon: const Icon(Icons.remove_circle_outline),
                                onPressed: () {
                                  setState(() {
                                    if (item.quantity > 1) {
                                      item.quantity--;
                                    } else {
                                      widget.cartItems.remove(item.product.id);
                                      widget.onRemoveItem(item.product.id);
                                    }
                                  });
                                },
                              ),
                              Text(
                                item.quantity.toString(),
                                style: const TextStyle(fontSize: 16),
                              ),
                              IconButton(
                                icon: const Icon(Icons.add_circle_outline),
                                onPressed: () {
                                  setState(() {
                                    item.quantity++;
                                  });
                                },
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
          ),
        ],
      ),
    );
  }
}

/// Order tracking screen with Stepper
class OrderTrackingScreen extends StatefulWidget {
  final String paymentMethod;
  final double totalAmount;
  final int itemCount;

  const OrderTrackingScreen({
    super.key,
    required this.paymentMethod,
    required this.totalAmount,
    required this.itemCount,
  });

  @override
  State<OrderTrackingScreen> createState() => _OrderTrackingScreenState();
}

class _OrderTrackingScreenState extends State<OrderTrackingScreen> {
  int _currentStep = 0;

  final List<String> _steps = const [
    'Order Placed',
    'Packed',
    'Shipped',
    'Out for Delivery',
    'Delivered',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Order Tracking')),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Order summary
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Card(
              elevation: 2,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Order Summary',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    const SizedBox(height: 8),
                    Text('Items: ${widget.itemCount}'),
                    Text('Total: ₹${widget.totalAmount.toStringAsFixed(2)}'),
                    Text('Payment: ${widget.paymentMethod}'),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(height: 8),
          Expanded(
            child: Stepper(
              currentStep: _currentStep,
              steps: List.generate(_steps.length, (index) {
                final title = _steps[index];
                return Step(
                  title: Text(title),
                  content: Align(
                    alignment: Alignment.centerLeft,
                    child: Text('Status: $title'),
                  ),
                  isActive: _currentStep >= index,
                  state: _currentStep > index
                      ? StepState.complete
                      : StepState.indexed,
                );
              }),
              onStepContinue: () {
                if (_currentStep < _steps.length - 1) {
                  setState(() {
                    _currentStep++;
                  });
                } else {
                  Navigator.of(context).pop(); // close on last
                }
              },
              onStepCancel: () {
                if (_currentStep > 0) {
                  setState(() {
                    _currentStep--;
                  });
                }
              },
              controlsBuilder: (context, details) {
                final isLast = _currentStep == _steps.length - 1;
                return Row(
                  children: [
                    ElevatedButton(
                      onPressed: details.onStepContinue,
                      child: Text(isLast ? 'Close' : 'Next'),
                    ),
                    const SizedBox(width: 8),
                    if (_currentStep > 0 && !isLast)
                      TextButton(
                        onPressed: details.onStepCancel,
                        child: const Text('Back'),
                      ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

/// 👤 Customer details screen
class CustomerDetailsScreen extends StatelessWidget {
  final Customer customer;

  const CustomerDetailsScreen({super.key, required this.customer});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Customer Details')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Card(
          elevation: 3,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _infoRow('Name', customer.name),
                const SizedBox(height: 8),
                _infoRow('Email', customer.email),
                const SizedBox(height: 8),
                _infoRow('Phone', customer.phone),
                const SizedBox(height: 8),
                _infoRow('Address', customer.address),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _infoRow(String label, String value) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('$label: ', style: const TextStyle(fontWeight: FontWeight.bold)),
        Expanded(child: Text(value)),
      ],
    );
  }
}
