Entidade multiplex2x1
A operação desta entidade deve ser a mesma de um multiplexador de 2 entradas para 1 saída. Sempre que os sinais de entrada mudam de valor, a saída é atualizada.

A entidade multiplex2x1 é composta de um parâmetro genérico N que define a largura dos sinais de entrada e saída. Os sinais de entrada que representam os operandos são nomeados "input0" e "input1"; o sinal de entrada que representa a seleção da operação a ser aplicada nos operados é nomeado "sel"; o sinal de saída que representa o resultado da operação aplicada é nomeado "output".

A tabela verdade abaixo define o comportamento da entidade multiplex2x1:

Comportamento	Valor de "sel"
output = input0	0
output = input1	1