# Packer

![licence](https://img.shields.io/github/license/JuniorTrojilio/Packer?style=flat-square)
![update](https://img.shields.io/github/last-commit/JuniorTrojilio/Packer?style=flat-square)
![size](https://img.shields.io/github/repo-size/JuniorTrojilio/Packer?style=flat-square)
***
`Firemonkey` `Visual Component Library`

## Ferramenta Zip com utilização de classes nativas Delphi 

Packer é uma ferramenta Zip para compactar e descompactar arquivos, criada com o objetivo de facilitar
a jornada dos desenvolvedores Delhi, ela implementa de maneira mais didática a classe nativa do delphi `TZipFile`
evitando o acoplamento e a utilização de componentes de terceiros que muitas das vezes criam dependências 
de DLLs indesejaveis que quando desatualizadas ou ausentes causam problemas.

Padrões utilizados:
  `Factory Method` `Composite` 
***
Necessária a declaração da Unit: *`Packer.Controller.Factory`*

A chamada da classe é iniciada através do método stático : 
```pascal
  TPackerFactory.New;
```
Após acessa-la terá visibilidade dos Methods `Zip` e `UnZip` responsáveis por realizar seus respectivos
métodos.

Os Samples estão disponíveis em [FMX](https://github.com/JuniorTrojilio/Packer/tree/master/Samples/Firemonkey) e [VCL](https://github.com/JuniorTrojilio/Packer/tree/master/Samples/VisualComponentLibrary).

#### OBS: Para compilar em FMX é necessário adicionar a diretiva `FMX` às opções do projeto.
