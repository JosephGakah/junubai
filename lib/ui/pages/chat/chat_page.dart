import 'package:buai/ui/pages/chat/chat_bubble.dart';
import 'package:buai/ui/widgets/app_buttons.dart';
import 'package:buai/ui/widgets/app_texts.dart';
import 'package:buai/utils/colors.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppButtons.backButton(
                onPressed: () => Navigator.of(context).pop(),
              ),
              const Spacer(),
              Row(
                children: [
                  AppButtons.ellipsisButton(
                    onPressed: () {},
                    color: AppColors.primaryOrange,
                    context: context,
                    text: 'Recent Chats ',
                    icon: Icons.arrow_outward_sharp,
                  ),
                ],
              ),
              const SizedBox(height: 5),
              AppTexts.sectionTitle(
                title: "Let's chat in",
                subtitle: "your mother tongue",
                context: context,
                size: DisplaySize.large,
              ),
              const Spacer(),
              ChatBubble(),
              const SizedBox(height: 5),
            ],
          ),
        ),
      ),
    );
  }
}
