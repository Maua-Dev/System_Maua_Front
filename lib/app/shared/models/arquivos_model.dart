import 'package:system_maua_front/app/shared/enumerates/arquivos_enum.dart';


class ArquivoModel{
final String nome;
final ArquivosEnum? arquivo;
final String? url;

ArquivoModel({
  required this.nome,
   this.arquivo,
   this.url,
});

}