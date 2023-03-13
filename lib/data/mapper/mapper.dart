/// Mapper is a class that maps an entity to a model and vice versa.
/// T is a model type. E is an entity type.
abstract class Mapper<T, E>{
  T asModel(E entity);
  E asEntity(T model);
}