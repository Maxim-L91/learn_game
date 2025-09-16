program learn_game;

	{Характеристики персонажа}
	type
		TCharacter = record
			name: string;
			strength: integer;
			health: integer;
			armor: integer;
			regeneration: integer;
			energy: real;
			maxEnergy: integer;
			amount_stats: integer;
		end;

	var
		{Характеристики персонажа}
		person, enemy: TCharacter;
		
		{Меню}
		choice: byte;

		{Имя персонажа}
		character_name: string;

		{Дуэли. Кнопка удара}
		fight_choice: char;

		{Дуэли. Здоровье врага после удара}
		fightEnemyHealth: integer;

		{Дуэли. Реген моего перса}
		fightPersonEnergy: real;

begin
	{Инициализация характеристик персонажа}
	{person.name := character_name;}
	person.strength := 10;
	person.health := 10;
	person.armor := 10;
	person.regeneration := 10;
	person.energy := 10;
	person.maxEnergy := 10;

	{Инициализация характеристик врага}
	enemy.name := 'Враг';
	enemy.strength := 10;
  enemy.health := 50;
	enemy.armor := 10;
  enemy.regeneration := 10;
  enemy.energy := 10;
	enemy.maxEnergy := 10;

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
			writeln('Имя: Max');
			writeln(' ');
			writeln('Сила: ', person.strength);
			writeln('Здоровье: ', person.health);
			writeln('Броня: ', person.armor);
			writeln('Регенерация: ', person.regeneration);
			writeln('Энергия: ', person.energy);
			person.amount_stats := person.strength + person.health + person.armor + person.regeneration + person.energy;
			writeln('Сумма: ', person.amount_stats);
		end
	
		{Дуэль}
		else if choice = 2 then
		begin
			writeln(' ');
			writeln('Имя: ', character_name);
			writeln('Здоровье: ', person.health);
			writeln('Энергия: ', person.energy);

			writeln(' ');
			writeln('Враг: ', enemy.name);
			writeln('Здоровье: ', enemy.health);
			
			fightEnemyHealth := enemy.health;
			fightPersonEnergy := person.energy;

			while (fightEnemyHealth > 0) and (person.health > 0) do
			begin
				writeln(' ');
				writeln('f - Ударить');
				readln(fight_choice);

				if (fight_choice = 'f') then
				begin
					{Система боя}
					fightEnemyHealth := fightEnemyHealth - person.strength;
					fightPersonEnergy := fightPersonEnergy / 100 * 4;

					if fightPersonEnergy <= 0 then
						fightPersonEnergy := 0;

					writeln(' ');
					writeln('Имя: ', character_name);
					writeln('Здоровье: ', person.health);
					writeln('Энергия: ', fightPersonEnergy);

					writeln(' ');
					writeln('Враг: ', enemy.name);
					writeln('Здоровье: ', fightEnemyHealth);
				end;
			end;

			if fightEnemyHealth <= 0 then
			begin
				writeln('Враг убит');
				choice := 1;
			end;
		end

		else if choice = 0 then
		begin
			writeln('Вы вышли из игры');
		end
		
		else
		begin
			writeln('Такой команды не существует');
		end
	until (choice = 0) or (choice = 2);
end.
