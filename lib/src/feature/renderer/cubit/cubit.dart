import 'dart:async';
import 'dart:convert';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:qr_plus/qr_plus.dart';
import 'package:qr_plus/src/model/model.dart';
import 'package:qr_plus/src/repository/qr_plus_repository/qr_plus_repository.dart';

part 'cubit.gen.dart';
part 'qr_plus_renderer_cubit.dart';
part 'qr_plus_renderer_state.dart';
