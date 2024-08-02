import 'package:black/widgets/myScaffold.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final List<String> _messages = [];
  final TextEditingController _controller = TextEditingController();
  bool _showImage = true;

  void _sendMessage() {
    if (_controller.text.isNotEmpty) {
      setState(() {
        _messages.add(_controller.text);
        _controller.clear();
        _showImage = false;
      });
    }
  }

  Widget _buildMessage(String message) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
      child: Align(
        alignment: Alignment.centerRight,
        child: Container(
          padding: const EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            color: Colors.yellow[600],
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Text(
            message,
            style: TextStyle(fontSize: 16.0, color: Colors.black),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      body: Column(
        children: <Widget>[
          Expanded(
            child: Stack(
              children: [
                ListView.builder(
                  padding: const EdgeInsets.all(8.0),
                  reverse: true,
                  itemCount: _messages.length,
                  itemBuilder: (BuildContext context, int index) {
                    return _buildMessage(_messages[_messages.length - 1 - index]);
                  },
                ),
                if (_showImage)
                  Center(
                    child:Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.yellow.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Image.asset(
                        'assets/file.png',
                        width: 100,
                      ),
                    ),
                  ),
              ],
            ),
          ),
          Container(
            height: 55,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              boxShadow: [
                BoxShadow(
                  color: Colors.yellow.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: Offset(0, 3),
                ),
              ],
              color: Colors.white
            ),
            padding: EdgeInsets.only(left: 10),
            margin: EdgeInsets.all(10),
            child: _buildTextComposer(),
          ),
        ],
      ),
    );
  }

  Widget _buildTextComposer() {
    return Container(
      width: deviceWidth(context),
      margin: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        children: <Widget>[
          Flexible(
            child: TextField(
              cursorColor: Colors.black,
              controller: _controller,
              onSubmitted: (String text) {
                _sendMessage();
              },
              decoration: InputDecoration.collapsed(
                hintText: 'Send a message',
                hintStyle: TextStyle(color: Colors.grey[900]),
              ),
              style: TextStyle(color: Colors.black),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 4.0),
            child: IconButton(
              icon: Icon(Icons.send, color: Colors.yellow),
              onPressed: _sendMessage,
            ),
          ),
        ],
      ),
    );
  }

  double deviceHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  double deviceWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }
}
