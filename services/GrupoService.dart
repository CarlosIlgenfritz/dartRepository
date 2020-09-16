import '../repositories/Grupo.dart';
import '../repositories/repository.dart';

class GrupoService {
  Repository<Grupo, int> repository;

  GrupoService(Repository<Grupo, int> repository) {
    this.repository = repository;
  }

  cadastrar(Grupo grupo) {
    repository.cadastrar(grupo);
  }
}
