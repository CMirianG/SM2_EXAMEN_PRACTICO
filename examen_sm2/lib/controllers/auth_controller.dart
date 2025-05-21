class AuthController {
  final String _usuarioValido = "admin";
  final String _passwordValida = "123456";

  bool login(String usuario, String password) {
    return usuario == _usuarioValido && password == _passwordValida;
  }
}
