import 'repositories/Grupo.dart';
import 'repositories/GrupoRepository.dart';

import 'repositories/repository.dart';
import 'services/GrupoService.dart';

main() {
  Grupo grup = new Grupo();
  grup.cor = "Amarelo";
  grup.id = 1;

  Grupo grup1 = new Grupo();
  grup1.cor = "Vermelho";
  grup1.id = 2;

  Grupo grup2 = new Grupo();
  grup2.cor = "Verde";
  grup2.id = 3;

  Repository<Grupo, int> repository = new GrupoRepository();
  GrupoService grupoService = new GrupoService(repository);
  grupoService.cadastrar(grup);
  grupoService.cadastrar(grup1);
  grupoService.cadastrar(grup2);
}
