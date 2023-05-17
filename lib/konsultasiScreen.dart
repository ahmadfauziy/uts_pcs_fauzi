import 'package:flutter/material.dart';

class konsultasiScreen extends StatefulWidget {
  @override
  _KonsultasiScreenState createState() => _KonsultasiScreenState();
}

class _KonsultasiScreenState extends State<konsultasiScreen> {
  final TextEditingController _messageController = TextEditingController();
  final List<Map<String, dynamic>> _messages = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Konsultasi'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(16.0),
              child: ListView.builder(
                reverse: true,
                itemCount: _messages.length,
                itemBuilder: (BuildContext context, int index) {
                  final Map<String, dynamic> message = _messages[index];
                  final bool isMe = message['isMe'];
                  final Color color = isMe ? Colors.blue : Colors.grey[200]!;
                  final Alignment alignment =
                      isMe ? Alignment.centerRight : Alignment.centerLeft;
                  return Container(
                    margin: EdgeInsets.only(bottom: 16.0),
                    decoration: BoxDecoration(
                      color: color,
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 16.0, vertical: 8.0),
                      child: Text(
                        message['text'],
                        style: TextStyle(fontSize: 16.0),
                      ),
                    ),
                    alignment: alignment,
                  );
                },
              ),
            ),
          ),
          Divider(height: 1.0),
          Container(
            margin: EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: Colors.grey[200]!,
              borderRadius: BorderRadius.circular(32.0),
            ),
            child: Row(
              children: [
                SizedBox(width: 16.0),
                Expanded(
                  child: TextField(
                    controller: _messageController,
                    decoration: InputDecoration(
                      hintText: 'Ketik pesan...',
                      border: InputBorder.none,
                    ),
                    onSubmitted: _sendMessage,
                  ),
                ),
                IconButton(
                  onPressed: () => _sendMessage(_messageController.text),
                  icon: Icon(Icons.send),
                  color: Colors.blue,
                ),
                SizedBox(width: 16.0),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _sendMessage(String text) {
    if (text.trim().isEmpty) {
      return;
    }
    _messages.insert(0, {
      'text': text,
      'isMe': true,
    });
    _messageController.clear();
    setState(() {});
  }
}
