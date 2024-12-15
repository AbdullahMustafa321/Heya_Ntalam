
import 'package:audioplayers/audioplayers.dart';

import '../../../../generated/assets.dart';

class CategoryModel{
  final String image;
  final String title;
  final List<Session> sessions;
  CategoryModel({required this.sessions, required this.image, required this.title});

}

class Session {
  final String title;
  final List<QuestionsModel> questions;
  final List<SessionDetails> sessionDetails;

  Session({required this.sessionDetails,
    required this.title,
    required this.questions,
  });
}
class SessionDetails {
  final String title;
  final String image;
  final String sound;
  void playSound() {
    final player = AudioPlayer();
    player.play(AssetSource(sound));
  }
  SessionDetails({required this.title, required this.image, required this.sound});

}
class QuestionsModel {
  final String sound;
  final List<Option> options;
  bool isLocked;
  Option? selectedOption;

  QuestionsModel({
    required this.sound,
    required this.options,
    this.isLocked = false,
    this.selectedOption,
  });

  void playSound() {
    final player = AudioPlayer();
    player.play(AssetSource(sound));
  }
}

class Option {
  final String image;
  final bool isCorrect;

  Option({required this.image, required this.isCorrect});
}


final List<CategoryModel> sessions = [
  CategoryModel(
    image: Assets.categoriesCategory1,
    title: 'أدوات المائدة',
    sessions: [
      Session(
        title: 'الجلسة الاولي',
        sessionDetails: [
          SessionDetails(
            title: 'كوباية',
            image: Assets.tableware1,
            sound: Assets.sounds1,
          ),
          SessionDetails(
            title: 'معلقة',
            image: Assets.tableware2,
            sound: Assets.sounds2,
          ),
          SessionDetails(
            title: 'طبق',
            image: Assets.tableware3,
            sound: Assets.sounds3,
          ),
        ],
        questions: [
          QuestionsModel(
            sound: Assets.sounds3,
            options: [
              Option(image: Assets.tableware3, isCorrect: true),
              Option(image: Assets.tableware9, isCorrect: false),
            ],
          ),
          QuestionsModel(
            sound: Assets.sounds1,
            options: [
              Option(image: Assets.tableware7, isCorrect: false),
              Option(image: Assets.tableware1, isCorrect: true),
            ],
          ),
          QuestionsModel(
            sound: Assets.sounds2,
            options: [
              Option(image: Assets.tableware2, isCorrect: true),
              Option(image: Assets.tableware5, isCorrect: false),
            ],
          ),
        ],
      ),
      Session(
        title: 'الجلسة الثانية',
        sessionDetails: [
          SessionDetails(
            title: 'سكين',
            image: Assets.tableware4,
            sound: Assets.sounds4,
          ),
          SessionDetails(
            title: 'حلة',
            image: Assets.tableware5,
            sound: Assets.sounds5,
          ),
          SessionDetails(
            title: 'شوكة',
            image: Assets.tableware6,
            sound: Assets.sounds6,
          ),
        ],
        questions: [
          QuestionsModel(
            sound: Assets.sounds4,
            options: [
              Option(image: Assets.tableware4, isCorrect: true),
              Option(image: Assets.tableware1, isCorrect: false),
            ],
          ),
          QuestionsModel(
            sound: Assets.sounds5,
            options: [
              Option(image: Assets.tableware2, isCorrect: false),
              Option(image: Assets.tableware5, isCorrect: true),
            ],
          ),
          QuestionsModel(
            sound: Assets.sounds6,
            options: [
              Option(image: Assets.tableware8, isCorrect: false),
              Option(image: Assets.tableware6, isCorrect: true),
            ],
          ),
        ],
      ),
      Session(
        title: 'الجلسة الثالثة',
        sessionDetails: [
          SessionDetails(
            title: 'براد',
            image: Assets.tableware7,
            sound: Assets.sounds7,
          ),
          SessionDetails(
            title: 'صينية',
            image: Assets.tableware8,
            sound: Assets.sounds8,
          ),
          SessionDetails(
            title: 'أزازة',
            image: Assets.tableware9,
            sound: Assets.sounds9,
          ),
          SessionDetails(
            title: 'مج',
            image: Assets.tableware10,
            sound: Assets.sounds10,
          ),
        ],
        questions: [
          QuestionsModel(
            sound: Assets.sounds10,
            options: [
              Option(image: Assets.tableware10, isCorrect: true),
              Option(image: Assets.tableware2, isCorrect: false),
            ],
          ),
          QuestionsModel(
            sound: Assets.sounds9,
            options: [
              Option(image: Assets.tableware5, isCorrect: false),
              Option(image: Assets.tableware9, isCorrect: true),
            ],
          ),
          QuestionsModel(
            sound: Assets.sounds7,
            options: [
              Option(image: Assets.tableware7, isCorrect: true),
              Option(image: Assets.tableware2, isCorrect: false),
            ],
          ),
          QuestionsModel(
            sound: Assets.sounds8,
            options: [
              Option(image: Assets.tableware8, isCorrect: true),
              Option(image: Assets.tableware5, isCorrect: false),
            ],
          ),
        ],
      ),
    ],
  ),
  CategoryModel(
    image: Assets.categoriesCategory2,
    title: 'الألعاب',
    sessions: [
      Session(
        title: 'الجلسة الاولي',
        sessionDetails: [
          SessionDetails(
            title: 'مكعبات',
            image: Assets.games11,
            sound: Assets.sounds11,
          ),
          SessionDetails(
            title: 'طيارة',
            image: Assets.games12,
            sound: Assets.sounds12,
          ),
          SessionDetails(
            title: 'عربية',
            image: Assets.games13,
            sound: Assets.sounds13,
          ),
        ],
        questions: [
          QuestionsModel(
            sound: Assets.sounds13,
            options: [
              Option(image: Assets.games13, isCorrect: true),
              Option(image: Assets.games19, isCorrect: false),
            ],
          ),
          QuestionsModel(
            sound: Assets.sounds11,
            options: [
              Option(image: Assets.games17, isCorrect: false),
              Option(image: Assets.games11, isCorrect: true),
            ],
          ),
          QuestionsModel(
            sound: Assets.sounds12,
            options: [
              Option(image: Assets.games12, isCorrect: true),
              Option(image: Assets.games15, isCorrect: false),
            ],
          ),
        ],
      ),
      Session(
        title: 'الجلسة الثانية',
        sessionDetails: [
          SessionDetails(
            title: 'خرز',
            image: Assets.games14,
            sound: Assets.sounds14,
          ),
          SessionDetails(
            title: 'كونكت فور',
            image: Assets.games15,
            sound: Assets.sounds15,
          ),
          SessionDetails(
            title: 'بازل',
            image: Assets.games16,
            sound: Assets.sounds16,
          ),
        ],
        questions: [
          QuestionsModel(
            sound: Assets.sounds14,
            options: [
              Option(image: Assets.games14, isCorrect: true),
              Option(image: Assets.games11, isCorrect: false),
            ],
          ),
          QuestionsModel(
            sound: Assets.sounds15,
            options: [
              Option(image: Assets.games12, isCorrect: false),
              Option(image: Assets.games15, isCorrect: true),
            ],
          ),
          QuestionsModel(
            sound: Assets.sounds16,
            options: [
              Option(image: Assets.games18, isCorrect: false),
              Option(image: Assets.games16, isCorrect: true),
            ],
          ),
        ],
      ),
      Session(
        title: 'الجلسة الثالثة',
        sessionDetails: [
          SessionDetails(
            title: 'مجسمات',
            image: Assets.games20,
            sound: Assets.sounds20,
          ),
          SessionDetails(
            title: 'بابلز',
            image: Assets.games19,
            sound: Assets.sounds19,
          ),
          SessionDetails(
            title: 'عروسة',
            image: Assets.games18,
            sound: Assets.sounds18,
          ),
          SessionDetails(
            title: 'دبدوب',
            image: Assets.games17,
            sound: Assets.sounds17,
          ),
        ],
        questions: [
          QuestionsModel(
            sound: Assets.sounds17,
            options: [
              Option(image: Assets.games18, isCorrect: false),
              Option(image: Assets.games17, isCorrect: true),
            ],
          ),
          QuestionsModel(
            sound: Assets.sounds19,
            options: [
              Option(image: Assets.games19, isCorrect: true),
              Option(image: Assets.games11, isCorrect: false),
            ],
          ),
          QuestionsModel(
            sound: Assets.sounds18,
            options: [
              Option(image: Assets.games12, isCorrect: false),
              Option(image: Assets.games18, isCorrect: true),
            ],
          ),
          QuestionsModel(
            sound: Assets.sounds20,
            options: [
              Option(image: Assets.games20, isCorrect: true),
              Option(image: Assets.games16, isCorrect: false),
            ],
          ),
        ],
      ),    ],
  ),
  CategoryModel(
    image: Assets.categoriesCategory3,
    title: 'الطعام',
    sessions: [
      Session(
        title: 'الجلسة الاولي',
        sessionDetails: [
          SessionDetails(
            title: 'رز',
            image: Assets.foods21,
            sound: Assets.sounds21,
          ),
          SessionDetails(
            title: 'مكرونة',
            image: Assets.foods22,
            sound: Assets.sounds22,
          ),
          SessionDetails(
            title: 'فول',
            image: Assets.foods23,
            sound: Assets.sounds23,
          ),
        ],
        questions: [
          QuestionsModel(
            sound: Assets.sounds23,
            options: [
              Option(image: Assets.foods23, isCorrect: true),
              Option(image: Assets.foods28, isCorrect: false),
            ],
          ),
          QuestionsModel(
            sound: Assets.sounds21,
            options: [
              Option(image: Assets.foods25, isCorrect: false),
              Option(image: Assets.foods21, isCorrect: true),
            ],
          ),
          QuestionsModel(
            sound: Assets.sounds22,
            options: [
              Option(image: Assets.foods22, isCorrect: true),
              Option(image: Assets.foods24, isCorrect: false),
            ],
          ),
        ],
      ),
      Session(
        title: 'الجلسة الثانية',
        sessionDetails: [
          SessionDetails(
            title: 'طعمية',
            image: Assets.foods24,
            sound: Assets.sounds24,
          ),
          SessionDetails(
            title: 'ملوخية',
            image: Assets.foods25,
            sound: Assets.sounds25,
          ),
          SessionDetails(
            title: 'بيض',
            image: Assets.foods26,
            sound: Assets.sounds26,
          ),
        ],
        questions: [
          QuestionsModel(
            sound: Assets.sounds24,
            options: [
              Option(image: Assets.foods24, isCorrect: true),
              Option(image: Assets.foods21, isCorrect: false),
            ],
          ),
          QuestionsModel(
            sound: Assets.sounds25,
            options: [
              Option(image: Assets.foods22, isCorrect: false),
              Option(image: Assets.foods25, isCorrect: true),
            ],
          ),
          QuestionsModel(
            sound: Assets.sounds26,
            options: [
              Option(image: Assets.foods28, isCorrect: false),
              Option(image: Assets.foods26, isCorrect: true),
            ],
          ),
        ],
      ),
      Session(
        title: 'الجلسة الثالثة',
        sessionDetails: [
          SessionDetails(
            title: 'كيكة',
            image: Assets.foods27,
            sound: Assets.sounds27,
          ),
          SessionDetails(
            title: 'مصاصة',
            image: Assets.foods28,
            sound: Assets.sounds28,
          ),
          SessionDetails(
            title: 'بونبوني',
            image: Assets.foods29,
            sound: Assets.sounds29,
          ),
          SessionDetails(
            title: 'شكولاته',
            image: Assets.foods30,
            sound: Assets.sounds30,
          ),
        ],
        questions: [
          QuestionsModel(
            sound: Assets.sounds30,
            options: [
              Option(image: Assets.foods23, isCorrect: false),
              Option(image: Assets.foods30, isCorrect: true),
            ],
          ),
          QuestionsModel(
            sound: Assets.sounds28,
            options: [
              Option(image: Assets.foods28, isCorrect: true),
              Option(image: Assets.foods22, isCorrect: false),
            ],
          ),
          QuestionsModel(
            sound: Assets.sounds29,
            options: [
              Option(image: Assets.foods30, isCorrect: false),
              Option(image: Assets.foods29, isCorrect: true),
            ],
          ),
          QuestionsModel(
            sound: Assets.sounds27,
            options: [
              Option(image: Assets.foods27, isCorrect: true),
              Option(image: Assets.foods25, isCorrect: false),
            ],
          ),
        ],
      ),    ],
  ),
  CategoryModel(
    image: Assets.categoriesCategory4,
    title: 'اجزاء الجسم',
    sessions: [
      Session(
        title: 'الجلسة الاولي',
        sessionDetails: [
          SessionDetails(
            title: 'بوق',
            image: Assets.bodyParts31,
            sound: Assets.sounds31,
          ),
          SessionDetails(
            title: 'أيد',
            image: Assets.bodyParts32,
            sound: Assets.sounds32,
          ),
          SessionDetails(
            title: 'عين',
            image: Assets.bodyParts33,
            sound: Assets.sounds33,
          ),
        ],
        questions: [
          QuestionsModel(
            sound: Assets.sounds33,
            options: [
              Option(image: Assets.bodyParts33, isCorrect: true),
              Option(image: Assets.bodyParts38, isCorrect: false),
            ],
          ),
          QuestionsModel(
            sound: Assets.sounds31,
            options: [
              Option(image: Assets.bodyParts35, isCorrect: false),
              Option(image: Assets.bodyParts31, isCorrect: true),
            ],
          ),
          QuestionsModel(
            sound: Assets.sounds32,
            options: [
              Option(image: Assets.bodyParts32, isCorrect: true),
              Option(image: Assets.bodyParts34, isCorrect: false),
            ],
          ),
        ],
      ),
      Session(
        title: 'الجلسة الثانية',
        sessionDetails: [
          SessionDetails(
            title: 'ودن',
            image: Assets.bodyParts34,
            sound: Assets.sounds34,
          ),
          SessionDetails(
            title: 'مناخير',
            image: Assets.bodyParts35,
            sound: Assets.sounds35,
          ),
          SessionDetails(
            title: 'شعر',
            image: Assets.bodyParts36,
            sound: Assets.sounds36,
          ),
        ],
        questions: [
          QuestionsModel(
            sound: Assets.sounds34,
            options: [
              Option(image: Assets.bodyParts34, isCorrect: true),
              Option(image: Assets.bodyParts31, isCorrect: false),
            ],
          ),
          QuestionsModel(
            sound: Assets.sounds35,
            options: [
              Option(image: Assets.bodyParts32, isCorrect: false),
              Option(image: Assets.bodyParts35, isCorrect: true),
            ],
          ),
          QuestionsModel(
            sound: Assets.sounds36,
            options: [
              Option(image: Assets.bodyParts38, isCorrect: false),
              Option(image: Assets.bodyParts36, isCorrect: true),
            ],
          ),
        ],
      ),
      Session(
        title: 'الجلسة الثالثة',
        sessionDetails: [
          SessionDetails(
            title: 'أسنان',
            image: Assets.bodyParts37,
            sound: Assets.sounds37,
          ),
          SessionDetails(
            title: 'رجل',
            image: Assets.bodyParts38,
            sound: Assets.sounds38,
          ),
          SessionDetails(
            title: 'رقبة',
            image: Assets.bodyParts39,
            sound: Assets.sounds39,
          ),
          SessionDetails(
            title: 'ركبة',
            image: Assets.bodyParts40,
            sound: Assets.sounds40,
          ),
        ],
        questions: [
          QuestionsModel(
            sound: Assets.sounds40,
            options: [
              Option(image: Assets.bodyParts33, isCorrect: false),
              Option(image: Assets.bodyParts40, isCorrect: true),
            ],
          ),
          QuestionsModel(
            sound: Assets.sounds38,
            options: [
              Option(image: Assets.bodyParts38, isCorrect: true),
              Option(image: Assets.bodyParts32, isCorrect: false),
            ],
          ),
          QuestionsModel(
            sound: Assets.sounds39,
            options: [
              Option(image: Assets.bodyParts40, isCorrect: false),
              Option(image: Assets.bodyParts39, isCorrect: true),
            ],
          ),
          QuestionsModel(
            sound: Assets.sounds37,
            options: [
              Option(image: Assets.bodyParts37, isCorrect: true),
              Option(image: Assets.bodyParts35, isCorrect: false),
            ],
          ),
        ],
      ),
    ],
  ),
  CategoryModel(
    image: Assets.categoriesCategory5,
    title: 'المنزل',
    sessions: [
      Session(
        title: 'الجلسة الاولي',
        sessionDetails: [
          SessionDetails(
            title: 'باب',
            image: Assets.home41,
            sound: Assets.sounds41,
          ),
          SessionDetails(
            title: 'شباك',
            image: Assets.home42,
            sound: Assets.sounds42,
          ),
          SessionDetails(
            title: 'سرير',
            image: Assets.home43,
            sound: Assets.sounds43,
          ),
        ],
        questions: [
          QuestionsModel(
            sound: Assets.sounds43,
            options: [
              Option(image: Assets.home43, isCorrect: true),
              Option(image: Assets.home48, isCorrect: false),
            ],
          ),
          QuestionsModel(
            sound: Assets.sounds41,
            options: [
              Option(image: Assets.home45, isCorrect: false),
              Option(image: Assets.home41, isCorrect: true),
            ],
          ),
          QuestionsModel(
            sound: Assets.sounds42,
            options: [
              Option(image: Assets.home42, isCorrect: true),
              Option(image: Assets.home44, isCorrect: false),
            ],
          ),
        ],
      ),
      Session(
        title: 'الجلسة الثانية',
        sessionDetails: [
          SessionDetails(
            title: 'كرسي',
            image: Assets.home44,
            sound: Assets.sounds44,
          ),
          SessionDetails(
            title: 'طربيزة',
            image: Assets.home45,
            sound: Assets.sounds45,
          ),
          SessionDetails(
            title: 'مخدة',
            image: Assets.home46,
            sound: Assets.sounds46,
          ),
        ],
        questions: [
          QuestionsModel(
            sound: Assets.sounds44,
            options: [
              Option(image: Assets.home44, isCorrect: true),
              Option(image: Assets.home41, isCorrect: false),
            ],
          ),
          QuestionsModel(
            sound: Assets.sounds45,
            options: [
              Option(image: Assets.home42, isCorrect: false),
              Option(image: Assets.home45, isCorrect: true),
            ],
          ),
          QuestionsModel(
            sound: Assets.sounds46,
            options: [
              Option(image: Assets.foods28, isCorrect: false),
              Option(image: Assets.home46, isCorrect: true),
            ],
          ),
        ],
      ),
      Session(
        title: 'الجلسة الثالثة',
        sessionDetails: [
          SessionDetails(
            title: 'حوض',
            image: Assets.home47,
            sound: Assets.sounds47,
          ),
          SessionDetails(
            title: 'حنفية',
            image: Assets.home48,
            sound: Assets.sounds48,
          ),
          SessionDetails(
            title: 'حمام',
            image: Assets.home49,
            sound: Assets.sounds49,
          ),
          SessionDetails(
            title: 'دش',
            image: Assets.home50,
            sound: Assets.sounds50,
          ),
        ],
        questions: [
          QuestionsModel(
            sound: Assets.sounds50,
            options: [
              Option(image: Assets.home43, isCorrect: false),
              Option(image: Assets.home50, isCorrect: true),
            ],
          ),
          QuestionsModel(
            sound: Assets.sounds48,
            options: [
              Option(image: Assets.home48, isCorrect: true),
              Option(image: Assets.home42, isCorrect: false),
            ],
          ),
          QuestionsModel(
            sound: Assets.sounds49,
            options: [
              Option(image: Assets.home50, isCorrect: false),
              Option(image: Assets.home49, isCorrect: true),
            ],
          ),
          QuestionsModel(
            sound: Assets.sounds47,
            options: [
              Option(image: Assets.home47, isCorrect: true),
              Option(image: Assets.home45, isCorrect: false),
            ],
          ),
        ],
      ),    ],
  ),
  CategoryModel(
    image: Assets.categoriesCategory6,
    title: 'الملابس',
    sessions: [
      Session(
        title: 'الجلسة الاولي',
        sessionDetails: [
          SessionDetails(
            title: 'بنطلون',
            image: Assets.clothes51,
            sound: Assets.sounds51,
          ),
          SessionDetails(
            title: 'شورت',
            image: Assets.clothes52,
            sound: Assets.sounds52,
          ),
          SessionDetails(
            title: 'طاقية',
            image: Assets.clothes53,
            sound: Assets.sounds53,
          ),
        ],
        questions: [
          QuestionsModel(
            sound: Assets.sounds53,
            options: [
              Option(image: Assets.clothes53, isCorrect: true),
              Option(image: Assets.clothes58, isCorrect: false),
            ],
          ),
          QuestionsModel(
            sound: Assets.sounds51,
            options: [
              Option(image: Assets.clothes55, isCorrect: false),
              Option(image: Assets.clothes51, isCorrect: true),
            ],
          ),
          QuestionsModel(
            sound: Assets.sounds52,
            options: [
              Option(image: Assets.clothes52, isCorrect: true),
              Option(image: Assets.clothes54, isCorrect: false),
            ],
          ),
        ],
      ),
      Session(
        title: 'الجلسة الثانية',
        sessionDetails: [
          SessionDetails(
            title: 'فستان',
            image: Assets.clothes54,
            sound: Assets.sounds54,
          ),
          SessionDetails(
            title: 'تيشيرت',
            image: Assets.clothes55,
            sound: Assets.sounds55,
          ),
          SessionDetails(
            title: 'جاكيت',
            image: Assets.clothes56,
            sound: Assets.sounds56,
          ),
        ],
        questions: [
          QuestionsModel(
            sound: Assets.sounds54,
            options: [
              Option(image: Assets.clothes54, isCorrect: true),
              Option(image: Assets.clothes51, isCorrect: false),
            ],
          ),
          QuestionsModel(
            sound: Assets.sounds55,
            options: [
              Option(image: Assets.clothes52, isCorrect: false),
              Option(image: Assets.clothes55, isCorrect: true),
            ],
          ),
          QuestionsModel(
            sound: Assets.sounds56,
            options: [
              Option(image: Assets.clothes58, isCorrect: false),
              Option(image: Assets.clothes56, isCorrect: true),
            ],
          ),
        ],
      ),
      Session(
        title: 'الجلسة الثالثة',
        sessionDetails: [
          SessionDetails(
            title: 'فنلة',
            image: Assets.clothes57,
            sound: Assets.sounds57,
          ),
          SessionDetails(
            title: 'قميص',
            image: Assets.clothes58,
            sound: Assets.sounds58,
          ),
          SessionDetails(
            title: 'كوتشي',
            image: Assets.clothes59,
            sound: Assets.sounds59,
          ),
          SessionDetails(
            title: 'شراب',
            image: Assets.clothes60,
            sound: Assets.sounds60,
          ),
        ],
        questions: [
          QuestionsModel(
            sound: Assets.sounds60,
            options: [
              Option(image: Assets.clothes53, isCorrect: false),
              Option(image: Assets.clothes60, isCorrect: true),
            ],
          ),
          QuestionsModel(
            sound: Assets.sounds58,
            options: [
              Option(image: Assets.clothes58, isCorrect: true),
              Option(image: Assets.clothes52, isCorrect: false),
            ],
          ),
          QuestionsModel(
            sound: Assets.sounds59,
            options: [
              Option(image: Assets.clothes60, isCorrect: false),
              Option(image: Assets.clothes59, isCorrect: true),
            ],
          ),
          QuestionsModel(
            sound: Assets.sounds57,
            options: [
              Option(image: Assets.clothes57, isCorrect: true),
              Option(image: Assets.clothes55, isCorrect: false),
            ],
          ),
        ],
      ),    ],
  ),
  CategoryModel(
    image: Assets.categoriesCategory7,
    title: 'الموصلات',
    sessions: [
      Session(
        title: 'الجلسة الاولي',
        sessionDetails: [
          SessionDetails(
            title: 'عربية',
            image: Assets.transportation61,
            sound: Assets.sounds61,
          ),
          SessionDetails(
            title: 'قطار',
            image: Assets.transportation62,
            sound: Assets.sounds62,
          ),
          SessionDetails(
            title: 'طيارة',
            image: Assets.transportation63,
            sound: Assets.sounds63,
          ),
        ],
        questions: [
          QuestionsModel(
            sound: Assets.sounds63,
            options: [
              Option(image: Assets.transportation63, isCorrect: true),
              Option(image: Assets.transportation68, isCorrect: false),
            ],
          ),
          QuestionsModel(
            sound: Assets.sounds61,
            options: [
              Option(image: Assets.transportation65, isCorrect: false),
              Option(image: Assets.transportation61, isCorrect: true),
            ],
          ),
          QuestionsModel(
            sound: Assets.sounds62,
            options: [
              Option(image: Assets.transportation62, isCorrect: true),
              Option(image: Assets.transportation64, isCorrect: false),
            ],
          ),
        ],
      ),
      Session(
        title: 'الجلسة الثانية',
        sessionDetails: [
          SessionDetails(
            title: 'عجلة',
            image: Assets.transportation64,
            sound: Assets.sounds64,
          ),
          SessionDetails(
            title: 'مركب',
            image: Assets.transportation65,
            sound: Assets.sounds65,
          ),
          SessionDetails(
            title: 'سفينة',
            image: Assets.transportation66,
            sound: Assets.sounds66,
          ),
        ],
        questions: [
          QuestionsModel(
            sound: Assets.sounds64,
            options: [
              Option(image: Assets.transportation64, isCorrect: true),
              Option(image: Assets.transportation61, isCorrect: false),
            ],
          ),
          QuestionsModel(
            sound: Assets.sounds65,
            options: [
              Option(image: Assets.transportation62, isCorrect: false),
              Option(image: Assets.transportation65, isCorrect: true),
            ],
          ),
          QuestionsModel(
            sound: Assets.sounds66,
            options: [
              Option(image: Assets.transportation68, isCorrect: false),
              Option(image: Assets.transportation66, isCorrect: true),
            ],
          ),
        ],
      ),
      Session(
        title: 'الجلسة الثالثة',
        sessionDetails: [
          SessionDetails(
            title: 'موتسيكل',
            image: Assets.transportation67,
            sound: Assets.sounds67,
          ),
          SessionDetails(
            title: 'اتوبيس',
            image: Assets.transportation68,
            sound: Assets.sounds68,
          ),
          SessionDetails(
            title: 'توكتوك',
            image: Assets.transportation69,
            sound: Assets.sounds69,
          ),
          SessionDetails(
            title: 'ميكروباص',
            image: Assets.transportation70,
            sound: Assets.sounds70,
          ),
        ],
        questions: [
          QuestionsModel(
            sound: Assets.sounds70,
            options: [
              Option(image: Assets.transportation63, isCorrect: false),
              Option(image: Assets.transportation70, isCorrect: true),
            ],
          ),
          QuestionsModel(
            sound: Assets.sounds68,
            options: [
              Option(image: Assets.transportation68, isCorrect: true),
              Option(image: Assets.transportation62, isCorrect: false),
            ],
          ),
          QuestionsModel(
            sound: Assets.sounds69,
            options: [
              Option(image: Assets.transportation70, isCorrect: false),
              Option(image: Assets.transportation69, isCorrect: true),
            ],
          ),
          QuestionsModel(
            sound: Assets.sounds67,
            options: [
              Option(image: Assets.transportation67, isCorrect: true),
              Option(image: Assets.transportation65, isCorrect: false),
            ],
          ),
        ],
      ),    ],
  ),
  CategoryModel(
    image: Assets.categoriesCategory8,
    title: 'خضروات',
    sessions: [
      Session(
        title: 'الجلسة الاولي',
        sessionDetails: [
          SessionDetails(
            title: 'خيار',
            image: Assets.vegetables71,
            sound: Assets.sounds71,
          ),
          SessionDetails(
            title: 'طماطم',
            image: Assets.vegetables72,
            sound: Assets.sounds72,
          ),
          SessionDetails(
            title: 'بصل',
            image: Assets.vegetables73,
            sound: Assets.sounds73,
          ),
        ],
        questions: [
          QuestionsModel(
            sound: Assets.sounds73,
            options: [
              Option(image: Assets.vegetables73, isCorrect: true),
              Option(image: Assets.vegetables78, isCorrect: false),
            ],
          ),
          QuestionsModel(
            sound: Assets.sounds71,
            options: [
              Option(image: Assets.vegetables75, isCorrect: false),
              Option(image: Assets.vegetables71, isCorrect: true),
            ],
          ),
          QuestionsModel(
            sound: Assets.sounds72,
            options: [
              Option(image: Assets.vegetables72, isCorrect: true),
              Option(image: Assets.vegetables74, isCorrect: false),
            ],
          ),
        ],
      ),
      Session(
        title: 'الجلسة الثانية',
        sessionDetails: [
          SessionDetails(
            title: 'ثوم',
            image: Assets.vegetables74,
            sound: Assets.sounds74,
          ),
          SessionDetails(
            title: 'بطاطس',
            image: Assets.vegetables75,
            sound: Assets.sounds75,
          ),
          SessionDetails(
            title: 'فلفل',
            image: Assets.vegetables76,
            sound: Assets.sounds76,
          ),
        ],
        questions: [
          QuestionsModel(
            sound: Assets.sounds74,
            options: [
              Option(image: Assets.vegetables74, isCorrect: true),
              Option(image: Assets.vegetables71, isCorrect: false),
            ],
          ),
          QuestionsModel(
            sound: Assets.sounds75,
            options: [
              Option(image: Assets.vegetables72, isCorrect: false),
              Option(image: Assets.vegetables75, isCorrect: true),
            ],
          ),
          QuestionsModel(
            sound: Assets.sounds76,
            options: [
              Option(image: Assets.vegetables78, isCorrect: false),
              Option(image: Assets.vegetables76, isCorrect: true),
            ],
          ),
        ],
      ),
      Session(
        title: 'الجلسة الثالثة',
        sessionDetails: [
          SessionDetails(
            title: 'بسلة',
            image: Assets.vegetables77,
            sound: Assets.sounds77,
          ),
          SessionDetails(
            title: 'كوسة',
            image: Assets.vegetables78,
            sound: Assets.sounds78,
          ),
          SessionDetails(
            title: 'جزر',
            image: Assets.vegetables79,
            sound: Assets.sounds79,
          ),
          SessionDetails(
            title: 'بامية',
            image: Assets.vegetables80,
            sound: Assets.sounds80,
          ),
        ],
        questions: [
          QuestionsModel(
            sound: Assets.sounds80,
            options: [
              Option(image: Assets.vegetables73, isCorrect: false),
              Option(image: Assets.vegetables80, isCorrect: true),
            ],
          ),
          QuestionsModel(
            sound: Assets.sounds78,
            options: [
              Option(image: Assets.vegetables78, isCorrect: true),
              Option(image: Assets.vegetables72, isCorrect: false),
            ],
          ),
          QuestionsModel(
            sound: Assets.sounds79,
            options: [
              Option(image: Assets.vegetables80, isCorrect: false),
              Option(image: Assets.vegetables79, isCorrect: true),
            ],
          ),
          QuestionsModel(
            sound: Assets.sounds77,
            options: [
              Option(image: Assets.vegetables77, isCorrect: true),
              Option(image: Assets.vegetables75, isCorrect: false),
            ],
          ),
        ],
      ),    ],
  ),
  CategoryModel(
    image: Assets.categoriesCategory9,
    title: 'حيوانات المزرعة',
    sessions: [
      Session(
        title: 'الجلسة الاولي',
        sessionDetails: [
          SessionDetails(
            title: 'كلب',
            image: Assets.farmAnimals81,
            sound: Assets.sounds81,
          ),
          SessionDetails(
            title: 'قطة',
            image: Assets.farmAnimals82,
            sound: Assets.sounds82,
          ),
          SessionDetails(
            title: 'حمار',
            image: Assets.farmAnimals83,
            sound: Assets.sounds83,
          ),
        ],
        questions: [
          QuestionsModel(
            sound: Assets.sounds83,
            options: [
              Option(image: Assets.farmAnimals83, isCorrect: true),
              Option(image: Assets.farmAnimals88, isCorrect: false),
            ],
          ),
          QuestionsModel(
            sound: Assets.sounds81,
            options: [
              Option(image: Assets.farmAnimals85, isCorrect: false),
              Option(image: Assets.farmAnimals81, isCorrect: true),
            ],
          ),
          QuestionsModel(
            sound: Assets.sounds82,
            options: [
              Option(image: Assets.farmAnimals82, isCorrect: true),
              Option(image: Assets.farmAnimals84, isCorrect: false),
            ],
          ),
        ],
      ),
      Session(
        title: 'الجلسة الثانية',
        sessionDetails: [
          SessionDetails(
            title: 'حصان',
            image: Assets.farmAnimals84,
            sound: Assets.sounds84,
          ),
          SessionDetails(
            title: 'خروف',
            image: Assets.farmAnimals85,
            sound: Assets.sounds85,
          ),
          SessionDetails(
            title: 'بقرة',
            image: Assets.farmAnimals86,
            sound: Assets.sounds86,
          ),
        ],
        questions: [
          QuestionsModel(
            sound: Assets.sounds84,
            options: [
              Option(image: Assets.farmAnimals84, isCorrect: true),
              Option(image: Assets.farmAnimals81, isCorrect: false),
            ],
          ),
          QuestionsModel(
            sound: Assets.sounds85,
            options: [
              Option(image: Assets.farmAnimals82, isCorrect: false),
              Option(image: Assets.farmAnimals85, isCorrect: true),
            ],
          ),
          QuestionsModel(
            sound: Assets.sounds86,
            options: [
              Option(image: Assets.farmAnimals88, isCorrect: false),
              Option(image: Assets.farmAnimals86, isCorrect: true),
            ],
          ),
        ],
      ),
      Session(
        title: 'الجلسة الثالثة',
        sessionDetails: [
          SessionDetails(
            title: 'معزة',
            image: Assets.farmAnimals87,
            sound: Assets.sounds87,
          ),
          SessionDetails(
            title: 'جاموسة',
            image: Assets.farmAnimals88,
            sound: Assets.sounds88,
          ),
          SessionDetails(
            title: 'أرنب',
            image: Assets.farmAnimals89,
            sound: Assets.sounds89,
          ),
          SessionDetails(
            title: 'جمل',
            image: Assets.farmAnimals90,
            sound: Assets.sounds90,
          ),
        ],
        questions: [
          QuestionsModel(
            sound: Assets.sounds90,
            options: [
              Option(image: Assets.farmAnimals83, isCorrect: false),
              Option(image: Assets.farmAnimals90, isCorrect: true),
            ],
          ),
          QuestionsModel(
            sound: Assets.sounds88,
            options: [
              Option(image: Assets.farmAnimals88, isCorrect: true),
              Option(image: Assets.farmAnimals82, isCorrect: false),
            ],
          ),
          QuestionsModel(
            sound: Assets.sounds89,
            options: [
              Option(image: Assets.farmAnimals90, isCorrect: false),
              Option(image: Assets.farmAnimals89, isCorrect: true),
            ],
          ),
          QuestionsModel(
            sound: Assets.sounds87,
            options: [
              Option(image: Assets.farmAnimals87, isCorrect: true),
              Option(image: Assets.farmAnimals85, isCorrect: false),
            ],
          ),
        ],
      ),    ],
  ),
  CategoryModel(
    image: Assets.categoriesCategory10,
    title: 'فواكه',
    sessions: [
      Session(
        title: 'الجلسة الاولي',
        sessionDetails: [
          SessionDetails(
            title: 'تفاح',
            image: Assets.fruits91,
            sound: Assets.sounds91,
          ),
          SessionDetails(
            title: 'موز',
            image: Assets.fruits92,
            sound: Assets.sounds92,
          ),
          SessionDetails(
            title: 'بطيخ',
            image: Assets.fruits93,
            sound: Assets.sounds93,
          ),
        ],
        questions: [
          QuestionsModel(
            sound: Assets.sounds93,
            options: [
              Option(image: Assets.fruits93, isCorrect: true),
              Option(image: Assets.fruits98, isCorrect: false),
            ],
          ),
          QuestionsModel(
            sound: Assets.sounds91,
            options: [
              Option(image: Assets.fruits95, isCorrect: false),
              Option(image: Assets.fruits91, isCorrect: true),
            ],
          ),
          QuestionsModel(
            sound: Assets.sounds92,
            options: [
              Option(image: Assets.fruits92, isCorrect: true),
              Option(image: Assets.fruits94, isCorrect: false),
            ],
          ),
        ],
      ),
      Session(
        title: 'الجلسة الثانية',
        sessionDetails: [
          SessionDetails(
            title: 'عنب',
            image: Assets.fruits94,
            sound: Assets.sounds94,
          ),
          SessionDetails(
            title: 'برتقال',
            image: Assets.fruits95,
            sound: Assets.sounds95,
          ),
          SessionDetails(
            title: 'فراولة',
            image: Assets.fruits96,
            sound: Assets.sounds96,
          ),
        ],
        questions: [
          QuestionsModel(
            sound: Assets.sounds94,
            options: [
              Option(image: Assets.fruits94, isCorrect: true),
              Option(image: Assets.fruits91, isCorrect: false),
            ],
          ),
          QuestionsModel(
            sound: Assets.sounds95,
            options: [
              Option(image: Assets.fruits92, isCorrect: false),
              Option(image: Assets.fruits95, isCorrect: true),
            ],
          ),
          QuestionsModel(
            sound: Assets.sounds96,
            options: [
              Option(image: Assets.fruits98, isCorrect: false),
              Option(image: Assets.fruits96, isCorrect: true),
            ],
          ),
        ],
      ),
      Session(
        title: 'الجلسة الثالثة',
        sessionDetails: [
          SessionDetails(
            title: 'تين',
            image: Assets.fruits97,
            sound: Assets.sounds97,
          ),
          SessionDetails(
            title: 'خوخ',
            image: Assets.fruits98,
            sound: Assets.sounds98,
          ),
          SessionDetails(
            title: 'مانجا',
            image: Assets.fruits99,
            sound: Assets.sounds99,
          ),
          SessionDetails(
            title: 'رمان',
            image: Assets.fruits100,
            sound: Assets.sounds100,
          ),
        ],
        questions: [
          QuestionsModel(
            sound: Assets.sounds100,
            options: [
              Option(image: Assets.fruits93, isCorrect: false),
              Option(image: Assets.fruits100, isCorrect: true),
            ],
          ),
          QuestionsModel(
            sound: Assets.sounds98,
            options: [
              Option(image: Assets.fruits98, isCorrect: true),
              Option(image: Assets.fruits92, isCorrect: false),
            ],
          ),
          QuestionsModel(
            sound: Assets.sounds99,
            options: [
              Option(image: Assets.fruits100, isCorrect: false),
              Option(image: Assets.fruits99, isCorrect: true),
            ],
          ),
          QuestionsModel(
            sound: Assets.sounds97,
            options: [
              Option(image: Assets.fruits97, isCorrect: true),
              Option(image: Assets.fruits95, isCorrect: false),
            ],
          ),
        ],
      ),    ],
  ),
  CategoryModel(
    image: Assets.categoriesCategory11,
    title: 'الاماكن',
    sessions: [
      Session(
        title: 'الجلسة الاولي',
        sessionDetails: [
          SessionDetails(
            title: 'بيت',
            image: Assets.places101,
            sound: Assets.sounds101,
          ),
          SessionDetails(
            title: 'شارع',
            image: Assets.places102,
            sound: Assets.sounds102,
          ),
          SessionDetails(
            title: 'سوربر ماركت',
            image: Assets.places103,
            sound: Assets.sounds103,
          ),
        ],
        questions: [
          QuestionsModel(
            sound: Assets.sounds103,
            options: [
              Option(image: Assets.places103, isCorrect: true),
              Option(image: Assets.places108, isCorrect: false),
            ],
          ),
          QuestionsModel(
            sound: Assets.sounds101,
            options: [
              Option(image: Assets.places105, isCorrect: false),
              Option(image: Assets.places101, isCorrect: true),
            ],
          ),
          QuestionsModel(
            sound: Assets.sounds102,
            options: [
              Option(image: Assets.places102, isCorrect: true),
              Option(image: Assets.places104, isCorrect: false),
            ],
          ),
        ],
      ),
      Session(
        title: 'الجلسة الثانية',
        sessionDetails: [
          SessionDetails(
            title: 'جامع',
            image: Assets.places104,
            sound: Assets.sounds104,
          ),
          SessionDetails(
            title: 'كنيسة',
            image: Assets.places105,
            sound: Assets.sounds105,
          ),
          SessionDetails(
            title: 'مطعم',
            image: Assets.places106,
            sound: Assets.sounds106,
          ),
        ],
        questions: [
          QuestionsModel(
            sound: Assets.sounds104,
            options: [
              Option(image: Assets.places104, isCorrect: true),
              Option(image: Assets.places101, isCorrect: false),
            ],
          ),
          QuestionsModel(
            sound: Assets.sounds105,
            options: [
              Option(image: Assets.places102, isCorrect: false),
              Option(image: Assets.places105, isCorrect: true),
            ],
          ),
          QuestionsModel(
            sound: Assets.sounds106,
            options: [
              Option(image: Assets.places108, isCorrect: false),
              Option(image: Assets.places106, isCorrect: true),
            ],
          ),
        ],
      ),
      Session(
        title: 'الجلسة الثالثة',
        sessionDetails: [
          SessionDetails(
            title: 'صيدلية',
            image: Assets.places107,
            sound: Assets.sounds107,
          ),
          SessionDetails(
            title: 'مستشفي',
            image: Assets.places108,
            sound: Assets.sounds108,
          ),
          SessionDetails(
            title: 'ملاهي',
            image: Assets.places109,
            sound: Assets.sounds109,
          ),
          SessionDetails(
            title: 'حمام سباحة',
            image: Assets.places110,
            sound: Assets.sounds110,
          ),
        ],
        questions: [
          QuestionsModel(
            sound: Assets.sounds110,
            options: [
              Option(image: Assets.places103, isCorrect: false),
              Option(image: Assets.places110, isCorrect: true),
            ],
          ),
          QuestionsModel(
            sound: Assets.sounds108,
            options: [
              Option(image: Assets.places108, isCorrect: true),
              Option(image: Assets.places102, isCorrect: false),
            ],
          ),
          QuestionsModel(
            sound: Assets.sounds109,
            options: [
              Option(image: Assets.places110, isCorrect: false),
              Option(image: Assets.places109, isCorrect: true),
            ],
          ),
          QuestionsModel(
            sound: Assets.sounds107,
            options: [
              Option(image: Assets.places107, isCorrect: true),
              Option(image: Assets.places105, isCorrect: false),
            ],
          ),
        ],
      ),    ],
  ),
  CategoryModel(
    image: Assets.categoriesCategory12,
    title: 'الطيور',
    sessions: [
      Session(
        title: 'الجلسة الاولي',
        sessionDetails: [
          SessionDetails(
            title: 'عصفورة',
            image: Assets.birds111,
            sound: Assets.sounds111,
          ),
          SessionDetails(
            title: 'فرخة',
            image: Assets.birds112,
            sound: Assets.sounds112,
          ),
          SessionDetails(
            title: 'كتكوت',
            image: Assets.birds113,
            sound: Assets.sounds113,
          ),
        ],
        questions: [
          QuestionsModel(
            sound: Assets.sounds113,
            options: [
              Option(image: Assets.birds113, isCorrect: true),
              Option(image: Assets.birds118, isCorrect: false),
            ],
          ),
          QuestionsModel(
            sound: Assets.sounds111,
            options: [
              Option(image: Assets.birds115, isCorrect: false),
              Option(image: Assets.birds111, isCorrect: true),
            ],
          ),
          QuestionsModel(
            sound: Assets.sounds112,
            options: [
              Option(image: Assets.birds112, isCorrect: true),
              Option(image: Assets.birds114, isCorrect: false),
            ],
          ),
        ],
      ),
      Session(
        title: 'الجلسة الثانية',
        sessionDetails: [
          SessionDetails(
            title: 'حمامة',
            image: Assets.birds114,
            sound: Assets.sounds114,
          ),
          SessionDetails(
            title: 'بطة',
            image: Assets.birds115,
            sound: Assets.sounds115,
          ),
          SessionDetails(
            title: 'ديك',
            image: Assets.birds116,
            sound: Assets.sounds116,
          ),
        ],
        questions: [
          QuestionsModel(
            sound: Assets.sounds114,
            options: [
              Option(image: Assets.birds114, isCorrect: true),
              Option(image: Assets.birds111, isCorrect: false),
            ],
          ),
          QuestionsModel(
            sound: Assets.sounds115,
            options: [
              Option(image: Assets.birds112, isCorrect: false),
              Option(image: Assets.birds115, isCorrect: true),
            ],
          ),
          QuestionsModel(
            sound: Assets.sounds116,
            options: [
              Option(image: Assets.birds118, isCorrect: false),
              Option(image: Assets.birds116, isCorrect: true),
            ],
          ),
        ],
      ),
      Session(
        title: 'الجلسة الثالثة',
        sessionDetails: [
          SessionDetails(
            title: 'ابو قردان',
            image: Assets.birds117,
            sound: Assets.sounds117,
          ),
          SessionDetails(
            title: 'ببفاء',
            image: Assets.birds118,
            sound: Assets.sounds118,
          ),
          SessionDetails(
            title: 'ديك رومي',
            image: Assets.birds119,
            sound: Assets.sounds119,
          ),
          SessionDetails(
            title: 'غراب',
            image: Assets.birds120,
            sound: Assets.sounds120,
          ),
        ],
        questions: [
          QuestionsModel(
            sound: Assets.sounds120,
            options: [
              Option(image: Assets.birds113, isCorrect: false),
              Option(image: Assets.birds120, isCorrect: true),
            ],
          ),
          QuestionsModel(
            sound: Assets.sounds118,
            options: [
              Option(image: Assets.birds118, isCorrect: true),
              Option(image: Assets.birds112, isCorrect: false),
            ],
          ),
          QuestionsModel(
            sound: Assets.sounds119,
            options: [
              Option(image: Assets.birds120, isCorrect: false),
              Option(image: Assets.birds119, isCorrect: true),
            ],
          ),
          QuestionsModel(
            sound: Assets.sounds117,
            options: [
              Option(image: Assets.birds117, isCorrect: true),
              Option(image: Assets.birds115, isCorrect: false),
            ],
          ),
        ],
      ),    ],
  ),
  CategoryModel(
    image: Assets.categoriesCategory13,
    title: 'حيوانات الغابة',
    sessions: [
      Session(
        title: 'الجلسة الاولي',
        sessionDetails: [
          SessionDetails(
            title: 'فيل',
            image: Assets.jungleAnimals121,
            sound: Assets.sounds121,
          ),
          SessionDetails(
            title: 'أسد',
            image: Assets.jungleAnimals122,
            sound: Assets.sounds122,
          ),
          SessionDetails(
            title: 'نمر',
            image: Assets.jungleAnimals123,
            sound: Assets.sounds123,
          ),
        ],
        questions: [
          QuestionsModel(
            sound: Assets.sounds123,
            options: [
              Option(image: Assets.jungleAnimals123, isCorrect: true),
              Option(image: Assets.jungleAnimals128, isCorrect: false),
            ],
          ),
          QuestionsModel(
            sound: Assets.sounds121,
            options: [
              Option(image: Assets.jungleAnimals125, isCorrect: false),
              Option(image: Assets.jungleAnimals121, isCorrect: true),
            ],
          ),
          QuestionsModel(
            sound: Assets.sounds122,
            options: [
              Option(image: Assets.jungleAnimals122, isCorrect: true),
              Option(image: Assets.jungleAnimals124, isCorrect: false),
            ],
          ),
        ],
      ),
      Session(
        title: 'الجلسة الثانية',
        sessionDetails: [
          SessionDetails(
            title: 'زرافة',
            image: Assets.jungleAnimals124,
            sound: Assets.sounds124,
          ),
          SessionDetails(
            title: 'دب',
            image: Assets.jungleAnimals125,
            sound: Assets.sounds125,
          ),
          SessionDetails(
            title: 'قرد',
            image: Assets.jungleAnimals126,
            sound: Assets.sounds126,
          ),
        ],
        questions: [
          QuestionsModel(
            sound: Assets.sounds124,
            options: [
              Option(image: Assets.jungleAnimals124, isCorrect: true),
              Option(image: Assets.jungleAnimals121, isCorrect: false),
            ],
          ),
          QuestionsModel(
            sound: Assets.sounds125,
            options: [
              Option(image: Assets.jungleAnimals122, isCorrect: false),
              Option(image: Assets.jungleAnimals125, isCorrect: true),
            ],
          ),
          QuestionsModel(
            sound: Assets.sounds126,
            options: [
              Option(image: Assets.jungleAnimals128, isCorrect: false),
              Option(image: Assets.jungleAnimals126, isCorrect: true),
            ],
          ),
        ],
      ),
      Session(
        title: 'الجلسة الثالثة',
        sessionDetails: [
          SessionDetails(
            title: 'فرس النهر',
            image: Assets.jungleAnimals127,
            sound: Assets.sounds127,
          ),
          SessionDetails(
            title: 'باندا',
            image: Assets.jungleAnimals128,
            sound: Assets.sounds128,
          ),
          SessionDetails(
            title: 'ثعلب',
            image: Assets.jungleAnimals129,
            sound: Assets.sounds129,
          ),
          SessionDetails(
            title: 'ضبع',
            image: Assets.jungleAnimals130,
            sound: Assets.sounds130,
          ),
        ],
        questions: [
          QuestionsModel(
            sound: Assets.sounds130,
            options: [
              Option(image: Assets.jungleAnimals123, isCorrect: false),
              Option(image: Assets.jungleAnimals130, isCorrect: true),
            ],
          ),
          QuestionsModel(
            sound: Assets.sounds128,
            options: [
              Option(image: Assets.jungleAnimals128, isCorrect: true),
              Option(image: Assets.jungleAnimals122, isCorrect: false),
            ],
          ),
          QuestionsModel(
            sound: Assets.sounds129,
            options: [
              Option(image: Assets.jungleAnimals130, isCorrect: false),
              Option(image: Assets.jungleAnimals129, isCorrect: true),
            ],
          ),
          QuestionsModel(
            sound: Assets.sounds127,
            options: [
              Option(image: Assets.jungleAnimals127, isCorrect: true),
              Option(image: Assets.jungleAnimals125, isCorrect: false),
            ],
          ),
        ],
      ),    ],
  ),
  CategoryModel(
    image: Assets.categoriesCategory14,
    title: 'الحشرات',
    sessions: [
      Session(
        title: 'الجلسة الاولي',
        sessionDetails: [
          SessionDetails(
            title: 'نملة',
            image: Assets.insects131,
            sound: Assets.sounds131,
          ),
          SessionDetails(
            title: 'نموسة',
            image: Assets.insects132,
            sound: Assets.sounds132,
          ),
          SessionDetails(
            title: 'ذبابة',
            image: Assets.insects133,
            sound: Assets.sounds133,
          ),
        ],
        questions: [
          QuestionsModel(
            sound: Assets.sounds133,
            options: [
              Option(image: Assets.insects133, isCorrect: true),
              Option(image: Assets.insects136, isCorrect: false),
            ],
          ),
          QuestionsModel(
            sound: Assets.sounds131,
            options: [
              Option(image: Assets.insects135, isCorrect: false),
              Option(image: Assets.insects131, isCorrect: true),
            ],
          ),
          QuestionsModel(
            sound: Assets.sounds132,
            options: [
              Option(image: Assets.insects132, isCorrect: true),
              Option(image: Assets.insects134, isCorrect: false),
            ],
          ),
        ],
      ),
      Session(
        title: 'الجلسة الثانية',
        sessionDetails: [
          SessionDetails(
            title: 'فراشة',
            image: Assets.insects134,
            sound: Assets.sounds134,
          ),
          SessionDetails(
            title: 'نحلة',
            image: Assets.insects135,
            sound: Assets.sounds135,
          ),
          SessionDetails(
            title: 'صرصار',
            image: Assets.insects136,
            sound: Assets.sounds136,
          ),
          SessionDetails(
            title: 'عنكبوت',
            image: Assets.insects137,
            sound: Assets.sounds137,
          ),
        ],
        questions: [
          QuestionsModel(
            sound: Assets.sounds137,
            options: [
              Option(image: Assets.insects132, isCorrect: false),
              Option(image: Assets.insects137, isCorrect: true),
            ],
          ),
          QuestionsModel(
            sound: Assets.sounds134,
            options: [
              Option(image: Assets.insects134, isCorrect: true),
              Option(image: Assets.insects131, isCorrect: false),
            ],
          ),
          QuestionsModel(
            sound: Assets.sounds135,
            options: [
              Option(image: Assets.insects137, isCorrect: false),
              Option(image: Assets.insects135, isCorrect: true),
            ],
          ),
          QuestionsModel(
            sound: Assets.sounds136,
            options: [
              Option(image: Assets.insects136, isCorrect: true),
              Option(image: Assets.insects132, isCorrect: false),
            ],
          ),
        ],
      ),    ],
  ),
  CategoryModel(
    image: Assets.categoriesCategory15,
    title: 'النباتات',
    sessions: [
      Session(
        title: 'الجلسة الاولي',
        sessionDetails: [
          SessionDetails(
            title: 'وردة',
            image: Assets.plants138,
            sound: Assets.sounds138,
          ),
          SessionDetails(
            title: 'شجرة',
            image: Assets.plants139,
            sound: Assets.sounds139,
          ),
          SessionDetails(
            title: 'نخلة',
            image: Assets.plants140,
            sound: Assets.sounds140,
          ),
          SessionDetails(
            title: 'صبار',
            image: Assets.plants141,
            sound: Assets.sounds141,
          ),
        ],
        questions: [
          QuestionsModel(
            sound: Assets.sounds141,
            options: [
              Option(image: Assets.plants139, isCorrect: false),
              Option(image: Assets.plants141, isCorrect: true),
            ],
          ),
          QuestionsModel(
            sound: Assets.sounds138,
            options: [
              Option(image: Assets.plants138, isCorrect: true),
              Option(image: Assets.plants140, isCorrect: false),
            ],
          ),
          QuestionsModel(
            sound: Assets.sounds139,
            options: [
              Option(image: Assets.plants141, isCorrect: false),
              Option(image: Assets.plants139, isCorrect: true),
            ],
          ),
          QuestionsModel(
            sound: Assets.sounds140,
            options: [
              Option(image: Assets.plants140, isCorrect: true),
              Option(image: Assets.plants138, isCorrect: false),
            ],
          ),
        ],
      ),    ],
  ),
];
