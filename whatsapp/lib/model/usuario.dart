// ignore_for_file: public_member_api_docs, sort_constructors_first
class Usuario {
  String? _nome;
  String? _email;
  String? _senha;

  Usuario();

  get nome => this._nome;

  set nome(value) => this._nome = value;

  get email => this._email;

  set email(value) => this._email = value;

  get senha => this._senha;

  set senha(value) => this._senha = value;
}
