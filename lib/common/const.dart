const applicationName = 'Fetion';
const applicationVersion = '1.0.0.1';
const userId = "95t37897vjco6jnn9379345tptevyd";
const settingId = '22sad1df2rsdf1asda23';
const nickNamePrefix = "$applicationName User";
const defaultHostName = "Unknown";
const databaseName = 'Fetion';
const databaseVersion = 28;
// const FontFamilyName = 'AlibabaPuHuiTi';
const double secondBarWidth = 240;
const int defaultFontSize = 13;
const int displayMaxMessages = 99;
const int displayMinMessages = 0;
const double fontSizeMax = 18;
const double fontSizeMin = 10;
const String defaultMaskCode = '255.255.255.250';
const String openSourceAddr = 'https://github.com/wu-yiqiang/fetion';
const String issuesAddr = 'https://github.com/wu-yiqiang/fetion/issues';
const String defaultPassword = '1234@Abcd';
const int defaultPageSize = 330;
const int defaultPageNo = 1;
const List<String> defaultEmojis = [
  '😊',
  '😂',
  '😎',
  '😍',
  '🤔',
  '😉',
  '🥰',
  '🥳',
  '🤩',
  '😜',
  '😀',
  '😄',
  '😁',
  '😆',
  '😅',
  '😂',
  '🤣',
  '😊',
  '😇',
  '😘',
  '😗',
  '😙',
  '😚',
  '😋',
  '😝',
  '😛',
  '😜',
  '😝',
  '😞',
  '😟',
  '😠',
  '😡',
  '😢',
  '😧',
  '😨',
  '😩',
  '😪',
  '😬',
  '😭',
  '😰',
  '😱',
  '😳',
  '😵',
  '😶',
  '🤕',
  '🤧',
  '😷',
  '🤒',
  '🤕',
  '🤢',
  '🤮',
  '👋',
  '👍',
  '🤙',
  '✌️',
  '🫶',
  '🧑‍🦱',
  '🐶',
  '🐱',
  '🎉',
  '❤️',
  '🔥',
  '💡',
  '⚽',
  '🏀',
  '🏈',
  '⚾',
  '🏒',
];
class FileType {
  static const image = 'image';
  static const video = 'video';
  static const pdf = 'pdf';
  static const doc = 'doc';
  static const zip = 'zip';
  static const tar = 'tar';
  static const excel = 'excel';
  static const ppt = 'ppt';
  static const txt = 'txt';
  static const audio = 'audio';
}

const supportFileTypes = [
  {'type': FileType.image, 'extensions': ['jpg', 'jpeg', 'png', 'gif']},
  {'type': FileType.video, 'extensions': ['mp4', 'avi', 'mov']},
  {'type': FileType.pdf, 'extensions': ['pdf']},
  {'type': FileType.doc, 'extensions': ['docx', 'doc']},
  {
    'type': FileType.ppt,
    'extensions': ['ppt', 'pptx'],
  },
  {
    'type': FileType.zip,
    'extensions': ['zip'],
  },
  {
    'type': FileType.excel,
    'extensions': ['xls','xlsx'],
  },
   {
    'type': FileType.txt,
    'extensions': ['txt'],
  },
  {
    'type': FileType.audio,
    'extensions': ['mp3'],
  },
];
const defaultAvatar =
    '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';

class ChatType {
  static const me = 'me';
  static const other = 'other';
}

class LanguageMap {
  static const english = 'English';
  static const simpleChinese = '简体中文';
}

class LanguageEnTypeMap {
  static const type = 'en';
  static const country = 'US';
}

class LanguageZhTypeMap {
  static const type = 'zh';
  static const country = 'CN';
}

const languages = [
  {
    'value': LanguageMap.english,
    'type': LanguageEnTypeMap.type,
    'country': LanguageEnTypeMap.country,
  },
  {
    'value': LanguageMap.simpleChinese,
    'type': LanguageZhTypeMap.type,
    'country': LanguageZhTypeMap.country,
  },
];

class MsgType {
  static const text = 0;
  static const image = 1;
  static const file = 2;
}

class MsgStatus {
  static const sending = 0;
  static const sended = 1;
  static const unread = 2;
  static const readed = 3;
  static const withdraw = 4;
}

class ThemeModeMap {
  static const dark = 'dark';
  static const light = 'light';
}

const themeModes = [ThemeModeMap.light, ThemeModeMap.dark];

class NoticeType {
  static const addContact = 'add_contact';
  static const joinGroup = 'join_group';
}

class NoticeStatus {
  static const unread = 0;
  static const readed = 1;
  static const cleared = 2;
}
