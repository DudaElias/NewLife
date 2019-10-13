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
		if(exercicios == 0 && junkFood > 10) // nível 1
			return 1;
		if((exercicios == 2 || exercicios == 3) && junkFood > 10) //nível 2
			return 2;
		if(exercicios >=4 && junkFood > 10)
			return 2;
		if(exercicios == 0 && junkFood >= 5) //nível 3
			return 3;
		if((exercicios == 2 || exercicios == 3) && junkFood >= 5)//nível 4
			return 4;
		if(exercicios == 0 && junkFood < 5) //nível 5
			return 5;
		if(exercicios >=4 && junkFood >=5)
			return 5;
		if(exercicios == 0 && junkFood <=1) //nível 6
			return 6;
		if((exercicios == 2 || exercicios == 3) && junkFood < 5)//nivel 7
			return 7;
		if(exercicios >=4 && junkFood < 5) //nível 8
			return 8;
		if((exercicios == 2 || exercicios == 3) && junkFood <=1)//nível 9
			return 9;
		if(exercicios >=4 && junkFood <=1) //nível 10
			return 10;
	}
}