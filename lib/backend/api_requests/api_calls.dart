import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

class CreateCustomerCall {
  static Future<ApiCallResponse> call({
    String name = '',
    String email = '',
    String direccion = '',
    String cedula = '',
  }) {
    final body = '''
{
  "name": "${name}",
  "direccion": "${direccion}",
  "email": "${email}",
  "cedula":"${cedula}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'CreateCustomer',
      apiUrl: 'https://GreyLabs-1.andyel.repl.co/clientes',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'name': name,
        'email': email,
        'direccion ': direccion,
        'cedula': cedula,
      },
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
    );
  }
}
