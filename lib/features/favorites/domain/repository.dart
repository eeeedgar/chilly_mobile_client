abstract class FavoritesRepository {
  // need token
  // todo
  Future<String> getFavorites();

  // need token
  Future<void> addToFavorites(String id);

  // need token
  Future<bool> deleteUser(String userId, String eventId);
}
