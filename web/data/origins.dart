import 'sigil.dart';
import 'stats.dart';
import 'actions.dart';

Map<String, Sigil> origins = {
  "flash_construct": Sigil([
    // Const ++ Str + myst - per - char -
    Modifier(PrimaryStat.mysticism, 4, 4),
    Modifier(PrimaryStat.strength, 6, 8),
    Modifier(PrimaryStat.speed, 5, 6),
    Modifier(PrimaryStat.perception, 4, 4),
    Modifier(PrimaryStat.charisma, 4, 4),
    Modifier(PrimaryStat.constitution, 6, 10)
  ], [], []),
  "blight_weaver": Sigil([
    Modifier(PrimaryStat.mysticism, 7, 8),
    Modifier(PrimaryStat.strength, 5, 6),
    Modifier(PrimaryStat.speed, 4, 4),
    Modifier(PrimaryStat.perception, 7, 8),
    Modifier(PrimaryStat.charisma, 4, 4),
    Modifier(PrimaryStat.constitution, 3, 3)
  ], [], [

    ]
  ),
  "vampire": Sigil([
    Modifier(PrimaryStat.mysticism, 7, 8),
    Modifier(PrimaryStat.strength, 6, 8),
    Modifier(PrimaryStat.speed, 5, 6),
    Modifier(PrimaryStat.perception, 6, 7),
    Modifier(PrimaryStat.charisma, 7, 8),
    Modifier(PrimaryStat.constitution, 4, 4)
  ], [], [

    ]
  ),
  "witch": Sigil([
    Modifier(PrimaryStat.mysticism, 7, 8),
    Modifier(PrimaryStat.strength, 6, 8),
    Modifier(PrimaryStat.speed, 5, 6),
    Modifier(PrimaryStat.perception, 7, 8),
    Modifier(PrimaryStat.charisma, 5, 6),
    Modifier(PrimaryStat.constitution, 4, 4)
  ], [], [

    ]
  ),
  "ferathrope": Sigil([
    Modifier(PrimaryStat.mysticism, 4, 4),
    Modifier(PrimaryStat.strength, 6, 8),
    Modifier(PrimaryStat.speed, 8, 8),
    Modifier(PrimaryStat.perception, 7, 8),
    Modifier(PrimaryStat.charisma, 4, 4),
    Modifier(PrimaryStat.constitution, 7, 8)
  ], [], [

    ]
  ),
  "": Sigil([
    Modifier(PrimaryStat.mysticism, 4, 4),
    Modifier(PrimaryStat.strength, 6, 8),
    Modifier(PrimaryStat.speed, 8, 8),
    Modifier(PrimaryStat.perception, 7, 8),
    Modifier(PrimaryStat.charisma, 4, 4),
    Modifier(PrimaryStat.constitution, 7, 8)
  ], [], [

    ]
  )
};
