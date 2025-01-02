/// Define names by locale, including middle names and gender.
const Map<String, Map<String, List<String>>> localizedNames = {
  'en': {
    'male': ['John', 'Alex', 'Chris', 'James', 'David'],
    'female': ['Jane', 'Emily', 'Mary', 'Lisa', 'Sophia'],
    'middleNames': ['Michael ', 'Lee ', 'Taylor ', 'Jordan ', 'Morgan '],
    'lastNames': ['Doe', 'Smith', 'Johnson', 'Brown', 'Taylor'],
  },
  'vi': {
    'male': ['Nguyễn Văn', 'Trần Hữu', 'Lê Minh', 'Phạm Anh', 'Hoàng Thanh'],
    'female': [
      'Nguyễn Thị',
      'Trần Minh',
      'Lê Bích',
      'Phạm Thảo',
      'Hoàng Nhung'
    ],
    'middleNames': [''],
    'lastNames': ['Anh', 'Bảo', 'Chi', 'Dương', 'Hà'],
  },
  'ja': {
    'male': ['Hiroshi', 'Akira', 'Takumi', 'Yusuke', 'Ryu'],
    'female': ['Sakura', 'Yuki', 'Aya', 'Emi', 'Miku'],
    'middleNames': [''],
    'lastNames': ['Tanaka', 'Yamamoto', 'Kobayashi', 'Nakamura', 'Matsumoto'],
  },
  'zh': {
    'male': ['伟', '敏', '强', '磊', '军'],
    'female': ['芳', '梅', '娜', '静', '燕'],
    'middleNames': [''],
    'lastNames': ['王', '李', '张', '刘', '陈'],
  },
  'hi': {
    'male': ['Aarav', 'Kabir', 'Rohan', 'Ishaan', 'Arjun'],
    'female': ['Ishita', 'Ananya', 'Rani', 'Priya', 'Kavya'],
    'middleNames': [''],
    'lastNames': ['Sharma', 'Gupta', 'Patel', 'Khan', 'Das'],
  },
};
