import 'package:black/widgets/member_Widget.dart';
import 'package:black/widgets/myScaffold.dart';
import 'package:flutter/material.dart';

import '../widgets/animated_Divider.dart';
import 'aboutUs_Screen.dart';

class TeamScreen extends StatefulWidget {
  const TeamScreen({super.key});

  @override
  State<TeamScreen> createState() => _TeamScreenState();
}

class _TeamScreenState extends State<TeamScreen> {
  @override
  Widget build(BuildContext context) {
    return MyScaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                color: Colors.yellow,
                width: deviceWidth(context),
                padding: EdgeInsets.symmetric(vertical: 50,horizontal: 20),
                child: Column(
                  children: [
                    Text(
                      'BLACK 90 TEAM',
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w900,
                          color: Colors.grey[800]
                      ),
                    ),
                    SizedBox(height: 20,),
                    Text(
                      'A TEAM OF EXPERTS IN EVERYTHING YOU NEED FOR THE SUCCESS OF YOUR BUSINESS',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w300,
                          color: Colors.black
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30,),
              Container(
                width: deviceWidth(context),
                child: Column(
                  children: [
                    Text(
                      "BLACK 90 TEAM",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w900,
                        color: Colors.yellow,
                      ),
                    ),
                    SizedBox(height: 10,),
                    Text(
                      "A team of experts in everything you need",
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 10,),
                    MovingDotAnimation(),
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        MemberWidget(
                            img: 'assets/1.jpg',
                            name: "Ahmed Maher",
                            role: "CEO",
                            summary: "Director responsible for marketing planning",
                            description: "I understand the company's management and effectiveness with customers, support and follow up the various teams within the company, and accurately communicate between the company's team officials (marketing team - programming team - social media team), in addition to ensuring the quality of projects at different stages before they are delivered.\n\n"
                                "Ahmed Maher is distinguished by his marketing skills that enable him to support the level of the marketing and sales team inside and outside the company. In addition to marketing and sales skills, Ahmed Maher excels in managing marketing tools via social media and the Google search engine.",
                            statistic1name: "Content Operation Specialist",
                            statistic1per: 95,
                            statistic2name: "Advertising Manager",
                            statistic2per: 85,
                            statistic3name: "Sales Marketing",
                            statistic3per: 80,
                            statistic4name: "Digital Marketing Specialist",
                            statistic4per: 85,
                            statistic5name: "Commercial Awareness",
                            statistic5per: 95,
                            statistic6name: "Problem Solving And Decision-Making",
                            statistic6per: 90,
                        ),
                        MemberWidget(
                          img: 'assets/2.jpg',
                          name: "Abd El Rahman Mohamed",
                          role: "Vice CEO",
                          summary: "Work closely with the CEO to develop",
                          description: "Responsibility for supporting the Chief Executive Officer (CEO) in managing the company and making strategic decisions Providing support and advice to the CEO in making daily and strategic decisions Monitor the daily activities of the company and ensure that policies and procedures are implemented effectively Supervising administrative teams and ensuring that set goals are achieved.\n\n"
                              "It aims to develop the strategic direction to achieve the company's goals. Maintain good relationships with customers, shareholders and partners. To deal with the flooring and flooring problems you may face and make the right decision.",
                          statistic1name: "Leadership And Management",
                          statistic1per: 95,
                          statistic2name: "Strategic Planning",
                          statistic2per: 85,
                          statistic3name: "Communication",
                          statistic3per: 80,
                          statistic4name: "Operations Management",
                          statistic4per: 85,
                          statistic5name: "Analytical Thinking",
                          statistic5per: 90,
                          statistic6name: "Negotiation And Persuasion",
                          statistic6per: 90,
                        ),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        MemberWidget(
                          img: 'assets/WhatsApp Image 2024-06-30 at 02.18.42_00010313.jpg',
                          name: "Ahmed Ismail",
                          role: "Front end",
                          summary: "Front-End Developer for websites using React Js and Next Js",
                          description: "Front-end developer for websites. I have built and developed a large number of applications using technologies such as React and NextJS. I always strive to innovate and deliver outstanding user experiences through creative programming and careful design.",
                          statistic1name: "Html",
                          statistic1per: 95,
                          statistic2name: "Css",
                          statistic2per: 85,
                          statistic3name: "Java Script",
                          statistic3per: 80,
                          statistic4name: "Type Script",
                          statistic4per: 85,
                          statistic5name: "React.Js",
                          statistic5per: 70,
                          statistic6name: "Next.Js",
                          statistic6per: 90,
                        ),
                        MemberWidget(
                          img: 'assets/3.jpg',
                          name: "Hala Helmy Mohammed",
                          role: "Media Buyer",
                          summary: "The role of media buyers is vital in planning and successfully",
                          description: "Hala can make it easier for creatives to develop their adverts, brands, and tailor marketing campaigns to their accounts.",
                          statistic1name: "Media Marketing",
                          statistic1per: 95,
                          statistic2name: "Communicate With People",
                          statistic2per: 85,
                          statistic3name: "Advertising",
                          statistic3per: 85,
                          statistic4name: "Speaking Skills",
                          statistic4per: 85,
                          statistic5name: "Promotion Skill",
                          statistic5per: 90,
                          statistic6name: "E-Marketing",
                          statistic6per: 90,
                        ),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        MemberWidget(
                          img: 'assets/5.jpg',
                          name: "Hassan Gamal",
                          role: "Mobile Application",
                          summary: "Mobile application Developer using Flutter",
                          description: "An ambitious Flutter software developer who specializes in creating and developing mobile applications. I have Hassan Technical skills and ability to create many wonderful applications with various specifications and features for many of our customers.\n\n"
                              "Hassan is distinguished By learning the latest technologies and skills to adapt to developments in various programming languages to provide the highest possible efficiency at work. Ahmed is able to edit, integrate and support mobile applications with different operating systems.",
                          statistic1name: "Building App From Scratch",
                          statistic1per: 95,
                          statistic2name: "Development Of Mobile/Web Front Ends",
                          statistic2per: 90,
                          statistic3name: "API Integration And Testing",
                          statistic3per: 80,
                          statistic4name: "Perform Cross-Browser/Device Testing",
                          statistic4per: 85,
                          statistic5name: "Code, And Provide Functional Testing For (IOS / Android)",
                          statistic5per: 80,
                          statistic6name: "Create Clean Interfaces And Smooth Interactions",
                          statistic6per: 90,
                        ),
                        MemberWidget(
                          img: 'assets/4.jpg',
                          name: "Ahmed Mamdouh",
                          role: "Front end",
                          summary: "Front-End Developer for websites using React Js and JQuery",
                          description: "A front-end web developer, she is good at using her knowledge of various programming languages to code applications and websites from the user side, including visual elements and clickable buttons. Ahmed uses coding languages ​​such as HTML to create user-friendly web pages.\n\n"
                              "Ahmed is distinguished by the general planning of websites and web applications, as well as communicating with customers to determine their needs, maintaining and improving websites and interfaces to suit desktop computers and mobile phones.",
                          statistic1name: "Html",
                          statistic1per: 95,
                          statistic2name: "Css",
                          statistic2per: 85,
                          statistic3name: "Java Script",
                          statistic3per: 80,
                          statistic4name: "JQuery",
                          statistic4per: 85,
                          statistic5name: "React.Js",
                          statistic5per: 70,
                          statistic6name: "Design HTML/CSS Web Pages And Functions In JavaScript",
                          statistic6per: 90,
                        ),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        MemberWidget(
                          img: 'assets/3.jpg',
                          name: "Rahma Saad Elsabagh",
                          role: "Sales",
                          summary: "Responsible for identifying potential customers and converting leads into sales",
                          description: "Responsible for identifying potential customers, converting leads into sales, engaging with customers, understanding their needs, and providing solutions that meet those needs. Nisreen has excellent communication and interpersonal skills and builds lasting relationships with customers to ensure repeat business. Nisreen is also responsible for ensuring customer satisfaction.",
                          statistic1name: "Targeting Interested Customers",
                          statistic1per: 95,
                          statistic2name: "Convince The Client",
                          statistic2per: 95,
                          statistic3name: "Tact In Dealing And Manner",
                          statistic3per: 90,
                          statistic4name: "Flexibility In Dealing",
                          statistic4per: 85,
                          statistic5name: "Building Customer Trust",
                          statistic5per: 90,
                          statistic6name: "Delegate Tasks And Set Deadlines",
                          statistic6per: 85,
                        ),
                        MemberWidget(
                          img: 'assets/3.jpg',
                          name: "Hossam azzam",
                          role: "Graphic Designer",
                          summary: "Graphic designer specializing in social media designs, publications, and visual identity",
                          description: "Graphic designer specializing in social media designs, publications, and visual identity. Responsible for the work and graphic designs of the company and its clients. Hossam is proficient in designing and developing the visual identity of companies and institutions, including logo designs, advertising banners, and official papers.",
                          statistic1name: "Photoshop",
                          statistic1per: 95,
                          statistic2name: "Social Media Designs",
                          statistic2per: 95,
                          statistic3name: "Publications Designs",
                          statistic3per: 90,
                          statistic4name: "Illustrator",
                          statistic4per: 85,
                          statistic5name: "Logos And Visual Identity",
                          statistic5per: 90,
                          statistic6name: "Creativity And Development At Work",
                          statistic6per: 85,
                        ),
                      ],
                    ),
                    SizedBox(height: 30,),
          
                  ],
                ),
              )
            ],
          ),
        ),
    );
  }
}
