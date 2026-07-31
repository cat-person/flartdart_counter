import 'package:flartdart/flartdart.dart';

void main() {
  ScreenUtil.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp();

  @override
  Widget build(BuildContext context) {
    return FDMaterialApp(
      title: 'Counter',
      home: const CounterPage(),
    );
  }
}

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class User {
  // Private fields with getters/setters
  String _name;
  int _age;
  String _email;
  final String id;
  bool _isActive;

  // Constructor with initializer list
  User({
    required this.id,
    required String name,
    required int age,
    required String email,
    bool isActive = true,
  })  : _name = name,
        _age = age,
        _email = email,
        _isActive = isActive;

  // Named constructor
  User.guest(String id)
      : this(
          id: id,
          name: 'Guest',
          age: 0,
          email: 'guest@example.com',
          isActive: true,
        );

  // Factory constructor for creating from JSON
  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'] as String,
      name: json['name'] as String,
      age: json['age'] as int,
      email: json['email'] as String,
      isActive: json['isActive'] as bool? ?? true,
    );
  }

  // Getters and Setters
  String get name => _name;
  set name(String value) {
    if (value.trim().isEmpty) {
      throw ArgumentError('Name cannot be empty');
    }
    _name = value.trim();
  }

  int get age => _age;
  set age(int value) {
    if (value < 0 || value > 150) {
      throw ArgumentError('Age must be between 0 and 150');
    }
    _age = value;
  }

  String get email => _email;
  set email(String value) {
    if (!value.contains('@')) {
      throw ArgumentError('Invalid email format');
    }
    _email = value;
  }

  bool get isActive => _isActive;
  set isActive(bool value) => _isActive = value;

  // Computed property
  bool get isAdult => _age >= 18;

  // Methods
  void activate() => _isActive = true;
  void deactivate() => _isActive = false;

  // Convert to JSON
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': _name,
      'age': _age,
      'email': _email,
      'isActive': _isActive,
    };
  }

  // Copy with method (immutability pattern)
  User copyWith({
    String? id,
    String? name,
    int? age,
    String? email,
    bool? isActive,
  }) {
    return User(
      id: id ?? this.id,
      name: name ?? _name,
      age: age ?? _age,
      email: email ?? _email,
      isActive: isActive ?? _isActive,
    );
  }

  // Override toString for debugging
  @override
  String toString() {
    return 'User(id: $id, name: $_name, age: $_age, email: $_email, isActive: $_isActive)';
  }

  // Equals and hashCode for value equality
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is User &&
        other.id == id &&
        other._name == _name &&
        other._age == _age &&
        other._email == _email;
  }

  @override
  int get hashCode {
    return Object.hash(id, _name, _age, _email);
  }
}

class _CounterPageState extends State<CounterPage> {
  int _count = 0;
  final user = User(
    id: '001',
    name: 'John Doe',
    age: 25,
    email: 'john@example.com',
  );

  @override
  Widget build(BuildContext context) {
    return FDScaffold(
      appBar: FDAppBar(
        title: const FDText('Counter Demo'),
        backgroundColor: FlartColors.blue,
      ),
      body: FDCenter(
        child: FDColumn(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FDText(
              'Count: $_count',
              style: TextStyle(
                fontSize: 48.0.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
            FDSizedBox(height: 24.0.h),
            FDRow(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FDElevatedButton(
                  onPressed: () => setState(() => _count--),
                  child: const FDText('-'),
                ),
                FDSizedBox(width: 16.0.w),
                FDElevatedButton(
                  onPressed: () => setState(() => _count++),
                  child: const FDText('+'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
