import 'package:flutter/material.dart';
import '../route_timeline_screen.dart';

class RouteButton extends StatelessWidget {

const RouteButton({super.key,});
@override
  Widget build(BuildContext context) {
  
  

return SizedBox(

                        width:
                            double.infinity,

                        height: 58,

                        child:
                            ElevatedButton(

                          style:
                              ElevatedButton
                                  .styleFrom(

                            backgroundColor:
                                Colors.orange,

                            shape:
                                RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius
                                      .circular(
                                          18),
                            ),
                          ),

                          onPressed: () {

                            Navigator.push(

                              context,

                              MaterialPageRoute(

                                builder:
                                    (context) =>
                                        const RouteTimelineScreen(),
                              ),
                            );
                          },

                          child: const Text(

                            "View Full Route",

                            style:
                                TextStyle(
                              color:
                                  Colors.black,
                              fontSize: 18,
                              fontWeight:
                                  FontWeight
                                      .bold,
                            ),
                          ),
                        ),
                      );}}