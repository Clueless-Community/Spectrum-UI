import 'package:flutter/material.dart';

class InboxMessage4 extends StatelessWidget {
  final String name;
  final String username;
  final String msg;
  final String imgUrl;
  const InboxMessage4(
      {super.key,
      required this.name,
      required this.username,
      required this.msg,
      required this.imgUrl});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;

    return Container(
      width: double.infinity,
      height: height / 7,
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: Row(
        // mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(10, 10, 0, 10),
              child: Container(
                width: 100,
                height: 100,
                clipBehavior: Clip.antiAlias,
                decoration: const BoxDecoration(
                  color: Colors.black,
                  shape: BoxShape.circle,
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(46),
                  child: Image.network(
                    imgUrl,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Column(
              children: [
                Align(
                  alignment: const AlignmentDirectional(-0.85, 0.22),
                  child: Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(10, 20, 0, 0),
                    child: Text(
                      name,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Poppins',
                        color: Colors.black,
                        fontSize: 24,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 18, 0, 10),
                    child: Align(
                      alignment: const AlignmentDirectional(-0.80, -0.9),
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                        child: Text(
                          msg,
                          style: const TextStyle(
                            fontSize: 16,
                            fontFamily: 'Poppins',
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Column(
              children: [
                const Expanded(
                  child: Align(
                    alignment: AlignmentDirectional(0.5, -0.55),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                      child: Text(
                        '6:32 PM',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(0.85, 0.55),
                  child: Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 10, 10),
                    child: Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                          color: const Color(0xff005F99),
                          borderRadius: BorderRadius.circular(10)),
                      child: const Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 10, 0),
                        child: Center(
                          child: Text(
                            '  1',
                            style: TextStyle(
                              fontSize: 20,
                              fontFamily: 'Poppins',
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
