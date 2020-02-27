import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:makeathon/src/info/about_item.dart';
import 'package:makeathon/src/providers/fab_provider.dart';
import 'package:makeathon/src/tracks/routes/route_item.dart';
import 'package:makeathon/src/tracks/track_item.dart';
import 'package:provider/provider.dart';

class TrackWidget extends StatelessWidget {
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
    return Center(
      child: ListView(
        padding: EdgeInsets.only(bottom: 8),
        controller: _hideButtonController,
        children: <Widget>[
          TrackItem(
              "Healthcare",
              "Think of how technology can compliment the current healthcare infrastructure.",
              Image.asset("assets/images/healthcare_track.png"), [
            AboutItem(
                "HC001 - VR simulation for patient education about glaucoma and ARMD",
                "We need to design a VR based simulation for explaining the patients (by letting them experience) about how their eye sight is affected in glaucoma and ARMD and how it gets deteriorated with the progression of the disease along with an AI based network which also shows them about the disease process when they select the option to know about the disease and the treatment"),
            AboutItem("HC002 - Eye surgery practice module.",
                "All eye surgeons should practice surgery before the start surgery. The commercially available practice models are very costly 200 dollars for each. We want you to design an eye ball model (whose dimensions will be given )using a rubber like material. The anterior surface should be transparent/ translucent to see the inside. This will help all surgeons in practicing surgery."),
            AboutItem("HC003",
                "During retina surgery while operating in the periphery the surgeon need to dip the periphery to visualize the peripheral retina and do laser, as the surgeon’s hands are occupied with doing laser we depend on the sister, who indent not where or how we want them to indentWe would like you to design an instrument which can be fixed to biom or the microscope that helps us in indenting the retina during surgery which can be controlled by the surgeon."),
            AboutItem(
                "HC004 - Rhexis instrument for complicated cases of cataract.",
                "A handle with a button on pressing opens as a loop with a blade underside to make CCC in one go."),
            AboutItem(
                "HC004 - Rhexis instrument for complicated cases of cataract.",
                "A handle with a button on pressing opens as a loop with a blade underside to make CCC in one go."),
            AboutItem(
                "HC005 - Difficulty in measuring IOL decentration post operatively - degree and direction",
                "Have an objective way of measuring decentration using slit lamp image which can be analysed by software"),
            AboutItem("HC006 - Device for cortex aspiration of small pupil.",
                "In a small pupil it is very difficult to visualise the cortex present behind the pupil for aspiration and all present method depends on blind aspiration or using pupil expansion devices Can we have a devise which can aspirate the cortex depending on the bag structure instead of expanding the pupil."),
            AboutItem("HC007",
                "Light pipe optical fiber plays a key role in retina surgery as an endo illuminator, also used extensively as an accessory tool in cornea surgery, light source is xenon / led from the machine. external light source is available however still expensiveLooking at smart phone led light based optical fibre light source that will be extremely low cost and portable."),
            AboutItem("HC008",
                "For intra ocular foreign body removal, we have endo magnets separately and forceps separately It will be good if we have magnet that can also function as forceps using a switch"),
            AboutItem(
                "HC009 - Novel method of grading of strabismus and amblyopia in subjects with mild to moderate severity",
                "Regarding the Eyecare related problem statements, I'd like to know if there could be an enhanced collaboration of Forus Health with VIT-TBI on the event, exploring on possible sponsorship of prize money or a special Forus Health Innovation award could be awarded to the best make-a-thon solution to an eyecare problem statement."),
            AboutItem("HC0010 - Corrective therapy for lazy eye syndrome",
                "Ophthalmology related problem statements"),
            AboutItem(
                "HC0011 - Non-invasive method of measurement of Intraocular pressure",
                "Ophthalmology related problem statements"),
            AboutItem(
                "HC0012 - An efficient imaging analysis for Pupillometry through mobile based attachments",
                "Ophthalmology related problem statements"),
            AboutItem("HC0013",
                "People living in polluted areas are more likely to get lung diseases and they have to be diagnosed and treated on time. How might we ensure that people staying in polluted areas are made aware of their current lung's health?"),
            AboutItem("HC014 - Assistive Technology",
                "Hand operated Detachable jack to elevate the wheel chair with the person to different levels."),
            AboutItem(
                "HC015 - Technology for mentally disabled people (suffer from Parkinson's Diseases)",
                "Self stabilizing handle for Eating food."),
            AboutItem("HC016 - Detection of Starvation",
                "Smart Indication for Malnutrition. ( Proteins , Vitamins, Minerals, Carbohydrates, Fats & Fibres)"),
            AboutItem("HC017",
                "Develop an App to display the interruption monitoring data on Mobile/ Tablet , so that immediate service alert will be take place for alternate support (Dialysis Centre)."),
            AboutItem("HC018 - Counting respiratory rate per minute.",
                "The speed at which chest moves per minute is called respiratory rate. The challenge is to diagnose the number one killer disease Pneumonia by measuring respiratory rate."),
            AboutItem("HC019",
                "Design a non-invasive solution for continuous monitoring of cervical dilation throughout the duration of labor in order to prevent maternal and neonatal deaths due to obstructed labor. The proposed device should be non invasive, cost-effective, safe to use and provide accurate cervix dilatation for an improved outcome of maternal and neonatal care."),
            AboutItem("HC-CL-001",
                "Healthcare DAQ system using STM32/ARM. We are working on a Data Acquisition system which can acquire upto 8 low frequency biomedical signals (Voltage less than 3.3V) and send it via Bluetooth for plotting using ARM processor."),
            AboutItem("HC-CL-002",
                "Make a PPG based system which can be used to track the level of meditation."),
            AboutItem("HC-CL-003 - Baby Monitoring 1",
                "Make a wearable device for monitoring -\na) temp both cold and hot;\nb) breathing;\nc) rollover;\nd) crying; \n- all connected to an app."),
            AboutItem("HC-CL-004 - Baby Monitoring 2",
                "Make a wearable device for monitoring -\na)Blood Oxygenation;\nb)Heart Rate;\nc)Respiration Rate;\nd)Temp;\ne)Perfusion Index;\nf) HRV \n- all connected to an app."),
            AboutItem("HC-CL-005",
                "Many people slouch while sitting or walking. Make a posture correction device and app for training."),
          ]),
          TrackItem(
              "Artificial Intelligence",
              "In today’s data-driven world, AI has the potential to transform the economic landscape of the world.",
              Image.asset("assets/images/ai_track.png"), [
            AboutItem("AI-001 - Prioritising patients on arrival",
                "Create a system which will prioritize patients who will be seen first or atleast given first aid : 1. Children below 30 days 2. Children with fever above 104 3 Children with heart rate above 120. 4. Children coming from more than 10 kms from the health center"),
            AboutItem("AI-002 - Helping village patients in the night",
                "As soon as they enter the clinic the people will give : 1. their mobile number the place from they are coming 2. Then the mode of return transport will be asked 3. if the distance is more than 10 kms, the last bus will be asked they SHOULD be seen irrespective their slot, atleast 45 minutes before the bus leaves"),
            AboutItem("AI-002 - Helping village patients in the night",
                "As soon as they enter the clinic the people will give : 1. their mobile number the place from they are coming 2. Then the mode of return transport will be asked 3. if the distance is more than 10 kms, the last bus will be asked they SHOULD be seen irrespective their slot, atleast 45 minutes before the bus leaves"),
            AboutItem("AI-003 - Object Detection in AR world", ""),
            AboutItem(
                "AI-004", " Computational Intelligence in Measuring System"),
            AboutItem("AI-005",
                "AI-based Detection, Identification and Estimation methods of Drive Fault"),
            AboutItem(
                "AI-006", "ML-based fault detection on rotating machinery"),
            AboutItem("AI-007",
                "Low complex AI Video super Resolution Change detection using Synthetic Aperture Radar images."),
            AboutItem("AI-008",
                "Real time deep learning based document detection analysis"),
            AboutItem("AI-009",
                "Real time hand Gesture Recognition for mobile device"),
            AboutItem(
                "AI-010", "Occluded face detection/partial face detection"),
            AboutItem("AI-011",
                "DNN based multi object detection and classifier for application specific images"),
            AboutItem("AI-012", "Thin object segmentation using image mating"),
            AboutItem("AI-013", "Dynamic vision data"),
            AboutItem("AI-014", "Multitask human analysis in still images"),
            AboutItem("AI-015", "Deep learning based raw image denoising"),
            AboutItem("AI-016",
                "- Development of Machine vision System for Advanced Driver Assistance system (Autonomous Vehicles)"),
            AboutItem("AI-017", "Speech and Gesture Technology for people."),
            AboutItem("AI-018", "Battery Health Monitoring System"),
            AboutItem("AI-CL-001",
                "To perform classification of ECG into various arrhythmias, using ML. For that, a desktop interface is needed where the doctor would mark the various points (P, Q, R, S, T) in the ECG signal which would be used to train the network."),
            AboutItem(
              "AI-CL-002",
              "A wearable ring which measures PPG and sends the data to mobile phone for HRV for multiple applications (Motiv ring). The ring can be charged wirelessly (induction).",
            ),
            AboutItem("AI-CL-003",
                "Make an AR system where we can click pictures of a person with a celebrity."),
          ]),
          TrackItem(
              "IoT and Automation",
              "Build applications on the Internet of Things that help us improve our experience in our day to day life.",
              Image.asset("assets/images/iot_track.png"), [
            AboutItem(
              "IoT-001",
              "Smart clothing for geriatric healthcare system/ Comprehensive monitoring system that addresses the cycle of care in elderly care",
            ),
            AboutItem(
              "IoT-002",
              "Clinical decision support system for acute and chronic pain management in palliative healthcare ~ tackling the opioid crisis",
            ),
            AboutItem(
              "IoT-003",
              "A low cost method that addresses the unmet need of efficient structuring of clinical data during documentation of patient data in daily clinical practice",
            ),
            AboutItem(
              "IoT-004",
              "The last thing you do when leaving the house is put slippers. You must create a gadget which will help in putting shoes and slippers with out touching slippers",
            ),
            AboutItem(
              "IoT-005",
              " There is no Interactive voice response system in a hospital. Only manual booking. A person calls at 6 am no staff to pick up. The staff comes only at 8 am. A person calling at 8.01 gets the first slot. The person who rang up again calls at 8.10. By that time 8 slots are gone. How to correct this?",
            ),
            AboutItem(
              "IoT-006",
              "Locusts Swarm control Mechanism",
            ),
          ]),
          TrackItem(
              "Smart Homes and Smart Cities",
              "Smart homes and smart cities are emerging in response to an increasingly urbanized world dealing with scarce resources and a desire to improve energy efficiency.",
              Image.asset("assets/images/smart_home_track.png"), [
            AboutItem(
              "SHC-001",
              "Smart Sensors for Environmental Pollution monitoring & Track for carbon pollutes",
            ),
            AboutItem(
              "SHC-002",
              "Smart Hospital services/ Emergency assistance alert for vital signal failures The patient’s vitals should be connected to a hospital-wide system that helps the doctors and the nurses to take care of the patients and inform them directly of any emergencies that they have to handle immediately.",
            ),
            AboutItem(
              "SHC-003",
              "Development of Smart Helmets.",
            ),
            AboutItem(
              "SHC-004",
              "Smart Medical records collection using Aadhar card-based secured data Collection. A database should be created of all the medical records of patients and it should be easily accessed using their Aadhar card. It should be secure so that it can only be accessed by the concerned authorities.",
            ),
            AboutItem(
              "SHC-005",
              "Smart Medical records collection using Aadhar card-based secured data Collection. A database should be created of all the medical records of patients and it should be easily accessed using their Aadhar card. It should be secure so that it can only be accessed by the concerned authorities.",
            ),
            AboutItem(
              "SHC-005",
              "Smart water management system and Billing using Mobile Apps. Create a water management system where the user can see the current water level and send a request for the tank to be filled by itself. Upcoming bill statements should also be shown directly to the user and notifications must be given on the days preceding the payment date.",
            ),
            AboutItem(
              "SHC-006",
              "Smart Structural health monitoring -Bridges /Buildings/Airports Create a model to monitor the health of structures and predict when repairs could be required for parts of the structure.",
            ),
            AboutItem(
              "SHC-007",
              "Smart Material Tracking (Industry Environment)",
            ),
            AboutItem(
              "SHC-008 - Air Quality Index",
              "Smart city-Living conditions Monitoring",
            ),
            AboutItem(
              "SHC-009 - Smart Building",
              "Condition Monitoring & Control with ambience maintenance",
            ),
            AboutItem(
              "SHC-010",
              "Smart Drones for Emergency assistance Support",
            ),
            AboutItem(
              "SHC-011",
              "Smart waste management systems.",
            ),
            AboutItem(
              "SHC-012",
              "Smart energy monitoring to detect power interruption and send the data\n(a) Time of power interruption\n(b) Duration of interruption (Animal Testing Laboratory)",
            ),
            AboutItem(
              "SHC-013",
              "Smart Baby monitor (Incubators)",
            ),
            AboutItem(
              "SHC-014 - Token display system",
              "Though appears rudimentary, this information gives lot of relief to parents. The display should give what is the current token with the doctor. Who is the next token. What is the last token. But the display should come to the parent mobile.",
            ),
            AboutItem(
              "SHC-CL-001",
              "Make a small battery operated wearable device which can give a very minute shock - just enough to alert a deaf and mute person that the phone is ringing. Alternate methods of alert which can work are also welcome.",
            ),
          ]),
          TrackItem(
              "Smart Agriculture",
              "For sustainable outcomes, only the smart application of tech and scientific advances can boost rural growth and agricultural productivity.",
              Image.asset("assets/images/smart_agro_track.png"), [
            AboutItem(
                "AG-001 - Ensure that stubble is not affecting our environment",
                "Stubble burning is intentionally setting fire to the straw stubble that remains after grains, like paddy, wheat, etc., have been harvested. The burning of stubble, contrasted with alternatives such as plowing the stubble back into the ground or collecting it for industrial uses, has a number of consequences and effects on the environment, which majorly include pollution and loss of nutrients. How might we ensure that stubble is not affecting our environment anymore?")
          ]),
          TrackItem(
              "Women and Child safety",
              "Safety of Women and children has become a major issue in the world now. Alternatives need to be found to protect the safety of women and children and to ensure their safety.",
              Image.asset("assets/images/women_safety_track.png"), []),
          TrackItem(
              "Autonomous Vehicles",
              "Widespread use of autonomous vehicles could eliminate 90% of all auto accidents in the United States, prevent up to US\$190 billion in damages and health-costs annually and save thousands of lives.",
              Image.asset("assets/images/auto_vehicles_track.png"), [
            AboutItem(
              "EV-001 - Building a real-time data analysis tool for Monitoring Vehicle Parameters",
              "To build a data analysis and vehicle health prediction tool based on the riding pattern of the rider, analysing the riding pattern of the vehicle user and suggesting the user the best riding patterns to optimize the battery health and obtain good range) Machine learning can also be integrated here",
            ),
            AboutItem(
              "EV-002 - To build a battery management system to monitor the battery health, and protect the battery in case of any serious failure(e.g. Short-circuit, battery over-current, battery over-temperature etc.",
              "To build a battery management system to monitor the battery health, and protect the battery in case of any serious failure(e.g. Short-circuit, battery over-current, battery over-temperature etc..To build a system to inform the user of the battery's current status that includes various factors that concern the overall health of the battery and hence the vehicle. The system should also be able to protect the battery from problems that might occur during daily use. User involvement should not be required while taking care of these issues. Try incorporating intelligence to predict when the next problem would occur.",
            ),
            AboutItem(
              "EV-003 - To predict the battery health based on current charge and discharge cycles and current use of the vehicle user.",
              "To build a system which utilises the data from the previous charge and discharge cycles of the EV and inform the user of when the next charge cycle will be required according to the various parameters of the battery.",
            ),
            AboutItem(
              "EV-004",
              "The current Electric Vehicle market lacks the right infrastructure to help encourage people to choose EV over traditional vehicles. One major problem relating to EVs is the lack of trusted parties that provide charging services.There has to be trust between charging service providers, property owners of charging stations and vehicle owners. Use Blockchain to provide access to data to all the involved parties and make sure that the service providers are not overcharging vehicle owners and at the same time make sure that the property owners aren’t being underpaid.",
            ),
            AboutItem(
              "EV-005 - Development of ultra-fast flash charging",
              "Currently, a major problem for the EV industry in India is the amount of time taken for the vehicle to charge versus the range of the vehicle. The owner would prefer a quick refill at the petrol pump instead of an 8-hour wait for the battery to fully charge. Develop a system to reduce this wait time and make EV’s more enticing for people.",
            ),
          ]),
          TrackItem(
              "Energy Management and Smart Grid",
              "It is up to us to find ways to simultaneously preserve the environment and drive development to ensure that future generations have a better world to live in.",
              Image.asset("assets/images/smart_grid_track.png"), [
            AboutItem(
              "EM-001",
              "Energy-efficient control Strategies on industrial drives",
            ),
            AboutItem(
              "EM-002",
              "Energy conversion and conditioning technologies in Industrial Drives",
            ),
            AboutItem(
              "EM-003",
              "Clean Energy using Hybrid Renewable Systems",
            ),
            AboutItem(
              "EM-004",
              "Energy Harvesting from pedestrian movement (Like pavengen tiles harvest kinetic energy from pedestrian traffic)",
            ),
            AboutItem(
              "EM-005 - To address critical loads",
              "Redundant Power Drive for Critical Process Loads",
            ),
            AboutItem(
              "EM-006",
              "AI-based Detection, Identification and Estimation methods of Drive Fault",
            ),
          ]),
          TrackItem(
              "Blockchain for Sustainable Management",
              "Blockchain technologies may have a profound impact on development-oriented investment, not only by revolutionizing global payment systems but also through improvements to access to finance, supply chain management, digital identities or land registries.",
              Image.asset("assets/images/blockchain_track.png"), [
            AboutItem(
              "BC001",
              "Design a P2P solar trading platform which will eliminate the need for DISCOMs and help trade surplus electricity between a network of participants using the existing grid infrastructure.Consumers have turned to Solar energy to fulfil their energy needs and the surplus power generated can be monetized by selling it to other participants (consumers) in the network. The ability to generate and sell power will allow consumers to become prosumers. Block chain can be used to store meter data and account for energy usage.",
            ),
            AboutItem(
              "BC002",
              "The current Electric Vehicle market lacks the right infrastructure to help encourage people to choose EV over traditional vehicles. One major problem relating to EVs is the lack of trusted parties that provide charging services.There has to be trust between charging service providers, property owners of charging stations and vehicle owners. Use Blockchain to provide access to data to all the involved parties and make sure that the service providers are not overcharging vehicle owners and at the same time make sure that the property owners aren’t being underpaid.",
            ),
            AboutItem(
              "BC003",
              "Optimization of workflow in an outpatient department and an efficient handover system for individual doctors to follow up on patient records",
            ),
            AboutItem(
              "BC004",
              "An incentivized data system where patients remain a key stakeholder in distribution of data, thus enabling the democratization of personal health data",
            ),
            AboutItem(
              "BC005",
              "An efficient blockchain system for tele-consultation in remote access healthcare",
            ),
            AboutItem(
              "BC006",
              "An efficient blockchain system for tele-consultation in remote access healthcare",
            ),
            AboutItem(
              "BC007",
              "Innovative blockchain platform that is device agnostic in nature ~ effective to work across different medical devices",
            ),
            AboutItem(
              "BC008",
              "Block chain enabled smart contracts for enhancing distributor to consumer transaction- Case study",
            ),
            AboutItem(
              "BC009",
              "Demonstrated secured transfer of money internationally using block chain for fee collection - consultation and knowledge sharing.",
            ),
            AboutItem(
              "BC010",
              "Reliable and safe trade for Electricity and lower electricity bills for industry using Block chain.",
            ),
            AboutItem(
              "BC011",
              "Block chain assisted authentication of prescription and fake medicine verification.",
            ),
            AboutItem(
              "BC012",
              "Block Chain for Tourism Promotion.",
            ),
            AboutItem(
              "BC013",
              "Block Chain for Agricultural product distribution and money collection",
            ),
            AboutItem(
              "BC014",
              "Block Chain for Driverless car and secure parking and fee collection",
            ),
          ]),
          TrackItem(
              "Cyber security",
              "With each passing day, new cyber attacks are being discovered. These new cyber attacks and threats require innovative ways to tackle them and protect data.",
              Image.asset("assets/images/cybersec_track.png"), [
            AboutItem(
              "SS-001",
              "Develop an Efficient Antiphishing method to secure eConsume.",
            ),
            AboutItem(
              "SS-002",
              "Demonstrate Security Vulnerabilities in Raspberry Pi weak link for IoT Application.",
            ),
            AboutItem(
              "SS-003",
              "Emerging Issues in Vehicular Cyber Security: Case study",
            ),
            AboutItem(
              "SS-004",
              "Cellular V2X Transmission for Connected and Autonomous Vehicle- Challenges and Issues.",
            ),
            AboutItem(
              "SS-005",
              "Data Driven extraction of vehicle states from CAN BUS Traffic for cyber Protection and safety",
            ),
            AboutItem(
              "SS-006",
              "Tree based Attack- Defense model for Risk Assessment in Multi-UAV Networks.",
            ),
          ]),
          TrackItem(
              "Open Innovation",
              "The field of open innovation is where ideas blossom into reality and possibilities are endless. Open innovation is an increasingly important tool, across various fields and industries. Bring together technology and ideas.",
              Image.asset("assets/images/open_track.png"), [
                
          ]),
        ],
      ),
    );
  }
}
