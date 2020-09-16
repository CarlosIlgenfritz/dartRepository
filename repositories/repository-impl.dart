import 'repository.dart';

class RepositoryImpl<T, ID> implements Repository<T, ID> {
  List<T> _lista = List<T>();

  List<T> get lista => _lista;
  @override
  T cadastrar(T obj) {
    _lista.add(obj);
    print("Cadastrado");
    return obj;
  }
}
