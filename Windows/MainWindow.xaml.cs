using Policklinika.Pages;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace Policklinika
{
    /// <summary>
    /// Логика взаимодействия для MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
            AppFrame.frameMain = mainPan;
            mainPan.Navigate(new PagesLogin());

            /*
            DataTable dt_user = Select("SELECT * FROM [dbo].[Врач]"); // получаем данные из таблицы

            for (int i = 0; i < dt_user.Rows.Count; i++)
            { // перебираем данные
                MessageBox.Show(dt_user.Rows[i][0] + "|" + dt_user.Rows[i][1]); // выводим данные
            }
            */
        }

        private void MainPan_Navigated(object sender, NavigationEventArgs e)
        {

        }

        public DataTable Select(string selectSQL) // функция подключения к базе данных и обработка запросов
        {
            DataTable dataTable = new DataTable("dataBase"); // Создаём таблицу в базе

            SqlConnection sqlConnection = new SqlConnection("server=2_604_12;Trusted_Connection=Yes;DataBase=Поликлиника_Попов_Павел_И_32;"); // подключаемся в бд
            sqlConnection.Open(); // открываем БД
            SqlCommand sqlCommand = sqlConnection.CreateCommand(); // Создаём команду
            sqlCommand.CommandText = selectSQL; // Присваевам комманде текст
            SqlDataAdapter sqlDataAdapter = new SqlDataAdapter(sqlCommand); //Создаём обработчик
            sqlDataAdapter.Fill(dataTable); // Возращаем таблицу с результатом
            return dataTable;
        }

        private void Close_Click(object sender, RoutedEventArgs e)
        {
            this.Close();
        }
    }
}
