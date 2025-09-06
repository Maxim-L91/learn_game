program learn_game;
var
	{Меню}
	choice: byte;

	{Имя персонажа}
	character_name: string;

	{Статы персонажа}
	strength: word = 10;
	health: word = 10;
	armor: word = 10;
	regeneration: word = 10;
	energy: word = 10;
	amount_stats: integer;

begin
	writeln('Введите имя персонажа:');
	readln(character_name);

	{Главное меню}
	repeat
		writeln(' ');
		writeln('1. Мой персонаж');
		writeln('2. Бой');
		writeln('0. Выход');
		readln(choice);
		
		{Меню персонажа}
		if choice = 1 then
		begin
			writeln(' ');
			writeln('Имя: ', character_name);
			writeln(' ');
			writeln('Сила: ', strength);
			writeln('Здоровье: ', health);
			writeln('Броня: ', armor);
			writeln('Регенерация: ', regeneration);
			writeln('Энергия: ', energy);
			amount_stats := strength + health + armor + regeneration + energy;
			writeln('Сумма: ', amount_stats);
		end 
		else if choice = 0 then
		begin
			writeln('Вы вышли из игры');
		end
		else
		begin
			writeln('Такой команды не существует');
		end
	until choice = 0;
end.
