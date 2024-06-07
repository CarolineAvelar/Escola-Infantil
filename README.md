# Escola Infantil
Eu elaborei este banco de dados como parte de um exercício proposto pelo professor da faculdade. Todos nós alunos fomos desafiados a criar um cenário fictício, e o meu cenário foi uma escola infantil. Desenvolvi o banco de dados desde o conceitual até o físico, aplicando meus conhecimentos de modelagem de dados e implementação de bancos de dados para atender às necessidades específicas de uma instituição educacional.


## 🚀 1 - Apresentando o Cenário
Para começar a modelagem de um banco de dados, o primeiro passo é definir o cenário para entender as futuras entidades, atributos e relacionamentos. Logo abaixo está o meu cenário:

### Escola Infantil

Uma escola infantil precisa de um sistema de gestão que visa gerenciar alunos, professores, disciplinas, turmas e notas. Seu objetivo é criar um sistema que ajude a acompanhar o desempenho dos alunos, atribuir tarefas aos professores e manter registros precisos de notas e matrículas. Os alunos são registrados com seu nome, data de nascimento, endereço e telefone. Já os Professores serão registrados com seu nome, telefone, área de especialidade e salário. As disciplinas são cadastradas com seu nome, carga horária, e o professor daquela disciplina. As turmas são registradas com o seu nome, a data de início, data do fim e a duração do curso em anos e semestres. E as notas são cadastradas com o id dos alunos, da disciplina e a nota do aluno.

### Relacionamento entre as tabelas:
• Um aluno pode estar matriculado em várias turmas, e uma turma pode ter vários alunos.

• Um professor pode lecionar várias disciplinas, e uma disciplina pode ser lecionada por vários professores.

• Um aluno pode ter várias notas, mas cada nota pertence a um único aluno.

• Uma disciplina pode ter várias notas, mas cada nota refere-se a uma única disciplina.

• Um professor é o responsável por uma turma, e uma turma tem apenas um professor responsável.


## 📋 2 - Modelagem Conceitual

Agora é o momento de compilar todas essas informações e convertê-las em um diagrama:
()
