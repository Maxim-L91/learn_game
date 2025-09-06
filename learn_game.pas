program learn_game;

	{Характеристики персонажа}
	type
		MyPerson = record
			strength: word;
			health: word;
			armor: word;
			regeneration: word;
			energy: word;
			amount_stats: integer;
		end;
	
	var
		{Характеристики персонажа}
		person: MyPerson;
		
		{Меню}
		choice: byte;

		{Имя персонажа}
		character_name: string;

begin
	{Инициализация характеристик персонажа}
	person.strength := 10;
	person.health := 10;
	person.armor := 10;
	person.regeneration := 10;
	person.energy := 10;

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
			writeln('Сила: ', person.strength);
			writeln('Здоровье: ', person.health);
			writeln('Броня: ', person.armor);
			writeln('Регенерация: ', person.regeneration);
			writeln('Энергия: ', person.energy);
			person.amount_stats := person.strength + person.health + person.armor + person.regeneration + person.energy;
			writeln('Сумма: ', person.amount_stats);
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
