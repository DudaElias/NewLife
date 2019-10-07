public class Nivel
{

	protected int nivel;
	protected int exercicios;
	protected String intensidadeExercicio;
	protected int junkFood;

	public Nivel(String[] r, int e; String i; int j)
	{
		restricoes = r;
		exercicios = e;
		intensidadeExercicio = i;
		junkFood = j;
	}

	public Nivel()
	{
		nivel = null;
		restricoes = null;
		exercicios = null;
		instensidade0Exercicio = null;
		junkFood = null;
	}

	public int DeterminarNivel()
	{
		if(intensidadeExercicio == "Ausência" && junkFood > 10 && exercicios = 0)
			return nivel = 1;
		if(intensidadeExercicio == "Intenso" && junkFood <= 1 && exercicios > 5)
			return nivel = 10;
		if(intensidadeExercicio == "Moderado" && junkFood > 5 && (exercicios == 2 || exercicios == 3))
			return nivel = 2;
		if(intensidadeExercicio == "Moderado" && junkFood <= 5 && (exercicios == 2 || exercicios == 3))
			return nivel = 3;
	}
}