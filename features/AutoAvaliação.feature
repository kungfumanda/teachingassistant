Feature: Autoavaliação

              As a: Estudante
              I want to: Adicionar à página de notas os conceitos que eu julgo merecer
              So that: Eu e meu professor possamos ter uma noção mais clara da relação entre o progresso que eu creio estar fazendo e os conceitos que estou conseguindo nas avaliações.

        Scenario: realizando autoavaliação
            Given Eu estou logada como “Ana”.
              And Eu estou na página de “Notas”.
              And Eu vejo que o espaço disponível para “Autoavaliação” está com “NI” para todas as três metas.
             When Eu preencho a coluna de “Autoavaliação” com “MA, MPA, MA”.
             Then Vejo a mensagem de “Autoavaliação bem-sucedida”.
              And Eu estou na página “Notas”.
              And Eu vejo que a coluna de “Autoavaliação” agora está preenchido.

        Scenario: tentando realizar autoavaliação com conceitos incompletas
            Given Eu estou logada como “Ana”
              And Estou na página “Notas”
              And Eu vejo que o espaço disponível para “Autoavaliação” está com “NI” para todas as três metas
             When Eu preencho a coluna de “Autoavaliação” com “MA, -, MA”
             Then Vejo a mensagem de erro “Autoavaliação não pode ser concluída”
              And Estou na página de “Notas”
              And Eu vejo que o espaço disponível para “Autoavaliação” continua preenchido com “NI”