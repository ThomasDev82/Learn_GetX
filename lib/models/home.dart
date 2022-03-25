import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomePage'),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            MaterialButton(
              onPressed: () {
                Get.toNamed('/pageone');
                // Navigator.of(context).push(
                //   MaterialPageRoute(
                //     builder: (builder) => const One(),
                //   ),
                // );
              },
              child: const Text('Go to page 1'),
              color: Colors.blue,
            ),
            const SizedBox(height: 25),
            MaterialButton(
              onPressed: () {
                Get.toNamed('/pagetwo');
                // Navigator.of(context).push(
                //   MaterialPageRoute(
                //     builder: (builder) => const Two(),
                //   ),
                // );
              },
              child: const Text('Go to page 2'),
              color: Colors.blue,
            ),
            const SizedBox(height: 25),
            MaterialButton(
              onPressed: () {
                Get.toNamed('/pagethree');
                // Navigator.of(context).push(
                //   MaterialPageRoute(
                //     builder: (builder) => const Three(),
                //   ),
                // );
              },
              child: const Text('Go to page 3'),
              color: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}

//  PAGES.................

class One extends StatelessWidget {
  const One({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: const Icon(Icons.backspace),
        ),
        title: const Text('Page One'),
      ),
      body: const Center(
        child: Text(
          'Welcome to Page One',
          style: TextStyle(
            fontSize: 35,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

class Two extends StatelessWidget {
  const Two({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: const Icon(Icons.backspace),
        ),
        title: const Text('Page Two'),
      ),
      body: const Center(
        child: Text(
          'Welcome to Page Two',
          style: TextStyle(
            fontSize: 35,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

class Three extends StatelessWidget {
  const Three({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: const Icon(Icons.backspace),
        ),
        title: const Text('Page Three'),
      ),
      body: const Center(
        child: Text(
          'Welcome to Page Three',
          style: TextStyle(
            fontSize: 35,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
