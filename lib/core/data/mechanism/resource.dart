enum _ResourceState { idle, success, error, loading }

class Resource<ResultType> {
  final ResultType? data;
  final String? message;
  final int? httpCode;
  final _ResourceState _state;

  Resource(
      {this.data, this.message, this.httpCode, required _ResourceState state}
  ) : _state = state;

  factory Resource.success(ResultType data) {
    return Resource(data: data, state: _ResourceState.success);
  }

  factory Resource.loading([ResultType? data]) {
    return Resource(data: data, state: _ResourceState.loading);
  }

  factory Resource.error({required String message, ResultType? data, int? httpCode}) {
    return Resource(data: data, message: message, httpCode: httpCode, state: _ResourceState.error);
  }

  factory Resource.idle() {
    return Resource(state: _ResourceState.idle);
  }

  // Check if the resource is in a success state
  bool get isSuccess => _state == _ResourceState.success;

  // Check if the resource is in a loading state
  bool get isLoading => _state == _ResourceState.loading;

  // Check if the resource is in an error state
  bool get isError => _state == _ResourceState.error;

  // Check if the resource is in an idle state
  bool get isIdle => _state == _ResourceState.idle;
}
