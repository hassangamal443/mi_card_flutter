import 'package:black/widgets/myScaffold.dart';
import 'package:black/widgets/myScaffold2.dart';
import 'package:flutter/material.dart';
import '../widgets/animated_Divider.dart';
import 'aboutUs_Screen.dart';

class OurArticlesScreen extends StatefulWidget {
  const OurArticlesScreen({super.key});

  @override
  State<OurArticlesScreen> createState() => _OurArticlesScreenState();
}

class _OurArticlesScreenState extends State<OurArticlesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    'OUR ARTICLES',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w900,
                        color: Colors.grey[800]
                    ),
                  ),
                  SizedBox(height: 20,),
                  Text(
                    'THESE ARE ALL EXCELLENT ARTICLES THAT MAY INTRODUCE YOU TO EXCELLENT PROGRAMS AND USES',
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
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(context,MaterialPageRoute(builder: (context) =>const First()));
                        },
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset('assets/BA.jpg',width: (deviceWidth(context)/2)-20,),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(context,MaterialPageRoute(builder: (context) =>const Second()));
                        },
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset('assets/landscape-1.png',width: (deviceWidth(context)/2)-20,),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(context,MaterialPageRoute(builder: (context) =>const Third()));
                        },
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset('assets/landscape-2.png',width: (deviceWidth(context)/2)-20,),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(context,MaterialPageRoute(builder: (context) =>const Fourth()));
                        },
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset('assets/web.png',width: (deviceWidth(context)/2)-20,),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(context,MaterialPageRoute(builder: (context) =>const Fifth()));
                        },
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset('assets/E-W.jpg',width: (deviceWidth(context)/2)-20,),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(context,MaterialPageRoute(builder: (context) =>const Sixth()));
                        },
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset('assets/par.jpg',width: (deviceWidth(context)/2)-20,),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class First extends StatelessWidget {
  const First({super.key});

  @override
  Widget build(BuildContext context) {
    return MyScaffold2(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20,vertical: 40),
          child: Column(
            children: [
              Text(
                "Black 90 company",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w900,
                  color: Colors.yellow,
                ),
              ),
              SizedBox(height: 20,),
              MovingDotAnimation(),
              SizedBox(height: 15,),
              Text(
                "When starting a business on the Internet, your first step will be to search for a design and programming company to help you design websites or program your own electronic application. To achieve this, you will find hundreds of programming and design companies worldwide, but we will talk about our company and the services that we provide, as we are a programming, design and marketing company that specializes in these services for owners of profitable commercial projects.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 13,
                  color: Colors.black,
                  fontWeight: FontWeight.w300,
                ),
              ),
              SizedBox(height: 20,),
              Image.asset('assets/BA.jpg',),
              SizedBox(height: 40,),
              Text(
                "Black 90 Commercial Services Company",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w900,
                  color: Colors.yellow,
                ),
              ),
              SizedBox(height: 20,),
              MovingDotAnimation(),
              SizedBox(height: 15,),
              Text(
                "Balck90 began its journey in August 2019, and despite the short duration, we were able to implement fifteen successful projects for our distinguished clients, whether mobile application design, website programming, social media marketing, or search engine optimization. Balck90 has a cutting-edge team consisting of a group of experienced programmers with all the programming languages​​needed to achieve satisfactory results. In addition to the expert designers who provide the creative touch to the brand design and visual identity, we were able to achieve this success and reach customers through marketing and website improvement specialists who work around the clock to raise the value of our website to appear on the first page in search engines.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 13,
                  color: Colors.black,
                  fontWeight: FontWeight.w300,
                ),
              ),
              SizedBox(height: 20,),
              Image.asset('assets/in.jpg',),
              SizedBox(height: 40,),
              Text(
                "Black 90 services",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w900,
                  color: Colors.yellow,
                ),
              ),
              SizedBox(height: 20,),
              MovingDotAnimation(),
              SizedBox(height: 15,),
              Text(
                "Any design and programming company seeks to provide programming services for websites and mobile phone applications, but we at Black 90 Company are not satisfied with starting with you from scratch by building a distinctive website and then contacting the marketing of your services or services on social media platforms while they are still reaching the goal. Target clients rely on lessons provided by specialists at the school.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 13,
                  color: Colors.black,
                  fontWeight: FontWeight.w300,
                ),
              ),
              SizedBox(height: 40,),
              Text(
                "Our services are summarized under the following items",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w900,
                  color: Colors.yellow,
                ),
              ),
              SizedBox(height: 20,),
              MovingDotAnimation(),
              SizedBox(height: 15,),
              Row(
                children: [
                  Icon(Icons.arrow_forward_ios_rounded, color: Colors.blue,),
                  SizedBox(width: 10,),
                  Text(
                    "Website design and programming.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Icon(Icons.arrow_forward_ios_rounded, color: Colors.blue,),
                  SizedBox(width: 10,),
                  Text(
                    "Design and programming mobile applications.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Icon(Icons.arrow_forward_ios_rounded, color: Colors.blue,),
                  SizedBox(width: 10,),
                  Text(
                    "Marketing via social media platforms.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Icon(Icons.arrow_forward_ios_rounded, color: Colors.blue,),
                  SizedBox(width: 10,),
                  Text(
                    "Brand design and visual identity.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Icon(Icons.arrow_forward_ios_rounded, color: Colors.blue,),
                  SizedBox(width: 10,),
                  Text(
                    "Interior Design. technical support.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Icon(Icons.arrow_forward_ios_rounded, color: Colors.blue,),
                  SizedBox(width: 10,),
                  Text(
                    "Search engine optimization.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Second extends StatelessWidget {
  const Second({super.key});

  @override
  Widget build(BuildContext context) {
    return MyScaffold2(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20,vertical: 40),
          child: Column(
            children: [
              Text(
                "Cons Chatgpt",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w900,
                  color: Colors.yellow,
                ),
              ),
              SizedBox(height: 20,),
              MovingDotAnimation(),
              SizedBox(height: 15,),
              Text(
                "Within a few months, GPT Chat was able to steal the spotlight from all previous versions of artificial intelligence because of its advanced features and properties that humans can use instead of human services or even to facilitate daily work in companies. But technology is a double-edged sword, and despite the great benefit that GBT chat provides to companies and electronic project owners, its negatives are many and cannot be overlooked. So what are these negatives? Is it possible for this program to completely take over human jobs?",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 13,
                  color: Colors.black,
                  fontWeight: FontWeight.w300,
                ),
              ),
              SizedBox(height: 20,),
              Image.asset('assets/landscape-1.png',),
              SizedBox(height: 40,),
              Text(
                "Chat GPT",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w900,
                  color: Colors.yellow,
                ),
              ),
              SizedBox(height: 20,),
              MovingDotAnimation(),
              SizedBox(height: 15,),
              Text(
                "It is a program launched by the company (Open Ai), which consists of intelligent robots that can respond and answer user questions in a way that simulates human production. It was allocated last November. Many questions were raised about the future of many that can be hosted by artificial intelligence for its employees, as should this software not be poorly used by students in education?",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 13,
                  color: Colors.black,
                  fontWeight: FontWeight.w300,
                ),
              ),
              SizedBox(height: 40,),
              Text(
                "Disadvantages of the GPT chat program",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w900,
                  color: Colors.yellow,
                ),
              ),
              SizedBox(height: 20,),
              MovingDotAnimation(),
              SizedBox(height: 15,),
              Text(
                "Although this advanced program will have a major and distinctive role in the business sector in the future, it has some drawbacks, such as:",
                style: TextStyle(
                  fontSize: 13,
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: 15,),
              Container(
                width: deviceWidth(context) - 80,
                child: RichText(
                  text: TextSpan(
                    children: [
                      WidgetSpan(
                        alignment: PlaceholderAlignment.middle,
                        child: Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: Colors.blue,
                          size: 14,
                        ),
                      ),
                      TextSpan(
                        text:
                        " Those working in fields related to e-commerce or fields that can be dispensed with in favor of GPT chat must develop their skills in order to keep pace with technological developments and maintain their role in the digital economy.",
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Container(
                width: deviceWidth(context) - 80,
                child: RichText(
                  text: TextSpan(
                    children: [
                      WidgetSpan(
                        alignment: PlaceholderAlignment.middle,
                        child: Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: Colors.blue,
                          size: 14,
                        ),
                      ),
                      TextSpan(
                        text:
                            " The process of uploading false information to this program may cause great harm because it contains false information.",
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Container(
                width: deviceWidth(context) - 80,
                child: RichText(
                  text: TextSpan(
                    children: [
                      WidgetSpan(
                        alignment: PlaceholderAlignment.middle,
                        child: Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: Colors.blue,
                          size: 14,
                        ),
                      ),
                      TextSpan(
                        text:
                            " In the field of education, it will cause great harm to students in their educational stages because it will complete their homework for them and thus the students’ academic level will be weakened.",
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Container(
                width: deviceWidth(context) - 80,
                child: RichText(
                  text: TextSpan(
                    children: [
                      WidgetSpan(
                        alignment: PlaceholderAlignment.middle,
                        child: Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: Colors.blue,
                          size: 14,
                        ),
                      ),
                      TextSpan(
                        text:
                            " Content ownership is marginalized in GPT chat: although this program is very effective in formulating content, it does not reveal its sources and thus causes many ethical issues in content ownership.",
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Container(
                width: deviceWidth(context) - 80,
                child: RichText(
                  text: TextSpan(
                    children: [
                      WidgetSpan(
                        alignment: PlaceholderAlignment.middle,
                        child: Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: Colors.blue,
                          size: 14,
                        ),
                      ),
                      TextSpan(
                        text:
                            " Through GPT chat, many professional professions will lose their importance because it is able to raise productivity while giving models similar to human work.",
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 40,),
              Text(
                "Cons of chatbots",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w900,
                  color: Colors.yellow,
                ),
              ),
              SizedBox(height: 20,),
              MovingDotAnimation(),
              SizedBox(height: 15,),
              Text(
                "GBT Chat, which started in 2018, changed the world's perception of chatbot technology because the information provided by the speaker is very realistic and gives the person the feeling that he is talking to a real person. Although this distinguished program increases society's awareness of the benefits of artificial intelligence and motivates future generations to learn about it, study it, and contribute to its development, it causes many people to lose their sources of income But on the other hand, it will open new horizons to address society’s problems and free up human resources to achieve innovative solutions.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 13,
                  color: Colors.black,
                  fontWeight: FontWeight.w300,
                ),
              ),
              SizedBox(height: 20,),
              Text(
                "But the greatest danger is the complete reliance on non-certification on the parties to which it is received, as well as its impact on the educational system, which prompts many universities and schools to ban it. Although GBT chat has health benefits, it has the disadvantage of any technological technique, so the choice remains in your hand: whether you benefit from this program well and help you develop yourself, or vice versa",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 13,
                  color: Colors.black,
                  fontWeight: FontWeight.w300,
                ),
              ),
              SizedBox(height: 20,),
              Text(
                "We are balck90, an e-commerce programming company. Our job is to provide distinctive solutions to various types of commercial companies to develop their brand and diversify the value of your services among competing companies.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 13,
                  color: Colors.black,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Third extends StatelessWidget {
  const Third({super.key});

  @override
  Widget build(BuildContext context) {
    return MyScaffold2(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20,vertical: 40),
          child: Column(
            children: [
              Text(
                "Social Media Positives",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w900,
                  color: Colors.yellow,
                ),
              ),
              SizedBox(height: 20,),
              MovingDotAnimation(),
              SizedBox(height: 15,),
              Text(
                "Communication and interaction: Social media allows communication with friends and family at any time and from anywhere, which helps strengthen social relationships. Marketing and Advertising: Provides a powerful platform for companies to market their products and services and reach a wide audience. Information and Learning: It can be used as a source of information, news, and learning by sharing educational content, articles, and videos. Social Support: Provides ways to connect with support groups and communities with common interests. Self-expression: It allows individuals to express their opinions and ideas and share their hobbies and interests.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 13,
                  color: Colors.black,
                  fontWeight: FontWeight.w300,
                ),
              ),
              SizedBox(height: 20,),
              Image.asset('assets/landscape-2.png',),
              SizedBox(height: 40,),
              Text(
                "cons Social Media",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w900,
                  color: Colors.yellow,
                ),
              ),
              SizedBox(height: 20,),
              MovingDotAnimation(),
              SizedBox(height: 15,),
              Text(
                "Addiction: Repeated and excessive use may lead to addiction, which negatively affects productivity and mental health. Invasion of privacy: Users may be at risk of invasion of privacy and theft of personal data. Cyberbullying: It may be a platform for cyberbullying and harassment, which affects the mental health of users. Misinformation: Fake news and misinformation spread quickly, which can lead to misperceptions of events and issues. Social pressure: Individuals may feel pressure to compare with others and achieve unrealistic standards of beauty or success, which affects self-confidence. Social Isolation: Although it is a means of communication, excessive use can lead to social isolation and lack of real face-to-face communication. Health problems: Excessive use can lead to health problems such as back and neck pain, eye strain, and sleep disturbances.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 13,
                  color: Colors.black,
                  fontWeight: FontWeight.w300,
                ),
              ),
              SizedBox(height: 40,),
              Text(
                "Balance and use social media wisely",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w900,
                  color: Colors.yellow,
                ),
              ),
              SizedBox(height: 20,),
              MovingDotAnimation(),
              SizedBox(height: 15,),
              Text(
                "To make the most of social media and avoid negatives, it is recommended to balance the time spent on these platforms with other activities, be careful to protect privacy, and verify the accuracy of information before sharing it.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 13,
                  color: Colors.black,
                  fontWeight: FontWeight.w300,
                ),
              ),
              SizedBox(height: 20,),
              Text(
                "Social media has great benefits but it also carries some drawbacks. Here's an overview of the pros and cons of social media:",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 13,
                  color: Colors.black,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Fourth extends StatelessWidget {
  const Fourth({super.key});

  @override
  Widget build(BuildContext context) {
    return MyScaffold2(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20,vertical: 40),
          child: Column(
            children: [
              Text(
                "Websites are very important in today's era for the following reasons",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w900,
                  color: Colors.yellow,
                ),
              ),
              SizedBox(height: 20,),
              MovingDotAnimation(),
              SizedBox(height: 15,),
              Text(
                "1. Access to information: Websites provide easy access to information from anywhere and at any time, making it easier to research, learn, and obtain news and data.\n\n"
                    "2. Communication and interaction: Websites help in communicating with the target audience through comments, forums, emails, and integrated social networks.\n\n"
                    "3. Marketing and advertising: Websites are an effective means of marketing and advertising for companies and individuals, allowing them to showcase their products and services\n\n"
                    "4. E-commerce: The locator service makes it possible to buy and sell online, saving significant effort for customers and facilitating businesses' operations.\n\n"
                    "5. E-learning: Provides basic online educational materials, shaping their skill development skills and knowledge in various fields.\n\n6. Government services: It provides electronic government services such as invoice and license renewal to employees, creating access to government services faster and simpler.\n\n"
                    "7. Credibility and professionalism: Owning a website helps companies and individuals build their credibility and professionalism in the eyes of the public, as the website is an electronic interface that reflects the image of the company or individual.\n\n"
                    "8. Data analysis: Websites allow businesses to collect and analyze visitor and customer data, enabling them to understand their behaviors and needs and improve their services and products based on that data.\n\n"
                    "9. Global reach: Websites allow businesses to reach a global audience, opening up new opportunities for expansion and growth in new markets.\n\n"
                    "10. Low cost: Compared to traditional meals, e-commerce devices have a lower cost of reaching their target audience, making them an ideal choice for small-sized businesses.\n\n"
                    "11. Continuous updating: Content on websites can be updated easily and quickly, ensuring that information is provided free of charge to the public.\n\n"
                    "Wise use of websites: Specifically, from websites, it is recommended to use the sites easily, protect data and privacy, update internal content, and interact with the public effectively.",
                style: TextStyle(
                  fontSize: 13,
                  color: Colors.black,
                  fontWeight: FontWeight.w300,
                ),
              ),
              SizedBox(height: 20,),
              Image.asset('assets/web.png',),
              SizedBox(height: 40,),
              Text(
                "Reasons for websites",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w900,
                  color: Colors.yellow,
                ),
              ),
              SizedBox(height: 20,),
              MovingDotAnimation(),
              SizedBox(height: 15,),
              Text(
                "1. Digital presence: Online Presence: In the digital age, online presence is a necessity for individuals and businesses to stay in touch with the public. Ease of access: Users can access information or services at any time and from anywhere.\n\n"
                    "2. Marketing and advertising: Marketing products and services: Uses websites as a platform to market products and services and reach a wide audience. Advertising and Publicity: Websites provide space for advertisements and to increase brand awareness.\n\n"
                    "3. Information and education: Sharing information: Websites dedicated to articles, news, and specialized blogs can provide valuable information to users. E-Learning and Education: It can deliver online educational programs to students all over the world.\n\n"
                    "4. E-commerce: Online Sales: Provides electronic positioning systems for companies and a platform for selling them online easily. Payment Uses: Provides secure payment solutions and users.\n\n"
                    "5. Customer Service Support: Technical Support: Providing technical support via websites, via chat and e-mail. Frequently Asked Questions: Provides FAQ pages to make information easily accessible.\n\n"
                    "6. Community building and interaction: Communication with customers: Continuous communication begins with customers, where the relationship with them is strong. Forums and Communities: Online forums and communities can be created to share ideas and interact among members.\n\n"
                    "7. Building a character or brand: Brand: Websites help build a strong identity for the brand and raise awareness for it. Their Identity: Personal websites can be created for their resume, work, and accomplishments.\n\n"
                    "8. Updates and news: Dissemination of News: Corporate websites can publish the latest news and updates about the company or. Advertisements: Events and special offers can be easily advertised across websites.\n\n"
                    "9. Analytics and data: Collection: Able to determine which websites collect visitor data to enable them to control users and services.\n\n"
                    "Engagement: More interaction with content and marketing success is possible. In short, GPS can play a crucial role in enabling communication, marketing, education, and thus serving customers in multiple ways.",
                style: TextStyle(
                  fontSize: 13,
                  color: Colors.black,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Fifth extends StatelessWidget {
  const Fifth({super.key});

  @override
  Widget build(BuildContext context) {
    return MyScaffold2(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20,vertical: 40),
          child: Column(
            children: [
              Text(
                "E-Marketing",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w900,
                  color: Colors.yellow,
                ),
              ),
              SizedBox(height: 20,),
              MovingDotAnimation(),
              SizedBox(height: 15,),
              Text(
                "E-marketing is considered one of the most important elements that help strengthen your company and project. It is the specialty that increases the number of customers and attracts them to deal with you and benefit from your services. Digital marketing strategy is used to organize and utilize modern communications technology in order to promote the brand aggressively.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 13,
                  color: Colors.black,
                  fontWeight: FontWeight.w300,
                ),
              ),
              SizedBox(height: 20,),
              Image.asset('assets/E_W1.jpg',),
              SizedBox(height: 40,),
              Text(
                "The importance of electronic marketing",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w900,
                  color: Colors.yellow,
                ),
              ),
              SizedBox(height: 20,),
              MovingDotAnimation(),
              SizedBox(height: 15,),
              Text(
                "The importance of electronic marketing is represented by a number of features that make you close to your customers, interact with them, and follow up on the progress of the business process for them:\n\n"
                    "• Strengthening the relationship with customers, which increases the possibility of sharing ideas and arriving at the final plan that matches your own vision and meets the customer’s imagination.\n\n"
                    "• The ability to gain new customers on an ongoing basis, as increasing the number of customers increases their interaction with your website and pages on social networking sites, thus increasing the reach of your publications to more people so that they can benefit from your services.\n\n"
                    "• Easy access to information about your project, as the customer can know all the details from his home without the need to bother or come to your company’s headquarters.\n\n"
                    "• The ease of ordering the product or service you provide, and this is done via email in a simple way that gives the customer comfort in dealing with your services.\n\n"
                    "• Ease of displaying services on your website with details, in addition to the ability to pay electronically, which saves a large number of steps for you and your client.\n\n"
                    "• Ease of displaying services on your website with details, in addition to the ability to pay electronically, which saves a large number of steps for you and your client\n\n"
                    "• The e-marketer’s experience and the plans he develops are among the most important factors in successful e-marketing.",
                style: TextStyle(
                  fontSize: 13,
                  color: Colors.black,
                  fontWeight: FontWeight.w300,
                ),
              ),
              SizedBox(height: 20,),
              Image.asset('assets/E-W.jpg',),
              SizedBox(height: 40,),
              Text(
                "Types of electronic marketing",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w900,
                  color: Colors.yellow,
                ),
              ),
              SizedBox(height: 20,),
              MovingDotAnimation(),
              SizedBox(height: 15,),
              Text(
                "You can market your project electronically through several platforms that give the resonance you need to advance your brand:\n\n",
                style: TextStyle(
                  fontSize: 13,
                  color: Colors.black,
                  fontWeight: FontWeight.w300,
                ),
              ),
              Row(
                children: [
                  Icon(Icons.arrow_forward_ios_rounded, color: Colors.blue,),
                  SizedBox(width: 10,),
                  Text(
                    "TFree advertising sites spread on the Internet.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Icon(Icons.arrow_forward_ios_rounded, color: Colors.blue,),
                  SizedBox(width: 10,),
                  Text(
                    "Your website pages.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Icon(Icons.arrow_forward_ios_rounded, color: Colors.blue,),
                  SizedBox(width: 10,),
                  Text(
                    "social media sites.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Icon(Icons.arrow_forward_ios_rounded, color: Colors.blue,),
                  SizedBox(width: 10,),
                  Text(
                    "Email campaigns.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Icon(Icons.arrow_forward_ios_rounded, color: Colors.blue,),
                  SizedBox(width: 10,),
                  Text(
                    "Promotional videos.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Icon(Icons.arrow_forward_ios_rounded, color: Colors.blue,),
                  SizedBox(width: 10,),
                  Text(
                    "Private or public blogs.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20,),
              Image.asset('assets/image (1).png',),
              SizedBox(height: 40,),
              Text(
                "The difference between e-marketing and digital marketing",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w900,
                  color: Colors.yellow,
                ),
              ),
              SizedBox(height: 20,),
              MovingDotAnimation(),
              SizedBox(height: 15,),
              Text(
                "E-marketing and digital marketing are two sides of the same coin with some small differences that distinguish them from each other: • The cost of digital marketing is greater than the cost of electronic marketing, as advertising campaigns for electronic marketing do not exceed 100 US dollars, unlike digital marketing, which requires a larger budget. • The ability to view customers’ reactions and interact with them in electronic marketing that includes social media platforms, while digital marketing does not give this advantage. • The most important difference is the size of the audience that follows your business store, which is much larger at the level of electronic marketing, which does not specify a specific number, but rather spreads your services throughout the world.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 13,
                  color: Colors.black,
                  fontWeight: FontWeight.w300,
                ),
              ),
              SizedBox(height: 20,),
              Image.asset('assets/image.png',),
            ],
          ),
        ),
      ),
    );
  }
}

class Sixth extends StatelessWidget {
  const Sixth({super.key});

  @override
  Widget build(BuildContext context) {
    return MyScaffold2(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20,vertical: 40),
          child: Column(
            children: [
              Text(
                "Importance programming",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w900,
                  color: Colors.yellow,
                ),
              ),
              SizedBox(height: 20,),
              MovingDotAnimation(),
              SizedBox(height: 15,),
              Text(
                "Computer programming has become essential in the modern era, and plays a vital role in a variety of fields. Here are some reasons why programming is important:\n\n"
                    "1. Technological technology: Technological advances: Programming is the foundation for the complex developments we see today, such as artificial intelligence, robotics, and the Internet of Things. Creative: Successful programmers create new solutions to complex shapes, leading to creativity in all fields.\n\n"
                    "2. Employment and the economy: Career Opportunities: Programming skills are required to get started in the job market, opening doors to career opportunities and salaries. Economic Development: Contributes to advanced technology companies in the field of the economy by contributing to new projects and projects.\n\n"
                    "3. Problem solving: Critical Thinking: Programming enhances critical thinking and problem-solving skills by analyzing problems and designing appropriate programming solutions. Methodology: Learning programming teaches people how to approach problems in an organized and systematic way.\n\n"
                    "4. Efficiency and productivity: Automation: Programming enables the automation of repetitive processes, which increases efficiency and productivity in the business. Saving time: Software applications help save time and effort by simplifying complex processes.\n\n"
                    "5. Communication and collaboration: Social Applications: Many social media platforms rely on communication programs between people and communities. Remote Collaboration: Online collaboration tools, such as Google Docs and Slack, rely on programming to allow teams to work and collaborate.\n\n"
                    "6. Teaching and learning: Online Learning: Software that contributes to the development of e-learning courses and acquires educational courses for learners around the world. Tools: Educational programming helps in creating interactive tools to even the learning experience.\n\n"
                    "7. Safety and protection: Cyber: Participation in programming as part of protecting personal data from electronic privacy. Cryptography: The development of encryption techniques helps secure online communications and transactions.\n\n"
                    "8. Social health: Technology enables: Programs help develop technical solutions to improve the quality of life in society, such as health and educational applications. Humanitarian Applications: Aims to develop applications for humanitarian problems such as patients, hunger, and education in remote areas.\n\n"
                    "9. Innovations and arts: Digital Technology: Programming capable of creating artistic games that provide entertainment and creativity. Virtual Reality and Augmented Reality: Professional programming techniques in developing immersive experiences through virtual reality and augmented reality.\n\n"
                    "10. Difference and learning: Versatile skill: Programming skill can be applied in multiple fields, giving people the ability to deal with industrial fields. Continuous learning: Programming encourages learning and adaptation as creative people. In short, programming is not just a technical skill, but rather a tool that effectively contributes to developing technology, enhancing the economy, and practicing daily life and societies.",
                style: TextStyle(
                  fontSize: 13,
                  color: Colors.black,
                  fontWeight: FontWeight.w300,
                ),
              ),
              SizedBox(height: 20,),
              Image.asset('assets/par.jpg',),
              SizedBox(height: 40,),
              Text(
                "The importance of web programming",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w900,
                  color: Colors.yellow,
                ),
              ),
              SizedBox(height: 20,),
              MovingDotAnimation(),
              SizedBox(height: 15,),
              Text(
                "Web programming is one of the most in-demand skills in today's digital age, and knowing why is important. Here are some points that highlight the importance of web programming:\n\n"
                    "1. Digital presence and accessibility: Online Presence: Having a website enables individuals and businesses to have an online presence and interact with a global audience. Easy access: Websites allow users to access information and services from anywhere and at any time.\n\n"
                    "2. Digital marketing and e-commerce: Marketing products and services: Through web programming, customized websites can be created to market products and services effectively. E-commerce: Web programming makes it easy to create online stores, allowing businesses to sell their products and services online easily and securely.\n\n"
                    "3. Providing information and education: Available information: Websites can provide diverse and comprehensive information sources to users. Post-Learning: Thanks to web programming, the delivery of online educational programs can be extensive.\n\n"
                    "4. Customer engagement: Technical Support: Technical support can be provided online through websites. Interaction with customers: Starting to create interactive units begins to communicate with customers and thus have a strong relationship with them.\n\n"
                    "5. Building electronic communities: Forums and Communities: Beginner programming to create online forums and communities to exchange ideas and interact between users. Social Media: The social communications company relies heavily on programming programming to provide its services to users.\n\n"
                    "6. Improve its improvement: Personalization: Activate the clear recording of users' experiences based on their interests and needs. Analysis: User data may be collected to improve the Services and user experiences.\n\n"
                    "7. Process design: Required: To program many business processes, which increases the reasons for this to humans. Integration: Websites can be integrated with other tools to improve demo workflow.\n\n"
                    "8. Present: Unlimited creativity: Programming opens the way for other creativity in designing websites and web applications. New Solutions: The ability to program to develop new solutions to existing business problems and current processes.\n\n"
                    "9. Sustainability and expansion: Expansion: A business can easily be expanded through the Internet thanks to web programming. Sustainability: Web programming helps in creating innovative solutions that can be updated and developed over time.\n\n"
                    "10. Functional skills: Job Opportunities: Structural development is in high demand and offers diverse and rewarding job opportunities in many industries. Professional development: Learn to program the door lock to constantly develop and acquire new skills. In short, programming is a fundamental pillar of the modern digital age, and there are powerful tools for communication, marketing, education, and operations to enable.",
                style: TextStyle(
                  fontSize: 13,
                  color: Colors.black,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}






