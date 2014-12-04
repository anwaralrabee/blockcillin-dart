library test;

import 'dart:html';
import 'package:mock/mock.dart';
import 'package:unittest/unittest.dart';

import 'package:blockcillin/client.dart';

part 'src/app_test.dart';
part 'src/app_controller_test.dart';
part 'src/app_view_test.dart';
part 'src/block_test.dart';
part 'src/board_test.dart';
part 'src/button_bar_test.dart';
part 'src/cell_test.dart';
part 'src/game_test.dart';
part 'src/game_view_test.dart';
part 'src/gl_program_test.dart';
part 'src/gl_test.dart';
part 'src/main_menu_test.dart';
part 'src/ring_test.dart';

void run_tests() {
  _app_tests();
  _app_controller_tests();
  _app_view_tests();
  _block_tests();
  _board_tests();
  _button_bar_tests();
  _cell_tests();
  _game_tests();
  _game_view_tests();
  _gl_program_tests();
  _gl_tests();
  _main_menu_tests();
  _ring_tests();
}