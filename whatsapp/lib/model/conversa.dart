// ignore_for_file: public_member_api_docs, sort_constructors_first
class Conversa {
  String _nome;
  String _mensagem;
  String _caminhoFoto;

  Conversa(this._nome, this._mensagem, this._caminhoFoto);

  get nome => this._nome;

  set nome(value) => this._nome = value;

  get mensagem => this._mensagem;

  set mensagem(value) => this._mensagem = value;

  get caminhoFoto => this._caminhoFoto;

  set caminhoFoto(value) => this._caminhoFoto = value;
}
