# coding: utf-8 
class DepartamentoData < ActiveRecord::Migration
  def self.up
    departamentos =[
['AZUL',1],
['PUAN',1],
['LA MATANZA',1],
['TIGRE',1],
['25 DE MAYO',1],
['TRENQUE LAUQUEN',1],
['9 DE JULIO',1],
['LANUS',1],
['LA PLATA',1],
['MONTE',1],
['PEHUAJO',1],
['SAN ISIDRO',1],
['PERGAMINO',1],
['ALBERTI',1],
['CHASCOMUS',1],
['ESTEBAN ECHEVERRIA',1],
['MERCEDES',1],
['BAHIA BLANCA',1],
['MERLO',1],
['JUNIN',1],
['GUAMINI',1],
['LUJAN',1],
['LEANDRO N.ALEM',1],
['MATANZA',1],
['GENERAL PAZ',1],
['SAN VICENTE',1],
['CAÑUELAS',1],
['ALMIRANTE BROWN',1],
['CNL.DE MARINA  L.ROSALES',1],
['BARADERO',1],
['SAAVEDRA',1],
['BRANDSEN',1],
['GENERAL SARMIENTO',1],
['TAPALQUE',1],
['SALADILLO',1],
['MAGDALENA',1],
['GONZALES CHAVES',1],
['GENERAL PINTO',1],
['NAVARRO',1],
['DAIREAUX',1],
['LOBOS',1],
['CORONEL DORREGO',1],
['ADOLFO ALSINA',1],
['COLON',1],
['GENERAL ARENALES',1],
['LINCOLN',1],
['VILLARINO',1],
['VICENTE LOPEZ',1],
['BARTOLOME MITRE',1],
['EXALTACION DE LA CRUZ',1],
['SALTO',1],
['BRAGADO',1],
['ZARATE',1],
['AVELLANEDA',1],
['AYACUCHO',1],
['SAN ANDRES DE GILES',1],
['TANDIL',1],
['RIVADAVIA',1],
['PATAGONES',1],
['GRL.VIAMONTE',1],
['CNL.DE MARINA LEONARDO ROSALES',1],
['BALCARCE',1],
['TRES ARROYOS',1],
['GENERAL VILLEGAS',1],
['LOMAS DE ZAMORA',1],
['BERISSO',1],
['JUAREZ',1],
['GRL.PUEYRREDON',1],
['CORONEL SUAREZ',1],
['ESCOBAR',1],
['CARLOS CASARES',1],
['CHIVILCOY',1],
['BERAZATEGUI',1],
['QUILMES',1],
['TORQUINST',1],
['3 DE FEBRERO',1],
['OLAVARRIA',1],
['PELLEGRINI',1],
['GENERAL BELGANO',1],
['FLORENCIO VARELA',1],
['SALLIQUELO',1],
['CNL.DE MARINA L.ROSALES',1],
['MAR CHIQUITA',1],
['GENERAL PUEYRREDON',1],
['CAMPANA',1],
['GRL.SARMIENTO',1],
['ROJAS',1],
['SARMIENTO',1],
['CARMEN DE ARECO',1],
['PILA',1],
['TRES DE FEBRERO',1],
['MORON',1],
['CASTELLI',1],
['CHACABUCO',1],
['GENERAL VIAMONTE',1],
['RAUCH',1],
['GENERAL BELGRANO',1],
['TORNQUIST',1],
['NECOCHEA',1],
['MARCOS PAZ',1],
['CARLOS TEJEDOR',1],
['SAN PEDRO',1],
['GENERAL ALVARADO',1],
['SAN NICOLAS',1],
['HIPOLITO YRIGOYEN',1],
['LAS FLORES',1],
['CORONEL PRINGLES',1],
['GENERAL SAN MARTIN',1],
['BENITO JUAREZ',1],
['SAN CAYETANO',1],
['ADOLFO GONZALES CHAVES',1],
['DOLORES',1],
['SAN ANTONIO',1],
['LOBERIA',1],
['RAMALLO',1],
['GENERAL ALVEAR',1],
['ENSENADA',1],
['TORDILLO',1],
['GENERAL GUIDO',1],
['GENERAL LAS HERAS',1],
['GENERAL JUAN MADARIAGA',1],
['GENERAL LA MADRID',1],
['GENERAL LAVALLE',1],
['GENERAL RODRIGUEZ',1],
['GENERAL VLLEGAS',1],
['ADOLFO GONZALEZ CHAVES',1],
['CORONEL DE MARINA L.ROSALES',1],
['BOLIVAR',1],
['SAN FERNANDO',1],
['CAPITAN SARMIENTO',1],
['ROQUE PEREZ',1],
['MORENO',1],
['LAPRIDA',1],
['MAIPU',1],
['ECHEVERRIA',1],
['PILAR',1],
['CORONEL DE MARINA L. ROSALES',1],
['SUIPACHA',1],
['SAN ANTONIO DE ARECO',1],
['BARAZATEGUI',1],
['ALSINA',1],
['LEANDRO N. ELEM',1],
['GRL.SAN MARTIN',1],
['CORONEL',1],
['CAPAYAN',2],
['ANDALGALA',2],
['EL ALTO',2],
['SANTA ROSA',2],
['ANCASTI',2],
['PACLIN',2],
['SANTA MARIA',2],
['TINOGASTA',2],
['LA PAZ',2],
['VALLE VIEJO',2],
['ANTOFAGASTA DE LA SIERRA',2],
['BELEN',2],
['CAPITAL',2],
['FRAY MAMERTO ESQUIU',2],
['POMAN',2],
['AMBATO',2],
['INDEPENDENCIA',3],
['SAN FERNANDO',3],
['PRIMERO DE MAYO',3],
['FRAY JUSTO SANTA MARIA DE ORO',3],
['SARGENTO CABRAL',3],
['GENERAL GUEMES',3],
['TAPENAGA',3],
['CHACABUCO',3],
['LIBERTADOR GRL.SAN MARTIN',3],
['25 DE MAYO',3],
['12 DE OCTUBRE',3],
['COMANDANTE FERNANDEZ',3],
['QUITILIPI',3],
['MAYOR LUIS J.FONTANA',3],
['LIBERTAD',3],
['BERMEJO',3],
['ALMIRANTE BROWN',3],
['MEYOR LUIS J.FONTANA',3],
['GENERAL BELGRANO',3],
['LIBERTADOR GRL. SAN MARTIN',3],
['GENERAL DONOVAN',3],
['SAN LORENZO',3],
['LEBERTADOR GRL.SAN MARTIN',3],
['MAIPU',3],
['O HIGGINS',3],
['9 DE JULIO',3],
['LIBERTADOR SAN MARTIN',3],
['RIO SENGUERR',4],
['MARTIRES',4],
['ESCALANTE',4],
['GAIMAN',4],
['SARMIENTO',4],
['CUSHAMEN',4],
['FLORENTINO AMEGHINO',4],
['PASO DE INDIOS',4],
['TELSEN',4],
['LANGUIÑEO',4],
['GASTRE',4],
['FUTALEUFU',4],
['TEHUELCHES',4],
['RAWSON',4],
['BIEDMA',4],
['RIO CUARTO',5],
['TOTORAL',5],
['COLON',5],
['MINAS',5],
['PUNILLA',5],
['JUAREZ CELMAN',5],
['MARCOS JUAREZ',5],
['SAN JUSTO',5],
['TERCERO ARRIBA',5],
['RIO SECO',5],
['CAPITAL',5],
['SANTA MARIA',5],
['SAN ALBERTO',5],
['UNION',5],
['POCHO',5],
['CALAMUCHITA',5],
['ISCHILIN',5],
['GENERAL SAN MARTIN',5],
['RIO PRIMERO',5],
['CRUZ DEL EJE',5],
['GRL.ROCA',5],
['GENERAL ROCA',5],
['SOBREMONTE',5],
['RIO SEGUNDO',5],
['TULUMBA',5],
['SAN JAVIER',5],
['PRESIDENTE ROQUE SAEZ PEÑA',5],
['PRESIDENTE ROQUE SAENZ PEÑA',5],
['',5],
['CRUZ DE EJE',5],
['CORONEL PRINGLES',5],
['RIO TERCERO',5],
['CVALAMUCHITA',5],
['SAN ROQUE',6],
['MONTE CASEROS',6],
['GENERAL ALVEAR',6],
['CURUZU CUATIA',6],
['SAN MARTIN',6],
['MERCEDES',6],
['SALADAS',6],
['ITUZAINGO',6],
['BERON DE ASTRADA',6],
['BELLA VISTA',6],
['SAN LUIS DEL PALMAR',6],
['CAPITAL',6],
['LAVALLE',6],
['PASO DE LOS LIBRES',6],
['GOYA',6],
['EMPEDRADO',6],
['SAUCE',6],
['GENERAL PAZ',6],
['SANTO TOME',6],
['SAN MIGUEL',6],
['CONCEPCION',6],
['ESQUINA',6],
['SAN COSME',6],
['ITATI',6],
['MBURUCUYA',6],
['URUGUAY',7],
['NOGOYA',7],
['TALA',7],
['GUALEGUAY',7],
['DIAMANTE',7],
['PARANA',7],
['GUALEGUAYCHU',7],
['COLON',7],
['VICTORIA',7],
['VILLAGUAY',7],
['FELICIANO',7],
['CONCORDIA',7],
['LA PAZ',7],
['FEDERACION',7],
['FEDERAL',7],
['CASTELLANOS',7],
['PILAGAS',8],
['PATIÑO',8],
['PILCOMAYO',8],
['BERMEJO',8],
['PIRANE',8],
['FORMOSA',8],
['MATACOS',8],
['RAMON LISTA',8],
['PILLAGAS',8],
['LAISHI',8],
['LEDESMA',9],
['COCHINOCA',9],
['EL CARMEN',9],
['TUMBAYA',9],
['CAPITAL',9],
['YAVI',9],
['HUMAHUACA',9],
['RINCONADA',9],
['VALLE GRANDE',9],
['SUSQUES',9],
['SANTA CATALINA',9],
['SAN ANTONIO',9],
['SANTA BARBARA',9],
['SAN PEDRO',9],
['TILCARA',9],
['LADESMA',9],
['HUCAL',10],
['REALICO',10],
['MARA CO',10],
['QUEMUQUEMU',10],
['CHICAL CO',10],
['GUATRACHE',10],
['CAPITAL',10],
['CALEUCALEU',10],
['TRENEL',10],
['UTRACAN',10],
['ATREUCO',10],
['TOAY',10],
['CHAPADLEUFU',10],
['CONELO',10],
['PUELEN',10],
['RANCUL',10],
['QUEMU QUEMU',10],
['LOVENTUE',10],
['CONHELO',10],
['CATRILO',10],
['CHAPALEUFU',10],
['ULTRACAN',10],
['CHALILEO',10],
['LIHUEL CALEL',10],
['MARACO',10],
['CALEU CALEU',10],
['CURACO',10],
['LIMAY MAHUIDA',10],
['CASTRO BARROS',11],
['GENERAL SAN MARTIN',11],
['GENERAL LAVALLE',11],
['ARAUCO',11],
['GRAL.ANGEL V.PEÑALOZA',11],
['SAN BLAS DE LOS SAUCES',11],
['INDEPENDENCIA',11],
['GENERAL OCAMPO',11],
['CHILECITO',11],
['FAMATINA',11],
['GRL.JUAN FACUNDO QUIROGA',11],
['GRL.ANGEL V. PEÑALOZA',11],
['GENERAL BELGRANO',11],
['GENERAL SARMIENTO',11],
['CAPITAL',11],
['GDOR. GORDILLO',11],
['GENERAL ANGEL VICENTE PEÑALOZA',11],
['GOBERNADOR GORDILLO',11],
['ROSARIO VERA PEÑALOZA',11],
['GRL.SAN MARTIN',11],
['GENERAL LA MADRID',11],
['GENERAL JUAN FACUNDO QUIROGA',11],
['GENERALOCAMPO',11],
['SANAGASTA',11],
['SAN RAFAEL',12],
['LUJAN',12],
['MALARGUE',12],
['GUAYMALLEN',12],
['LAVALLE',12],
['JUNIN',12],
['TUPUNGATO',12],
['RIVADAVIA',12],
['MAIPU',12],
['GODOY CRUZ',12],
['GENERAL ALVEAR',12],
['LA PAZ',12],
['TUNUYAN',12],
['SAN CARLOS',12],
['LAS HERAS',12],
['LUJAN DE CUYO',12],
['SAN MARTIN',12],
['SANTA ROSA',12],
['CAPITAL',12],
['25 DE MAYO',13],
['IGUAZU',13],
['EL DORADO',13],
['LEANDRO N. ALEM',13],
['APOSTOLES',13],
['CAINGUAS',13],
['LEANDRO N.ALEM',13],
['CONCEPCION',13],
['SAN PEDRO',13],
['CANDELARIA',13],
['GRL.MANUEL BELGRANO',13],
['OBERA',13],
['LIBERTADOR GRL.SAN MARTIN',13],
['SAN IGNACIO',13],
['MONTECARLO',13],
['GENERAL MANUEL BELGRANO',13],
['LEBERTADOR GRL.SAN MARTIN',13],
['EL GUARANI',13],
['ELDORADO',13],
['CAPITAL',13],
['GUARANI',13],
['SAN JAVIER',13],
['LIBERTADOR GRL. SAN MARTIN',13],
['COLLON CURA',14],
['ALUMINE',14],
['MINAS',14],
['AÑELO',14],
['CONFLUENCIA',14],
['CHOS MALAL',14],
['PICUNCHES',14],
['NORQUIN',14],
['PEHUENCHES',14],
['LONCOPUE',14],
['HUILICHES',14],
['ZAPALA',14],
['CATAN LIL',14],
['ÑORQUIN',14],
['LOS LAGOS',14],
['PICUN LEUFU',14],
['LACAR',14],
['ÑOEQUIN',14],
['VALCHETA',15],
['25 DE MAYO',15],
['EL CUY',15],
['ÑORQUINCO',15],
['GENERAL ROCA',15],
['AVELLANEDA',15],
['CONESA',15],
['PICHI MAHUIDA',15],
['SAN ANTONIO',15],
['PILCANIYEU',15],
['9 DE JULIO',15],
['ADOLFO ALSINA',15],
['BARILOCHE',15],
['PIHI MAHUIDA',15],
['LA VIÑA',16],
['SAN MARTIN',16],
['ORAN',16],
['ANTA',16],
['GRAL.JOSE DE SAN MARTIN',16],
['GUACHIPAS',16],
['ROSARIO DE LA FRONTERA',16],
['RIVADAVIA',16],
['METAN',16],
['SAN CARLOS',16],
['GRL.GUEMES',16],
['CACHI',16],
['ROSARIO DE LERMA',16],
['CAFAYATE',16],
['LOS ANDES',16],
['GRL.JOSE DE SAN MARTIN',16],
['CAPITAL',16],
['GRL.SAN MARTIN',16],
['GENERAL GUEMES',16],
['CERRILLOS',16],
['CHICOANA',16],
['LA POMA',16],
['LA CAPITAL',16],
['CANDELARIA',16],
['ROSARIO',16],
['IRUYA',16],
['LA CALDERA',16],
['LOA ANDES',16],
['MOLINOS',16],
['SANTA VICTORIA',16],
['9 DE JULIO',17],
['JACHAL',17],
['ALBARDON',17],
['25 DE MAYO',17],
['SANTA LUCIA',17],
['ANGACO',17],
['IGLESIA',17],
['VALLE FERTIL',17],
['CALINGASTA',17],
['RIVADAVIA',17],
['CAUCETE',17],
['SARMIENTO',17],
['POCITO',17],
['SAN MARTIN',17],
['CHIMBAS',17],
['IGLESIAS',17],
['ULLUN',17],
['RAWSON',17],
['CAPITAL',17],
['ZONDA',17],
['BELGRANO',18],
['CHACABUCO',18],
['LA CAPITAL',18],
['GOBERNADOR DUPUY',18],
['GRL.PEDERNERA',18],
['AYACUCHO',18],
['JUNIN',18],
['GONERNADOR DUPUY',18],
['CORONEL PRINGLES',18],
['GENERAL PEDERNERA',18],
['GOBERNADOR DUVAL',18],
['IGLESIA',18],
['LIBERTADOR GRL. SAN MARTIN',18],
['LIBERTADOR GRL.SAN MARTIN',18],
['LIBERTADOR GR.SAN MARTIN',18],
['CAUCETE',18],
['GUER AIKE',19],
['DESEADO',19],
['RIO CHICO',19],
['MAGALLANES',19],
['LAGO ARGENTINO',19],
['CORPEN AIKE',19],
['LAGO BUENOS AIRES',19],
['GENERAL LOPEZ',20],
['ROSARIO',20],
['GENERAL OBLIGADO',20],
['CONSTITUCION',20],
['SAN LORENZO',20],
['SAN JAVIER',20],
['LA CAPITAL',20],
['SAN CRISTOBAL',20],
['IRIONDO',20],
['CASTELLANOS',20],
['NUEVE DE JULIO',20],
['CASEROS',20],
['SAN JERONIMO',20],
['BELGRANO',20],
['CAPITAL',20],
['SAN JUSTO',20],
['GRL.OBLIGADO',20],
['LA CAPUTAL',20],
['GRL.LOPEZ',20],
['VERA',20],
['9 DE JULIO',20],
['SAN MARTIN',20],
['LAS COLONIAS',20],
['GARAY',20],
['CASTELANOS',20],
['LAS COLINAS',20],
['BANDA',21],
['MORENO',21],
['ALBERDI',21],
['PELLEGRINI',21],
['OJO DE AGUA',21],
['RIO HONDO',21],
['GENERAL TABOADA',21],
['CHOYA',21],
['CAPITAL',21],
['AGUIRRE',21],
['SILIPICA',21],
['BELGRANO',21],
['FIGUEROA',21],
['SALAVINA',21],
['QUEBRACHOS',21],
['ROBLES',21],
['AVELLANEDA',21],
['JIMENEZ',21],
['ATAMISQUI',21],
['SAN MARTIN',21],
['MATARA',21],
['SALAYINA',21],
['GUASAYAN',21],
['COPO',21],
['BRIGADIER JUAN FELIPE IBARRA',21],
['DOBLES',21],
['SARMIENTO',21],
['LORETO',21],
['MITRE',21],
['RIVADAVIA',21],
['USHUAIA',22],
['ISLAS DEL ATLANTICO SUR',22],
['SECTOR ANTARTICO ARGENTINO',22],
['RIO GRANDE',22],
['IS.DEL ATLANTICO SUR E IS.MALVINAS',22],
['ANTARTIDA ARGENTINA',22],
['BURRUYACU',23],
['TRANCAS',23],
['MONTEROS',23],
['LEALES',23],
['CRUZ ALTA',23],
['RIO CHICO',23],
['CHICLIGASTA',23],
['TAFI',23],
['GRANEROS',23],
['FAMAILLA',23],
['CAPITAL',23],

    departamentos.each do |departamento|
      Largentinas::Department.create :name=>departamento[0],:place_id=>departamento[1]
    end


  end

end
