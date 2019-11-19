
const express = require('express');
const app = express();         
const bodyParser = require('body-parser');
const porta = 8080; //porta padrão
const sql = require('mssql');
const conexaoStr = "Server=regulus.cotuca.unicamp.br;Database=PR118343;User Id=PR118343;Password=PR118343;";
//conexao com BD
sql.connect(conexaoStr)
   .then(conexao => global.conexao = conexao)
   .catch(erro => console.log(erro));

// configurando o body parser para pegar POSTS mais tarde   
app.use(bodyParser.urlencoded({ extended: true}));
app.use(bodyParser.json());
//acrescentando informacoes de cabecalho para suportar o CORS
app.use(function(req, res, next) {
  res.header("Access-Control-Allow-Origin", "*");
  res.header("Access-Control-Allow-Headers", "Origin, X-Requested-With, Content-Type, Accept");
  res.header("Access-Control-Allow-Methods", "GET, POST, HEAD, OPTIONS, PATCH, DELETE");
  next();
});
//definindo as rotas
const rota = express.Router();

rota.get('/', (requisicao, resposta) => resposta.json({ mensagem: 'Funcionando!'}));
app.use('/', rota);

//inicia servidor
app.listen(porta);
console.log('API Funcionando!');

function execSQL(sql, resposta) {
	global.conexao.request()
				  .query(sql)
				  .then(resultado => resposta.json(resultado.recordset))
          //.then(resultado => console.log(resultado.recordset))
				  .catch(erro => resposta.json(erro));
}

rota.get('/questoes',(requisicao, resposta) =>{
  execSQL('SELECT * FROM Questao', resposta); 
})

rota.get('/questoes/:quiz?', (requisicao, resposta) =>{
  const quiz = requisicao.params.quiz;
  execSQL(`select * from Questao where codQuiz=` + quiz, resposta);
})

rota.get('/usuario/:nome?', (requisicao, resposta) =>{
  const nome = requisicao.params.nome;
  execSQL(`select * from Perfil where nome =` +"'"+ nome+"'", resposta);
})

rota.post('/usuario', (requisicao, resposta) =>{
  const nome = requisicao.body.nome;
  const senha = requisicao.body.senha;
  const email = requisicao.body.email;
  const restricoes = requisicao.body.restricoes;
  const dieta = requisicao.body.dieta;
  const nivel = parseInt(requisicao.body.nivel);
  const altura =  parseFloat(requisicao.body.altura);
  const evolucao =  parseFloat(requisicao.body.evolucao);
  const peso =  parseFloat(requisicao.body.peso);

  console.log(`INSERT INTO Perfil VALUES('${nome}','${senha}','${email}',${nivel},'${restricoes}',${peso},${altura},'${dieta}',${evolucao})`);
  execSQL(`INSERT INTO Perfil VALUES('${nome}','${senha}','${email}',${nivel},'${restricoes}',${peso},${altura},'${dieta}',${evolucao})`, resposta);
  resposta.end(resposta.json({ mensagem: 'Incluído!'}));
})
