class TodoSearchState {
  final String searchTerm;

  TodoSearchState({required this.searchTerm});

  List<Object> get props => [searchTerm];

  bool get stringify => true;

  TodoSearchState copyWith({
    String? filter,
  }) {
    return TodoSearchState(
      searchTerm: filter ?? this.searchTerm,
    );
  }

}
