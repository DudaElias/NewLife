public class Nivel
{

	protected int nivel;
	protected int exercicios;
	protected int intensidadeExercicio;
	protected int junkFood;

	public Nivel(int e; int i; int j)
	{
		exercicios = e;
		intensidadeExercicio = i;
		junkFood = j;
	}

	public Nivel()
	{
		nivel = null;
		exercicios = null;
		instensidadeExercicio = null;
		junkFood = null;
	}

	public int DeterminarNivel()
	{
		if(intensidadeExercicio == 0 && exercicios == 0 && junkFood > 10) // n�vel 1
			return 1;
		if(intensidadeExercicio == 1 && (exercicios == 2 || exercicios == 3) && junkFood > 10) //n�vel 2
			return 2;
		if(intensidadeExercicio == 1 && exercicios >=4 && junkFood > 10)
			return 2;
		if(intensidadeExercicio == 2 && (exercicios == 2 || exercicios == 3) && junkFood > 10)
			return 2;
		if(intensidadeExercicio == 2 && exercicios >=4 && junkFood > 10)
			return 2;
		if(intensidadeExercicio == 0 && exercicios == 0 && junkFood >= 5) //n�vel 3
			return 3;
		if(intensidadeExercicio == 1 && (exercicios == 2 || exercicios == 3) && junkFood >= 5)
			return 3;
		if(intensidadeExercicio == 2 && (exercicios == 2 || exercicios == 3) && junkFood >= 5)
			return 3;
		if(intensidadeExercicio == 0 && exercicios == 0 && junkFood < 5) //n�vel 4
			return 4;
		if(intensidadeExercicio == 1 && exercicios >=4 && junkFood >=5)
			return 4;
		if(intensidadeExercicio == 2 && exercicios >=4 && junkFood >=5)
			return 4;
		if(intensidadeExercicio == 0 && exercicios == 0 && junkFood <=1) //n�vel 5
			return 5;
		if(intensidadeExercicio == 1 && (exercicios == 2 || exercicios == 3) && junkFood < 5)
			return 5;
		if(intensidadeExercicio == 1 && exercicios >=4 && junkFood < 5) //n�vel 6
			return 6;
		if(intensidadeExercicio == 2 && (exercicios == 2 || exercicios == 3) && junkFood < 5) // n�vel 7
			return 7;
		if(intensidadeExercicio == 2 && exercicios >=4 && junkFood < 5) //n�vel 8
			return 8;
		if(intensidadeExercicio == 1 && (exercicios == 2 || exercicios == 3) && junkFood <=1)//n�vel 9
			return 9;
		if(intensidadeExercicio == 2 && (exercicios == 2 || exercicios == 3) && junkFood <=1)
			return 9;
		if(intensidadeExercicio == 1 && exercicios >=4 && junkFood <=1) //n�vel 10
			return 10;
		if(intensidadeExercicio == 2 && exercicios >=4 && junkFood <=1)
			return 10;
	}
}