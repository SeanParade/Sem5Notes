# COMP3075
#### Week 5
Tue Oct  3 10:27:45 DST 2017

___

### Databases
#### SQLite
- Lightweight, database management system 
- database is just a file (much like how MS Access works)
- When you aren't using the database, it does not use any processing - Therefore, saving on battery
- Optimized for single user
- database file gets created at runtime and resides in an emulator on the device
- database is version controlled
- first step is to add a new java class that extends SQLiteOpenHelper

```Java
//db example
public ExampleDatabasHelper extends SQLiteOpenHelper {
	private static final String DB_NAME = "exampleDB" //dbname
	private static final int DB_VERSION = 1;

ExampleDatabaseHelper(Context context){
super(context,
	 DB_NAME, null, DB_VERSION);
	 }
	 
	 @override 
	 public void onCreate(SQLiteDatabase db)
	 {
		 db.execSQL("CREATE TABLE Drink("
		 + "_id INTEGER PRIMARY KEY AUTOINCREMENT, "
		 + "NAME TEXT, "
		 + "DESCRIPTION TEXT, "
		 + "IMAGE_RESOURCE_ID INTEGER);");
	 insertDrink(db, "Latte", "Espresso and steamed milk",
                 R.drawable.Latte);
     insertDrink(db, "Cappuccino", "Espresso and steamed " +
	             "milk foam", R.drawable.cappuccino);
	 }	 
```

- onCreate runs the first time the DB is made
- onUpgrade runs when the DB changes version
