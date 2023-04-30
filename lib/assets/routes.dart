import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:lugarlang/classes/route.dart';

final routes = [
  LugarLangRoute(
    name: 'Bo. Obrero Multi-purpose Gym - Rizal St. (Ma. Clara)',
    fare: 10.0,
    points: const [
      LatLng(10.6996223, 122.5877327),
      LatLng(10.6994032, 122.5875573),
      LatLng(10.6987536, 122.5870411),
      LatLng(10.6984374, 122.5867756),
      LatLng(10.6981033, 122.5864946),
      LatLng(10.697907, 122.586325),
      LatLng(10.697596, 122.5860655),
      LatLng(10.6973311, 122.5858402),
      LatLng(10.6968929, 122.5854868),
      LatLng(10.6965035, 122.5851663),
      LatLng(10.696035, 122.5847753),
      LatLng(10.6956496, 122.584424),
      LatLng(10.6959349, 122.5840692),
      LatLng(10.6960699, 122.583911),
      LatLng(10.6961991, 122.5837655),
      LatLng(10.6963737, 122.5836039),
      LatLng(10.6964877, 122.5835435),
      LatLng(10.6966379, 122.5834905),
      LatLng(10.6967802, 122.5834617),
      LatLng(10.6969107, 122.5834463),
      LatLng(10.6970853, 122.5834436),
      LatLng(10.697228, 122.583463),
      LatLng(10.697265, 122.583472),
      LatLng(10.697330, 122.583340),
      LatLng(10.697446, 122.583173),
      LatLng(10.697511, 122.583135),
      LatLng(10.697609, 122.583096),
      LatLng(10.697679, 122.583079),
      LatLng(10.697843, 122.583064),
      LatLng(10.698052, 122.583051),
      LatLng(10.698111, 122.583039),
      LatLng(10.6981613, 122.5830198),
      LatLng(10.6982002, 122.5829843),
      LatLng(10.6982245, 122.5829561),
      LatLng(10.6982496, 122.5829005),
      LatLng(10.6982614, 122.5828368),
      LatLng(10.6982641, 122.5827395),
      LatLng(10.698274, 122.5823828),
      LatLng(10.6982779, 122.5823372),
      LatLng(10.698297, 122.5822809),
      LatLng(10.6983109, 122.582254),
      LatLng(10.698324, 122.5822353),
      LatLng(10.6983352, 122.5822225),
      LatLng(10.6984393, 122.5821642),
      LatLng(10.698612, 122.5820864),
      LatLng(10.698973, 122.5819396),
      LatLng(10.6993552, 122.5817639),
      LatLng(10.6995562, 122.5816164),
      LatLng(10.6996135, 122.5815426),
      LatLng(10.6996418, 122.581438),
      LatLng(10.6996853, 122.5811342),
      LatLng(10.6997071, 122.5810343),
      LatLng(10.6997288, 122.5809813),
      LatLng(10.6997776, 122.5808828),
      LatLng(10.6998757, 122.5807487),
      LatLng(10.7000793, 122.5804791),
      LatLng(10.7003396, 122.5801217),
      LatLng(10.7004839, 122.5799279),
      LatLng(10.7007073, 122.579649),
      LatLng(10.7008891, 122.5794223),
      LatLng(10.7012858, 122.5789281),
      LatLng(10.7013187, 122.5788859),
      LatLng(10.701378, 122.578786),
      LatLng(10.7014241, 122.5786773),
      LatLng(10.7015045, 122.5784688),
      LatLng(10.7015566, 122.5782904),
      LatLng(10.7016508, 122.577986),
      LatLng(10.7017226, 122.5777647),
      LatLng(10.7017529, 122.577589),
      LatLng(10.7017859, 122.5769037),
      LatLng(10.7018096, 122.5762291),
      LatLng(10.7018175, 122.5749242),
      LatLng(10.7018293, 122.573209),
      LatLng(10.7018438, 122.5725371),
      LatLng(10.7018781, 122.5723091),
      LatLng(10.7019519, 122.5721052),
      LatLng(10.7022708, 122.5715286),
      LatLng(10.7022827, 122.5714494),
      LatLng(10.7021219, 122.5709573),
      LatLng(10.7021021, 122.5709197),
      LatLng(10.7017411, 122.5696738),
      LatLng(10.7016422, 122.5692594),
      LatLng(10.7016264, 122.569183),
      LatLng(10.7016343, 122.5691079),
      LatLng(10.7016317, 122.5690596),
      LatLng(10.7016119, 122.5690422),
      LatLng(10.7015473, 122.5690462),
      LatLng(10.7014907, 122.5690582),
      LatLng(10.7013879, 122.5690717),
      LatLng(10.7013194, 122.5690851),
      LatLng(10.7010439, 122.5690918),
      LatLng(10.7000227, 122.5690931),
      LatLng(10.6992913, 122.5690904),
      LatLng(10.6992122, 122.5690864),
      LatLng(10.6989763, 122.569069),
      LatLng(10.6980117, 122.5690623),
      LatLng(10.6969377, 122.5690542),
      LatLng(10.6966834, 122.5690462),
      LatLng(10.6966043, 122.5690502),
      LatLng(10.6964897, 122.5691159),
      LatLng(10.6963144, 122.5692406),
      LatLng(10.6956028, 122.5698415),
      LatLng(10.6948002, 122.5704517),
      LatLng(10.6939301, 122.5710035),
      LatLng(10.6938129, 122.5709377),
      LatLng(10.6925662, 122.5700915),
      LatLng(10.6921181, 122.5697777),
      LatLng(10.6921287, 122.5694773),
      LatLng(10.6921412, 122.5691288)
    ],
    color: Colors.redAccent,
  ),
  LugarLangRoute(
    name: 'Rizal St. (Ma. Clara) - Bo. Obrero Multi-purpose Gym',
    fare: 10.0,
    points: const [
      LatLng(10.6921412, 122.5691288),
      LatLng(10.6923901, 122.5691313),
      LatLng(10.6931057, 122.5691126),
      LatLng(10.6932981, 122.5693634),
      LatLng(10.69336, 122.5694318),
      LatLng(10.6939214, 122.5698757),
      LatLng(10.6941995, 122.5700862),
      LatLng(10.6944407, 122.5702673),
      LatLng(10.6947688, 122.5705167),
      LatLng(10.6948571, 122.570565),
      LatLng(10.6949546, 122.5704765),
      LatLng(10.6955726, 122.5699508),
      LatLng(10.6962961, 122.5693634),
      LatLng(10.6964516, 122.5692413),
      LatLng(10.6966111, 122.5691608),
      LatLng(10.696789, 122.5691354),
      LatLng(10.6970881, 122.569126),
      LatLng(10.6978814, 122.5691461),
      LatLng(10.6989344, 122.5691434),
      LatLng(10.6991702, 122.5691515),
      LatLng(10.6993191, 122.5691246),
      LatLng(10.7004459, 122.5691287),
      LatLng(10.7013433, 122.5691273),
      LatLng(10.7014566, 122.5691796),
      LatLng(10.7015212, 122.5692172),
      LatLng(10.7016925, 122.5698099),
      LatLng(10.702043, 122.5709231),
      LatLng(10.702097, 122.5710196),
      LatLng(10.7022354, 122.5714273),
      LatLng(10.7022354, 122.5714823),
      LatLng(10.7022235, 122.5715346),
      LatLng(10.7019125, 122.5720952),
      LatLng(10.7018322, 122.5722843),
      LatLng(10.7017953, 122.5725337),
      LatLng(10.701786, 122.573093),
      LatLng(10.7017847, 122.57443),
      LatLng(10.7017742, 122.5746258),
      LatLng(10.7017715, 122.5753661),
      LatLng(10.7017531, 122.5767461),
      LatLng(10.7017386, 122.5770063),
      LatLng(10.7017162, 122.5774837),
      LatLng(10.7016595, 122.5778324),
      LatLng(10.7016015, 122.5780309),
      LatLng(10.7015119, 122.5783286),
      LatLng(10.7013841, 122.5787028),
      LatLng(10.7013169, 122.5788262),
      LatLng(10.7012471, 122.5789187),
      LatLng(10.7010731, 122.5791413),
      LatLng(10.7005473, 122.5797891),
      LatLng(10.7004063, 122.5799648),
      LatLng(10.7000914, 122.5803966),
      LatLng(10.6998436, 122.5807319),
      LatLng(10.6997501, 122.5808499),
      LatLng(10.699671, 122.5810055),
      LatLng(10.6996433, 122.5811463),
      LatLng(10.6996012, 122.5814413),
      LatLng(10.6995788, 122.5815151),
      LatLng(10.6995339, 122.5815822),
      LatLng(10.6993495, 122.5817176),
      LatLng(10.6992335, 122.5817806),
      LatLng(10.6990174, 122.5818759),
      LatLng(10.6989594, 122.5819013),
      LatLng(10.6985588, 122.582077),
      LatLng(10.6984929, 122.5821146),
      LatLng(10.6983427, 122.582191),
      LatLng(10.6983058, 122.5822178),
      LatLng(10.6982755, 122.5822634),
      LatLng(10.698257, 122.5823157),
      LatLng(10.6982517, 122.5823989),
      LatLng(10.6982386, 122.582816),
      LatLng(10.6982254, 122.5829018),
      LatLng(10.6981951, 122.5829541),
      LatLng(10.6981674, 122.582985),
      LatLng(10.6981279, 122.5830064),
      LatLng(10.6980896, 122.5830185),
      LatLng(10.6979908, 122.5830332),
      LatLng(10.6978577, 122.5830413),
      LatLng(10.697722, 122.5830507),
      LatLng(10.6976205, 122.5830641),
      LatLng(10.697494, 122.5831164),
      LatLng(10.6974347, 122.583158),
      LatLng(10.6973767, 122.5832277),
      LatLng(10.6973438, 122.5832813),
      LatLng(10.6973095, 122.5833363),
      LatLng(10.6972673, 122.5834208),
      LatLng(10.6972555, 122.5834463),
      LatLng(10.6971922, 122.5834329),
      LatLng(10.6971277, 122.5834222),
      LatLng(10.6970723, 122.5834195),
      LatLng(10.6970262, 122.5834181),
      LatLng(10.6968667, 122.5834262),
      LatLng(10.6967429, 122.5834436),
      LatLng(10.6967007, 122.583453),
      LatLng(10.6965781, 122.5834838),
      LatLng(10.6964503, 122.5835361),
      LatLng(10.6963515, 122.5835911),
      LatLng(10.6962671, 122.5836743),
      LatLng(10.6961841, 122.583748),
      LatLng(10.6959983, 122.5839613),
      LatLng(10.6958494, 122.5841343),
      LatLng(10.6957545, 122.584255),
      LatLng(10.6956201, 122.584428),
      LatLng(10.6956965, 122.5845017),
      LatLng(10.6963607, 122.5850771),
      LatLng(10.6969932, 122.5855988),
      LatLng(10.6973082, 122.5858509),
      LatLng(10.6979038, 122.5863538),
      LatLng(10.6983598, 122.58674),
      LatLng(10.6988131, 122.5871236),
      LatLng(10.6994035, 122.5875876),
      LatLng(10.6996104, 122.5877512),
      LatLng(10.6996223, 122.5877327)
    ],
    color: Colors.blueAccent,
  ),
  LugarLangRoute(
    name: 'Total Gas Station (Yulo) - Rizal St.',
    fare: 10.0,
    points: const [
      LatLng(10.680219, 122.5174819),
      LatLng(10.6802678, 122.5189504),
      LatLng(10.680306, 122.5200139),
      LatLng(10.680364, 122.5215374),
      LatLng(10.6804062, 122.5229415),
      LatLng(10.6804694, 122.5243135),
      LatLng(10.6805643, 122.5270292),
      LatLng(10.6805986, 122.528322),
      LatLng(10.6806855, 122.5295344),
      LatLng(10.680849, 122.5309452),
      LatLng(10.6810414, 122.5325545),
      LatLng(10.6812153, 122.5337589),
      LatLng(10.6812628, 122.5344455),
      LatLng(10.6813708, 122.5353896),
      LatLng(10.6815105, 122.5365483),
      LatLng(10.6816001, 122.5372001),
      LatLng(10.6816608, 122.5378546),
      LatLng(10.6817346, 122.5383427),
      LatLng(10.6819059, 122.5389838),
      LatLng(10.6823197, 122.5400379),
      LatLng(10.6830498, 122.5415453),
      LatLng(10.6838221, 122.5427523),
      LatLng(10.6843334, 122.5434336),
      LatLng(10.6851505, 122.5443884),
      LatLng(10.6861573, 122.5455337),
      LatLng(10.6865368, 122.5459709),
      LatLng(10.687122, 122.5465771),
      LatLng(10.6880207, 122.5476017),
      LatLng(10.6886348, 122.5481569),
      LatLng(10.6892621, 122.5485807),
      LatLng(10.6897365, 122.5488168),
      LatLng(10.6913944, 122.5494042),
      LatLng(10.6915499, 122.549431),
      LatLng(10.6920296, 122.5493908),
      LatLng(10.6922377, 122.5501819),
      LatLng(10.6922772, 122.5505293),
      LatLng(10.692272, 122.5512749),
      LatLng(10.6923049, 122.5521493),
      LatLng(10.6923879, 122.5533308),
      LatLng(10.6924406, 122.554271),
      LatLng(10.6924644, 122.5544547),
      LatLng(10.6924986, 122.5546357),
      LatLng(10.6926119, 122.5549656),
      LatLng(10.6926647, 122.5551373),
      LatLng(10.6927306, 122.5552795),
      LatLng(10.6928268, 122.5554109),
      LatLng(10.6930152, 122.5556644),
      LatLng(10.6931588, 122.5558065),
      LatLng(10.693371, 122.55606),
      LatLng(10.6936188, 122.5563778),
      LatLng(10.6936899, 122.556575),
      LatLng(10.6936886, 122.5566474),
      LatLng(10.6934329, 122.5577203),
      LatLng(10.6933012, 122.5584941),
      LatLng(10.6932761, 122.5587811),
      LatLng(10.6933091, 122.5589286),
      LatLng(10.693798, 122.5605151),
      LatLng(10.6942869, 122.5620802),
      LatLng(10.6948496, 122.5639081),
      LatLng(10.6953411, 122.5655014),
      LatLng(10.6958274, 122.5670705),
      LatLng(10.696203, 122.5683002),
      LatLng(10.6963888, 122.5690177),
      LatLng(10.6963941, 122.5690419),
      LatLng(10.6962069, 122.5690714),
      LatLng(10.6958709, 122.5690781),
      LatLng(10.6951356, 122.569062),
      LatLng(10.6946282, 122.569058),
      LatLng(10.6940523, 122.5690674),
      LatLng(10.6932221, 122.569066),
      LatLng(10.6925039, 122.5690861),
      LatLng(10.6921613, 122.5690995),
      LatLng(10.6921283, 122.5690808),
      LatLng(10.6920914, 122.5690633),
      LatLng(10.6920466, 122.5690647),
      LatLng(10.6920123, 122.5690835),
      LatLng(10.6920005, 122.5691223),
      LatLng(10.6920137, 122.569172),
      LatLng(10.6920361, 122.5692068),
      LatLng(10.6920268, 122.5698009),
      LatLng(10.6920532, 122.5699793),
      LatLng(10.6920453, 122.5706525),
      LatLng(10.6919609, 122.5716597),
      LatLng(10.6920637, 122.5717053),
      LatLng(10.6921902, 122.571826),
      LatLng(10.6926396, 122.57229),
      LatLng(10.6929085, 122.5725703),
      LatLng(10.6928716, 122.5727165),
      LatLng(10.6927174, 122.572919),
      LatLng(10.6922482, 122.5734139),
      LatLng(10.6918213, 122.573843),
      LatLng(10.6917962, 122.573839),
      LatLng(10.6916776, 122.5737049)
    ],
    color: Colors.green,
  ),
  LugarLangRoute(
    name: 'Rizal St. - Total Gas Station (Yulo)',
    fare: 10.0,
    points: const [
      LatLng(10.6916776, 122.5737049),
      LatLng(10.6918254, 122.5726848),
      LatLng(10.6919901, 122.5717072),
      LatLng(10.6920112, 122.5716173),
      LatLng(10.692081, 122.5706826),
      LatLng(10.6920876, 122.5699597),
      LatLng(10.6921364, 122.5697451),
      LatLng(10.6921377, 122.5692047),
      LatLng(10.6921667, 122.569155),
      LatLng(10.6921904, 122.5691389),
      LatLng(10.6930911, 122.5691135),
      LatLng(10.6940479, 122.5691135),
      LatLng(10.69489, 122.5691054),
      LatLng(10.6958045, 122.5691255),
      LatLng(10.6962051, 122.5691188),
      LatLng(10.6964186, 122.5690813),
      LatLng(10.6964766, 122.5690518),
      LatLng(10.696495, 122.5690008),
      LatLng(10.6960641, 122.5675135),
      LatLng(10.6954105, 122.5654174),
      LatLng(10.6947793, 122.5633789),
      LatLng(10.6942205, 122.5615469),
      LatLng(10.6933573, 122.5588822),
      LatLng(10.6933363, 122.5587333),
      LatLng(10.6933666, 122.5584906),
      LatLng(10.6935695, 122.5575102),
      LatLng(10.6937342, 122.5567874),
      LatLng(10.6938818, 122.5560712),
      LatLng(10.6941164, 122.5556152),
      LatLng(10.6942864, 122.5554007),
      LatLng(10.6944907, 122.5551083),
      LatLng(10.6944775, 122.5550345),
      LatLng(10.6940927, 122.555115),
      LatLng(10.6929844, 122.555292),
      LatLng(10.6928289, 122.5553323),
      LatLng(10.6927959, 122.555284),
      LatLng(10.6927709, 122.5552505),
      LatLng(10.6927142, 122.5551217),
      LatLng(10.6925482, 122.5546255),
      LatLng(10.6924863, 122.5543801),
      LatLng(10.6924454, 122.5535687),
      LatLng(10.692336, 122.5519111),
      LatLng(10.6923163, 122.5506035),
      LatLng(10.6923202, 122.5504882),
      LatLng(10.6922767, 122.5501637),
      LatLng(10.6922135, 122.5499236),
      LatLng(10.6920487, 122.5493255),
      LatLng(10.691577, 122.5493697),
      LatLng(10.6914386, 122.549355),
      LatLng(10.6912712, 122.5493027),
      LatLng(10.6905833, 122.5490626),
      LatLng(10.6898783, 122.5488105),
      LatLng(10.6894935, 122.5486308),
      LatLng(10.689164, 122.5484564),
      LatLng(10.6886553, 122.5480997),
      LatLng(10.6881756, 122.547692),
      LatLng(10.687348, 122.5467532),
      LatLng(10.6867735, 122.5461283),
      LatLng(10.6856981, 122.544932),
      LatLng(10.6851393, 122.5443166),
      LatLng(10.6846135, 122.5436957),
      LatLng(10.6843012, 122.5432987),
      LatLng(10.6837951, 122.5426174),
      LatLng(10.6833576, 122.5419308),
      LatLng(10.6831124, 122.5415405),
      LatLng(10.6826828, 122.5407037),
      LatLng(10.6823573, 122.540009),
      LatLng(10.681962, 122.538971),
      LatLng(10.6817854, 122.5383393),
      LatLng(10.6817102, 122.5378619),
      LatLng(10.6816799, 122.5374019),
      LatLng(10.681564, 122.5365342),
      LatLng(10.6814243, 122.535405),
      LatLng(10.6813122, 122.5344528),
      LatLng(10.6812661, 122.5337702),
      LatLng(10.6811436, 122.5329119),
      LatLng(10.6810447, 122.5321729),
      LatLng(10.6809129, 122.5310464),
      LatLng(10.6807693, 122.5298528),
      LatLng(10.6807008, 122.5291058),
      LatLng(10.680648, 122.5283092),
      LatLng(10.680623, 122.5271813),
      LatLng(10.6805901, 122.5262546),
      LatLng(10.6805373, 122.5249055),
      LatLng(10.6804925, 122.5238339),
      LatLng(10.6804451, 122.5224767),
      LatLng(10.6803897, 122.520917),
      LatLng(10.6803528, 122.5199917),
      LatLng(10.6803133, 122.5188826),
      LatLng(10.6802698, 122.5174704),
      LatLng(10.680219, 122.5174819)
    ],
    color: Colors.orange,
  ),
];
