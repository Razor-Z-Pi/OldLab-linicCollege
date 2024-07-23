using Policklinika.Windos;
using System;
using System.Collections.Generic;
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

namespace Policklinika.Pages
{
    /// <summary>
    /// Логика взаимодействия для PagesLogin.xaml
    /// </summary>
    public partial class PagesLogin : Page
    {
        public PagesLogin()
        {
            InitializeComponent();
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            switch (doljnost.SelectedIndex)
            {
                case 0:
                    Doctor();
                    break;
                case 1:
                    Administrator();
                    break;
                default:
                    MessageBox.Show("Вы не кого не добавили!!!");
                    break;
            }
        }

        void Doctor()
        {
            Doctor doctor = new Doctor();
            MainWindow mainWindow = new MainWindow();
            doctor.Show();
        }

        void Administrator()
        {
            Admin admin = new Admin();
            admin.Show();
        }
    }
}
