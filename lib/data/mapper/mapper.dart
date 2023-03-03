abstract class Mapper<T, E>{
  T asModel(E entity);
  E asEntity(T model);
}