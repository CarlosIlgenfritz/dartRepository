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

  T buscarPorID(ID id) {
    T elemento;
    _lista.forEach((element) {
      if (element.id == id) {
        elemento = element;
      }
    });
    return elemento;
  }

  @override
  void excluir(T o) {
    int indice = _lista.indexOf(o);
    _lista.removeAt(indice);
    print("Removido");
  }
}
