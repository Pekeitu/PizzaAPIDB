using System;
using System.Collections.Generic;
using System.Linq;
using System.Data;
using System.Data.SqlClient;
using Dapper;

namespace TP1Dai.Models
{
    public static class db
    {
        private static string _connectionString = @"Server=A-PHZ2-AMI-003;DataBase=pizzaAPI;Trusted_Connection=True";

        public static List<Pizza> getAllPizzas()
        {
           List<Pizza> ListaPizzas  = new List<Pizza>();
            using(SqlConnection db = new SqlConnection(_connectionString)){
                string sp = "getAllPizzas";
                ListaPizzas = db.Query<Pizza>(sp, new {}, commandType: CommandType.StoredProcedure).ToList();
            }
            return ListaPizzas;
        }

        public static Pizza getPizzaById(int id)
        {
            using(SqlConnection db = new SqlConnection(_connectionString))
            {
                string sp = "getPizzaById";
                return db.QueryFirstOrDefault<Pizza>(sp, new {Id = id}, commandType: CommandType.StoredProcedure);
            }
        }

        public static int createPizza(Pizza pizza)
        {
            using(SqlConnection db = new SqlConnection(_connectionString))
            {
                string sp = "createPizza";
                return db.Execute(sp, pizza, commandType: CommandType.StoredProcedure); //Returns amount of affected rows
            }
        }

        public static int updatePizza(Pizza pizza)
        {
            using(SqlConnection db = new SqlConnection(_connectionString))
            {
                string sp = "updatePizza";
                return db.Execute(sp, pizza, commandType: CommandType.StoredProcedure); //Returns amount of affected rows
            }
        }

        public static int deletePizza(int id)
        {
            using(SqlConnection db = new SqlConnection(_connectionString)) 
            {
                string sp = "deletePizza";
                return db.Execute(sp, new {id}, commandType: CommandType.StoredProcedure); //Returns amount of affected rows
            }
        }
    
    }
}