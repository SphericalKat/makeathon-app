import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:makeathon/src/info/email_form.dart';
import 'package:makeathon/src/providers/fab_provider.dart';
import 'package:provider/provider.dart';

import 'about_item.dart';

class AboutWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScrollController _hideButtonController = ScrollController();
    final fabVisibility = Provider.of<FabProvider>(context, listen: true);
    _hideButtonController.addListener(() {
      if (_hideButtonController.position.userScrollDirection ==
          ScrollDirection.reverse) {
        if (fabVisibility.shouldShow) {
          fabVisibility.setShouldShow(false);
        }
      } else {
        if (!fabVisibility.shouldShow) {
          fabVisibility.setShouldShow(true);
        }
      }
    });
    return TabBarView(
      children: [
        ListView(
          controller: _hideButtonController,
          children: [
            Padding(
              padding: EdgeInsets.all(20),
              child: Image.asset("assets/images/logomake.png"),
            ),
            Padding(
              padding: EdgeInsets.only(right: 20, left: 20, bottom: 20),
              child: Text(
                "Make-A-Thon is an event where students, designers and hackers collaborate for limited time to deliver solutions to various challenges proposed by industries and need-knowers. Event kick-starts with challenges being proposed to participants, for which they have to come up with an innovative solution and develop a prototype within 36 Hrs of Ideation. Solutions can be based on hardware and software projects and are refined based on feedback from need-knowers. Event concludes with judging and prize distribution.",
                style: TextStyle(fontSize: 16),
              ),
            ),
            AboutItem("We supply",
                "Unlimited Wifi, all Electrical and mechanical components to execute your idea. Plus Breakfast, Lunch, Snacks, Dinner & Caffeine to keep you going."),
            AboutItem("You Bring",
                "Your laptop, creativity, passion, skills & ideas. Come with a collaborative mindset."),
            AboutItem("You Get",
                "A wholesome exposure to real time problems balanced with fun events. Lot of exciting prizes to be won and chances to grab internship opportunities."),
            AboutItem("SELECT",
                "School of Electrical Engineering (SELECT) has 104 faculty members who have done their UG and PG degrees from the top-notch universities. The School offers B.Tech (Electrical and Electronics Engineering), B.Tech (Electronics and Instrumentation Engineering), FIST sponsored M.Tech programme in Power and Energy and M. Tech programme in Control and Automation, M.Tech. by Research and Ph.D. in Engineering. B.Tech (Electrical and Electronics Engineering) and B.Tech (Electronics and Instrumentation Engineering), is accredited by the Engineering Accreditation Commission of ABET. All UG & PG programmes of the school are accredited by the Institution of Engineering and Technology (IET), U.K. The placement record of the School has always been impressive. Almost 100% of the students get job from the campus placement and many of them are getting it in core companies every year. The School has state-of-the art laboratories in almost all the areas of Electrical, Electronics and Instrumentation Engineering. Every year, students get scholarships to do their final year projects abroad under the Semester Abroad Program (SAP). Danfoss India, Schneider Electric, Q-Max, National Instruments and Fluke Test & Callibration have established Centre of Excellence for students R&D activities under the guidance of faculty members and Industry experts. The School has signed MoUs with many foreign Universities, research organizations and Industries from where students get benefits for their R&D Work / Projects from the MoUs. ")
          ],
        ),
        EmailForm(),
        ListView(
          controller: _hideButtonController,
          children: [
            AboutItem("How does it work?",
                "You will work in teams of 3-5 person to make anything that fits according to the problem statement you have chosen. A prompt will be released around two weeks before the event to guide all projects. We will provide everything you need in order to hack/make, from prototyping resources to food. On the last day every team will pitch at the finale of the Make-A-Thon to present their projects. "),
            AboutItem("Who can participate?",
                "All undergraduate and graduate students irrespective of branch and year, who are registered under affiliated institutes across India. Please note, however, that travel reimbursements will not be provided."),
            AboutItem("What should I bring?",
                "We recommend that you bring a laptop (and yourself!) to hack. We will provide everything else that is necessary for the Make-A-Thon so do not worry about bringing anything else. However, if you have a certain set of tools that you like to use, please feel free to bring them as well.\nKindly note that printed boards/circuits, readymade kits/devices are not allowed. "),
            AboutItem("How does judging work?",
                "Judges from industries and high profile academicians will evaluate the projects and pitches based on their relations to design (how awesome it is), engineering (does it work), and entrepreneurship (how was it pitched and what is its real-world potential). Do not worry! This event is meant to be fun, and all of the judges understand that everything was built over the limited span of time."),
            AboutItem("Can I leave in the middle?",
                "Leaving the project in the middle without prior permission will attract a penalty."),
            AboutItem("What is the pitch competition?",
                "After the hacking and building period, we will host a public pitch competition where every team can present their projects. Pitches should be 5-7 minutes long."),
            AboutItem("What do I build?",
                "You can build anything you and your team would like! We will provide a prompt, components to help accelerate development and mentorship from academicians and industrialists, but everything else is totally up to you and your team."),
            AboutItem("How much does this cost?",
                "This event is completely free for everyone. If a non-VITian requires accomodation, it will be provided by the organizers. It includes food and any necessary materials you will need to make with!"),
            AboutItem("How do I benefit?",
                "Exposure, internship opportunities, interaction with industry experts and vendors and prize money worth 1.5 Lacs.\nTop 10 teams will be given Startup grant of 1 Lakh rupees by VIT-TBI.\nSpecial prizes in healthcare track.")
          ],
        ),
      ],
    );
  }
}
