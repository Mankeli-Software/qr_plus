import 'dart:async';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:qr_plus/src/model/model.dart';
import 'package:qr_plus/src/repository/repository.dart';
import 'package:qr_plus/src/utility/utility.dart';
import 'package:screen_capture_event/screen_capture_event.dart';
import 'package:uuid/uuid.dart';

part 'cubit.gen.dart';
part 'qr_plus_renderer_cubit.dart';
part 'qr_plus_renderer_state.dart';
