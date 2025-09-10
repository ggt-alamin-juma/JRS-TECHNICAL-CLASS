using System;
using System.Collections.Generic;
using System.Runtime.Serialization.Json;
using System.Runtime.Serialization;
using System.IO;
using System.Text;

namespace DebuggingMasteryLab
{
    class Program
    {
        static void Main(string[] args)
        {
            var localDB = LoadRecords();
            string data = GetJsonData();
            User[] users = ReadToObject(data);
            UpdateRecords(localDB, users);
            
            for (int i = 0; i < users.Length; i++)
            {
                List<User> result = localDB.FindAll(delegate (User u) {
                    return u.lastname == users[i].lastname;
                });
                foreach (var item in result)
                {
                    Console.WriteLine($"Matching Record, got name={item.firstname}, lastname={item.lastname}, age={item.totalpoints}");
                }
            }
            Console.ReadKey();
        }

        public static User[] ReadToObject(string json)
        {
            User[] users = { };
            try
            {
                MemoryStream ms = new MemoryStream(Encoding.UTF8.GetBytes(json));
                DataContractJsonSerializer ser = new DataContractJsonSerializer(typeof(User[]));
                users = ser.ReadObject(ms) as User[];
                ms.Close();
            }
            catch (SerializationException ex)
            {
                Console.WriteLine($"❌ JSON parsing failed: {ex.Message}");
                return new User[] { };
            }
            return users;
        }

        public static string GetJsonData()
        {
            string str = "[{\"points\":40,\"firstname\":\"Fred\",\"lastname\":\"Smith\"},{\"points\":25,\"firstname\":\"John\",\"lastname\":\"Jackson\"}]";
            return str;
        }

        public static List<User> LoadRecords()
        {
            var db = new List<User> { };
            User user1 = new User();
            user1.firstname = "Joe";
            user1.lastname = "Smith";
            user1.totalpoints = 41;
            db.Add(user1);
            User user2 = new User();
            user2.firstname = "Pete";
            user2.lastname = "Peterson";
            user2.totalpoints = 30;
            db.Add(user2);
            return db;
        }

        public static void UpdateRecords(List<User> db, User[] users)
        {
            bool existingUser = false;
            for (int i = 0; i < users.Length; i++)
            {
                foreach (var item in db)
                {
                    if (item.lastname == users[i].lastname && item.firstname == users[i].firstname)
                    {
                        existingUser = true;
                        item.totalpoints += users[i].points;
                    }
                }
                if (existingUser == false)
                {
                    User user = new User();
                    user.firstname = users[i].firstname;
                    user.lastname = users[i].lastname;
                    user.totalpoints = users[i].points;
                    db.Add(user);
                }
            }
        }
    }

    [DataContract]
    internal class User
    {
        [DataMember]
        internal string firstname;
        [DataMember]
        internal string lastname;
        [DataMember]
        internal int points; // Fixed from Lab 1
        [DataMember]
        internal int totalpoints;
    }
}
