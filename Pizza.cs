namespace TP1Dai;


public class Pizza
{   
    private int _id;
    private string _nombre;
    private float _precio;
    private bool _libreDeGluten;
    private string _descripcion;


    public Pizza()
    {
        id = 0;
        nombre="";
        precio = 0;
        libreDeGluten =true;
        descripcion="";
    }
    public Pizza(int id, string nombre, float precio, bool libreDeGluten, string descripcion)
    {
        _id = id;
        _nombre = nombre;
        _precio = precio;
        _libreDeGluten = libreDeGluten;
        _descripcion = descripcion;
    }

    public int id{ get; set; }

    public string nombre{ get; set; }

    public float precio{ get; set; } 

    public bool libreDeGluten{ get; set; } 

    public string descripcion{ get; set; }
}
