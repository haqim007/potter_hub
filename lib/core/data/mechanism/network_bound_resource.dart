import 'package:get/get.dart';
import 'package:potter_hub/core/data/mechanism/resource.dart';
import 'package:potter_hub/core/data/mechanism/result.dart';

import '../../util/app_constant.dart';

abstract class NetworkBoundResource<ResultType, ResponseType> {
  final Rx<Resource<ResultType>> _result = Rx(Resource.loading());

  NetworkBoundResource() {
    logger.d("NetworkBoundResource");
    _fetchData();
  }

  Future<void> _fetchData() async {
    _result.value = Resource.loading();

    try {
      final currentLocalData = await loadCurrentLocalData();

      if (await onBeforeRequest()) {
        final apiResponse = await requestFromRemoteRunner();
        logger.d(apiResponse.data.toString());
        logger.d(apiResponse.error.toString());
        logger.d("isSuccess ${apiResponse.isSuccess}");
        logger.d("isFailure ${apiResponse.isFailure}");
        if (apiResponse.isSuccess) {
          final res = apiResponse.data;
          if (res != null) {
            _result.value = Resource.success(await loadResult(res));
            await onSuccess(res);
          }
        } else {
          final excCustomThrowable = apiResponse.error;
          if (excCustomThrowable != null) {
            await onFailed(excCustomThrowable);
            _result.value = Resource.error(
              message: excCustomThrowable.message,
              data: null, // TODO: Load error data from response if there any
              httpCode: excCustomThrowable.code,
            );
          } else {
            _result.value = Resource.error(
              message: "Failed to fetch data",
              data: currentLocalData,
            );
          }
        }
      } else {
        _result.value = Resource.error(message: "Request is not allowed");
      }

      await onComplete();
    } catch (e) {
      await onFailed();
      _result.value = Resource.error(message: e.toString());
    }
  }

  Future<ResultType?> loadCurrentLocalData() async => null;

  Future<void> onSuccess(ResponseType responseData) async {}

  Future<void> onFailed([CustomThrowable? exceptionOrNull]) async {}

  Future<void> onComplete() async {}

  Future<bool> onBeforeRequest() async => true;

  Future<Result<ResponseType>> requestFromRemote();

  Future<Result<ResponseType>> requestFromRemoteRunner() async {
    return await requestFromRemote();
  }

  Future<ResultType> loadResult(ResponseType responseData);

  ResultType? loadResultOnError(dynamic responseData) => null;

  Rx<Resource<ResultType>> asObservable() => _result;
}
