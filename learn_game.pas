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
	writeln('1. Мой персонаж');
	readln(choice);
	if choice = 1 then
	begin
		writeln('Имя: ', character_name);
		writeln('Сила: ', strength);
		writeln('Здоровье: ', health);
		writeln('Броня: ', armor);
		writeln('Регенерация: ', regeneration);
		writeln('Энергия: ', energy);
		amount_stats := strength + health + armor + regeneration + energy;
		writeln('Сумма: ', amount_stats )
	end
	else
		writeln('Такой команды не существует');
end.

