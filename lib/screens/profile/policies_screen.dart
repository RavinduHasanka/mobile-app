import 'package:flutter/material.dart';

class PoliciesScreen extends StatelessWidget {
  static String routeName = "/policies_screen";

  const PoliciesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // title: Text('Policies Screen'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Text(
                'PRIVACY POLICY',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Text(
                'ELECTRONIC COMMUNICATIONS',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Text(
                'When you visit the Site or send e-mails to us, you are communicating with us electronically you hereby consent to receive communications from us electronically. We will either communicate with you by e-mail or post notices on the Site. For contractual purposes, you consent to receive communications from us electronically and you agree that all agreements, notices, disclosures, and other communications that we provide to you electronically satisfy any legal requirement that such communications be in writing.',
                style: TextStyle(
                  fontSize: 16,
                ),
                textAlign: TextAlign.justify,
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Text(
                'TRADEMARKS AND COPYRIGHT',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Text(
                'ishop Lanka trading Pvt Ltd, and other ishop.lk graphics, logos, page headers, button icons, scripts, and service names are registered or unregistered trademarks or trade names of ishop Lanka trading Pvt Ltd, its affiliates or its Partners in Sri Lanka and / or other countries. The “ishop.lk” and the “ishop Lanka trading” trademarks and/or trade names may only be associated with its products and services and may not be used in connection with any other products and / or services, in any manner that is likely to cause confusion among customers, or in any manner that disparages or discredits “ishop.lk” or “ishop Lanka trading”. All other trademarks not owned by ishop Lanka Trading Pvt Ltd or its Partners or its vendors that appear on this Site are the property of their respective owners, who may or may not be affiliated with, connected to, or sponsored by ishop Lanka Trading Pvt Ltd its vendors or its Partners.\n'
                'All content included on this Site, such as text, graphics, logos, button icons, images, audio clips, digital downloads, data compilations, and software, is the exclusive property of ishop Lanka trading Pvt Ltd, its Partners or its vendors and such content is protected under the Intellectual Property Act of Sri Lanka No 36 of 2003.',
                style: TextStyle(
                  fontSize: 16,
                ),
                textAlign: TextAlign.justify,
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Text(
                'LICENSE AND SITE ACCESS',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Text(
                'ishop Lanka Trading Pvt Ltd grants you a limited license to access and make personal use of this Site. You may print and download (page caching) or portions of material from the different areas of the Service solely for your own non-commercial use. Any other copying, re-sale, duplication, or exploitation for any commercial purpose, redistribution, retransmission, or publication of any downloaded material such as product listings, descriptions, prices, account information, or any other derivative use of the Site or its contents; and/or any downloading or copying of account information for the benefit of another vendor; and/or any use of data mining, robots or similar data gathering and extraction tools is strictly prohibited without the express wrote consent of ishop Lanka Trading Pvt Ltd. You agree to grant ishop Lanka Trading Pvt Ltd a non-exclusive, royalty-free, worldwide, perpetual license, with the right to sublicense, reproduce, distribute, transmit create derivative works of publicly display, and publicly perform any materials and other information (including, without limitation, ideas contained therein for new or improved products and services) you submit to public areas of the Service by all means and in any media now known or hereafter developed. You may not frame or utilize framing techniques to enclose any trademark, logo, or other proprietary information (including images, text, page layout, or form) of our Partners without express written consent. You may not use any Meta tags or any other "hidden text" utilizing ishop Lanka Trading Pvt Ltd and/or ishop.lk name or trademarks without the express written consent of ishop Lanka Trading Pvt Ltd. Any unauthorized use terminates the permission or license granted by ishop Lanka Trading Pvt Ltd. You are granted a limited, revocable, and nonexclusive right to create a hyperlink to the home page of the Site so long as the link does not portray ishop Lanka trading Pvt Ltd, its Partners, or their products or services in a false, misleading, derogatory, or otherwise offensive matter. You may not use any ishop Lanka Trading Pvt Ltd or ishop.lk logos or other proprietary graphics or trademarks as part of the link without express written permission.',
                style: TextStyle(
                  fontSize: 16,
                ),
                textAlign: TextAlign.justify,
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Text(
                'YOUR ACCOUNT',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Text(
                'If you use this Site, you are responsible for maintaining the confidentiality of your account and password and for restricting access to your computer. Furthermore, you are responsible for any and all activities that occur under your account or password. You authorize ishop Lanka Trading Pvt Ltd to assume that any person using the Site with your password and user name either is You or is authorized to act for You. You agree to authorize ishop Lanka Trading Pvt Ltd immediately of any unauthorized use of your account or any other breach of security. ishop Lanka Trading Pvt Ltd will not be liable for any loss that you may incur as a result of someone else using your password or account either with or without your knowledge. However, you could be held liable for losses incurred by ishop Lanka Trading Pvt Ltd or another party due to someone else using your account or password. ishop.lk does sell products for children, but it sells them to adults, who can purchase with a credit card. If you are under the age of 18, you may use ishop.lk only with the involvement of a parent or guardian. ishop Lanka Trading Pvt Ltd and its Partners reserve the right to refuse service, terminate accounts, remove or edit content, or cancel orders in their sole discretion.',
                style: TextStyle(
                  fontSize: 16,
                ),
                textAlign: TextAlign.justify,
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Text(
                'RISK OF LOSS',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Text(
                'All items purchased from the Site are made pursuant to a delivery contract. This means that the risk of loss and title for such items passes to you from the vendor upon delivery to the carrier',
                style: TextStyle(
                  fontSize: 16,
                ),
                textAlign: TextAlign.justify,
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Text(
                'PRODUCT DESCRIPTIONS',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Text(
                'ishop Lanka Trading Pvt Ltd together with its Partners attempts to be as accurate as possible. However, ishop Lanka Trading Pvt Ltd does not warrant that the product descriptions provided by the Vendors or other content of this Site are accurate, complete, reliable, current, or errorfree. If a product offered through the Site itself is not described, and you are not satisfied with the purchase, your sole remedy is to return it in its unused condition to the Vendor concerned. It would be the Vendor’s responsibility to ensure merchantability and fitness for a particular purpose of the products and services they offer through the Site.',
                style: TextStyle(
                  fontSize: 16,
                ),
                textAlign: TextAlign.justify,
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Text(
                'PRICING',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Text(
                'The list price displayed for products on our website may or may not represent the full retail price listed on the product itself, suggested by the manufacturer or supplier, estimated in accordance with standard industry practice; or the estimated retail value for a comparably featured item offered elsewhere. The list price may or may not represent the prevailing price in every area on any particular day. Where an item is offered for sale by one of our Vendors, the list price may be decided by ishop Lanka Trading Pvt Ltd and the Vendors at their discretion. \n'
                'With respect to items sold through the Site, we cannot confirm the price of an item until you have ordered; however, we do NOT charge your credit card until after your order has entered the delivery process. Despite our best efforts, a small number of the items in our catalog may be incorrectly priced. If an item is actual price is higher than our stated price, we will, at our discretion, contact you for further instructions, before delivery or cancellation of your order and notify you of such cancellation. \n'
                'Please note that this policy applies only to products sold and delivered through the Site. With regard to your purchases from third-party sellers using the Site, the third-party sellers may follow different policies in the event of an incorrectly priced item. Unless otherwise specified all prices shall be listed in Sri Lankan Rupees (LKR)',
                style: TextStyle(
                  fontSize: 16,
                ),
                textAlign: TextAlign.justify,
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Text(
                'RETURN, REFUND, CANCELLATION POLICIES',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Text(
                'There shall not be any refunds/returns affected via the Site. Products and Services that require refunds/returns are to be directly negotiated with the Vendor concerned. However, cancellations (for Eg. due to an error in a software application) may be effected via the Site provided that the product or service was not delivered at the point of cancellation.',
                style: TextStyle(
                  fontSize: 16,
                ),
                textAlign: TextAlign.justify,
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Text(
                'DISCLAIMER OF WARRANTIES AND LIMITATION OF LIABILITY',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Text(
                'This Site and all information, content, materials, products (including software), and services included on or otherwise made available to you through this Site are provided by ishop Lanka Trading Pvt Ltd or its Partners on an "as is" and "as available" basis unless otherwise specified in writing. ishop Lanka Trading Pvt Ltd and its Partners make no representations or warranties of any kind, express or implied, as to the operation of this Site or the information, content, materials, products (including software), or services included on or otherwise made available to you through this Site unless otherwise specified in writing. You expressly agree that your use of this Site is at your sole risk. \n'
                'To the full extent permissible by applicable law, ishop Lanka Trading Pvt Ltd and its Partners disclaim all warranties, express or implied, including, but not limited to, implied warranties of merchantability and fitness for a particular purpose. ishop Lanka Trading Pvt Ltd and its Partners do not warrant that this Site; information, content, materials, products (including software), or services included on or otherwise made available to you through this Site; their servers; or e-mail sent from the Site are free of viruses, or other harmful components. ishop Lanka Trading Pvt Ltd and its Partners will not be liable for any damages of any kind arising from the use of this Site or from any information, content, materials, products (including software), or services included on or otherwise made available to you through this Site, including, but not limited to direct, indirect, incidental, punitive, and consequential damages, unless otherwise specified in writing.',
                style: TextStyle(
                  fontSize: 16,
                ),
                textAlign: TextAlign.justify,
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Text(
                'APPLICABLE LAW',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Text(
                'The Site and the Terms and Conditions herein contained shall be governed and construed in accordance with the laws of Sri Lanka, By accessing the Site, you agree that the laws of Sri Lanka will govern all matters relating to the Site without giving effect to any principles of conflict of laws.',
                style: TextStyle(
                  fontSize: 16,
                ),
                textAlign: TextAlign.justify,
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Text(
                'DISPUTES',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Text(
                'You agree that any legal action, dispute, or proceeding between ishop Lanka Trading Pvt Ltd and You for any purpose concerning the Terms and Conditions or in relation to your visit to the Site or the products you purchase through the Site or the parties’ obligation hereunder shall be governed by the Arbitration Act No 11 of 1995 in Sri Lanka. Any cause of action or claim you may have with respect to the Services must be commenced within one (01) year after the claim or cause of action arises or such claim or cause of action is barred.',
                style: TextStyle(
                  fontSize: 16,
                ),
                textAlign: TextAlign.justify,
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Text(
                'SITE POLICIES, MODIFICATION, AND SEVERABILITY',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Text(
                'Please review all other policies, such as our privacy policy posted on this Site. These policies also govern your visit to the Site. We reserve the right to make changes to our Site, policies, and to Terms and Conditions at any time. If any of these Terms and Conditions shall be deemed unlawful, void, or for any reason was unenforceable, then that provision shall be deemed severable from these Terms and Conditions and shall not affect the validity and enforceability of any remaining provisions.',
                style: TextStyle(
                  fontSize: 16,
                ),
                textAlign: TextAlign.justify,
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Text(
                'OUR ADDRESS',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Text(
                'You can contact us at the following address for any further queries or any difficulty you may have with the Site. \n\n'
                    'ishop Lanka Trading Pvt Ltd\n'
                    '51/1 Galle Rd,\n'
                    'Colombo-4\n'
                    'Phone: 074 100 54 58 / 074 100 54 59\n'
                    'Web: www.ishop.lk\n'
                    'Email: info@ishop.lk',
                style: TextStyle(
                  fontSize: 16,
                ),
                textAlign: TextAlign.justify,
              ),
            ),
            // Add more Text widgets as needed
          ],
        ),
      ),
    );
  }
}