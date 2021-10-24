pragma ton-solidity >= 0.35.0;
pragma AbiHeader expire;

contract nftToken{

struct Token { // NFT токен драгоценного камня, отображается имя (алмаз, рубин ....) и количество карат.
    string name; // Название минерала.
    uint caratWeight; // Количество карат.
}

uint private price; // В этой переменной будет установленна цена за токен.

Token[] TokenArr; // Массив токенов.

function createToken(string name, uint carat) public { // Передаём в функцию имя и количество карат.
    tvm.accept(); 
    for(uint256 i = 0; i < TokenArr.length; i++) { // Проходимся по всему массиву токенов.
        require(TokenArr[i].name == name, 102); // Если в массиве уже имеется переданное имя, генерируем ошибку.
    }
    Token(name, carat); // Создание нового токена.

}

}