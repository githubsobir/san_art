import 'dart:developer';
import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:san_art/core/back_image/back_image1.dart';
import 'package:san_art/core/data/hive_san_art.dart';
import 'package:san_art/core/routes/routes.dart';
import 'package:san_art/core/theme/theme_switcher.dart';
import 'package:san_art/core/widgets/buttons/button_primary.dart';
import 'package:san_art/featurs/auth/sms_page/domain/entities/request/sms_page_req_entites.dart';
import 'package:san_art/featurs/auth/sms_page/presentation/provider/sms_page_provider.dart';
import 'package:timer_count_down/timer_controller.dart';
import 'package:timer_count_down/timer_count_down.dart';

@RoutePage()
class SmsPage extends ConsumerStatefulWidget {
  final String windowId;
  final String phoneNumber;

  const SmsPage({super.key, required this.windowId, required this.phoneNumber});

  @override
  ConsumerState<SmsPage> createState() => _SmsPageState();
}

class _SmsPageState extends ConsumerState<SmsPage> {
  // Constants
  static const int _pinCodeLength = 5;
  static const double _horizontalPadding = 20.0;
  static const double _containerMargin = 15.0;

  // Controllers and variables
  late final TextEditingController _textEditingController;
  late final CountdownController _countdownController;
  final HiveBoxes _hiveBox = HiveBoxes();

  String _currentTimerText = "";
  bool _hasRequestBeenSent = false;
  bool _showError = false;

  @override
  void initState() {
    super.initState();
    _textEditingController = TextEditingController();
    _countdownController = CountdownController(autoStart: true);
  }

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _listenToSmsProvider();

    return Scaffold(
      body: backImage1(
        ref: ref,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(_containerMargin),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                _buildAppBar(),
                const SizedBox(height: 40),
                _buildTitle(),
                const SizedBox(height: 12),
                _buildSubtitle(),
                const SizedBox(height: 36),
                _buildPinCodeField(),
                if (_showError) _buildErrorMessage(),
                const SizedBox(height: 20),
                _buildResendSection(),
                const Spacer(),
                _buildSubmitButton(),
                const ThemeSwitcher(),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildAppBar() {
    return Align(
      alignment: Alignment.centerLeft,
      child: IconButton(
        onPressed: () => context.router.pop(),
        icon: Icon(
          Platform.isIOS ? Icons.arrow_back_ios : Icons.arrow_back,
        ),
        padding: EdgeInsets.zero,
        alignment: Alignment.centerLeft,
      ),
    );
  }

  Widget _buildTitle() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: _horizontalPadding),
      child: Text(
        "passCode".tr(),
        style: Theme.of(context).textTheme.headlineLarge?.copyWith(
              fontFamily: "Inter",
              fontWeight: FontWeight.w700,
              fontSize: 30,
            ),
      ),
    );
  }

  Widget _buildSubtitle() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: _horizontalPadding),
      child: Text(
        'verificationCode'.tr(args: [_hiveBox.userPhone]),
        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
              fontFamily: "Inter",
              fontWeight: FontWeight.w400,
              fontSize: 18,
            ),
      ),
    );
  }

  Widget _buildPinCodeField() {
    return SizedBox(
      height: 70,
      child: PinCodeTextField(
        controller: _textEditingController,
        appContext: context,
        animationType: AnimationType.fade,
        keyboardType: TextInputType.number,
        cursorColor: Colors.transparent,
        backgroundColor: Colors.transparent,
        enableActiveFill: true,
        length: _pinCodeLength,
        textStyle: const TextStyle(
          fontWeight: FontWeight.w500,
          fontFamily: "Inter",
          fontSize: 28,
        ),
        pinTheme: _buildPinTheme(),
        animationDuration: const Duration(milliseconds: 300),
        onChanged: (value) {
          setState(() {
            _showError = false;
          });
        },
        onCompleted: (value) {
          _submitCode();
        },
      ),
    );
  }

  PinTheme _buildPinTheme() {
    return PinTheme(
      shape: PinCodeFieldShape.box,
      borderRadius: BorderRadius.circular(10),
      fieldHeight: 70,
      fieldWidth: 65,
      borderWidth: 0.4,
      activeBorderWidth: 1,
      selectedBorderWidth: 1,
      inactiveBorderWidth: 0.4,
      activeColor: Theme.of(context).colorScheme.primary,
      inactiveColor: Colors.grey.shade400,
      activeFillColor: Colors.transparent,
      selectedColor: Theme.of(context).colorScheme.primary,
      selectedFillColor: Colors.transparent,
      inactiveFillColor: Colors.transparent,
    );
  }

  Widget _buildErrorMessage() {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: _horizontalPadding,
        vertical: 10,
      ),
      child: Text(
        "smsError".tr(),
        style: TextStyle(
          fontFamily: "Inter",
          color: Theme.of(context).colorScheme.error,
          fontSize: 16,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }

  Widget _buildResendSection() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: _isTimerFinished ? _resendCode : null,
          child: Text(
            "sendAgain".tr(),
            style: TextStyle(
              fontFamily: "Inter",
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: _isTimerFinished
                  ? Theme.of(context).colorScheme.primary
                  : Colors.grey,
            ),
          ),
        ),
        const SizedBox(width: 12),
        _buildCountdownTimer(),
      ],
    );
  }

  Widget _buildCountdownTimer() {
    return Countdown(
      seconds: ref.watch(smsTimer),
      controller: _countdownController,
      build: (context, time) {
        _currentTimerText = _formatTime(time.toInt());
        return Text(
          _currentTimerText,
          style: const TextStyle(
            fontFamily: "Inter",
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
        );
      },
      interval: const Duration(seconds: 1),
      onFinished: () {
        ref.read(smsTimeEnd.notifier).state = false;
      },
    );
  }

  Widget _buildSubmitButton() {
    return Visibility(
      visible: !_isTimerFinished,
      child: PrimaryButton(
        text: "check".tr(),
        isLoading: ref.watch(smsNotifierProvider).isLoading,
        onPressed: _canSubmit ? _submitCode : () {},
      ),
    );
  }

  // Helper methods
  bool get _isTimerFinished => _currentTimerText == "00:00";

  bool get _canSubmit =>
      _textEditingController.text.trim().length == _pinCodeLength &&
      !ref.watch(smsNotifierProvider).isLoading;

  String _formatTime(int seconds) {
    final minutes = seconds ~/ 60;
    final remainingSeconds = seconds % 60;
    return '${minutes.toString().padLeft(2, '0')}:'
        '${remainingSeconds.toString().padLeft(2, '0')}';
  }

  void _listenToSmsProvider() {
    ref.listen<AsyncValue>(smsNotifierProvider, (previous, next) {
      if (_hasRequestBeenSent &&
          previous?.isLoading == true &&
          next.isLoading == false) {
        next.when(
          data: (data) {
            if (data!.token.toString().length > 10) {
              _navigateBasedOnWindowId();
            } else {
              _showErrorState();
            }
          },
          error: (error, stackTrace) {
            _showErrorState();
            log('SMS verification error: $error');
          },
          loading: () {},
        );

        _hasRequestBeenSent = false;
      }
    });
  }

  var box = HiveBoxes();

  void _navigateBasedOnWindowId() {
    switch (widget.windowId) {
      case "LOGIN":
        context.router.push(RootRoute(val1: "val1", val2: "val2"));
        break;
      case "REGISTRATION":
        {
      // case "user":
      // case "logistics":
      // case "sender":
      // case "driver":
          box.userType == "driver"?
          context.router.push(FullNameDriverRoute()):
          context.router.push(FullNameRoute());
        }
        break;
      default:
        log('Unknown window ID: ${widget.windowId}');
    }
  }

  void _showErrorState() {
    if (mounted) {
      setState(() {
        _showError = true;
      });
    }
  }

  void _submitCode() {
    if (!_canSubmit) return;

    _hiveBox.userPhone = widget.phoneNumber;

    ref.read(smsNotifierProvider.notifier).sendMessage(
          userName: widget.phoneNumber,
          loginSmsRequestEntities: LoginSmsRequestEntities(
            username: widget.phoneNumber,
            deviceName: "deviceName", // Consider making this dynamic
            code: _textEditingController.text.trim(),
          ),
        );

    _hasRequestBeenSent = true;
  }

  void _resendCode() {
    try {
      ref.read(smsTimeEnd.notifier).state = true;
      _countdownController.restart();
      setState(() {
        _showError = false;
      });
    } catch (e) {
      log('Error resending code: $e');
    }
  }
}
