using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data.SqlClient;
using System.Threading;
namespace Mela
{
    public partial class Form1 : Form
    {
        public static string set1 = "";
        public static string set2 = "";
        public static string set3 = "";
        public static string set4 = "";
        public static string set5 = "";
        public static string set6 = "";
        public static int set7 = 0;
        public static int set8 = 0;
        public static int set9 = 0;
        public static int set10 = 0;
        public static int set11 =0 ;
        public static int set12 =0 ;
        DataSet ds = new DataSet();
        public Form1()
        {
            Thread t = new Thread(new ThreadStart(splashstart));
            t.Start();
            Thread.Sleep(5000);
            InitializeComponent();
            t.Abort();
        }
        public void splashstart()
        {
            Application.Run(new Form6());

        }
        SqlConnection cn = new SqlConnection("server=Localhost;initial catalog=Practice;trusted_connection=true");
        private void Form1_Load(object sender, EventArgs e)
        {
            try
            {
                // TODO: This line of code loads data into the 'practiceDataSet2.shopstatus' table. You can move, or remove it, as needed.
                this.shopstatusTableAdapter.Fill(this.practiceDataSet2.shopstatus);
                
            }
            catch (Exception g)
            {
                MessageBox.Show(g.Message);
            }
        }

        private void button2_Click(object sender, EventArgs e)
        {
            Form2 f1 = new Form2();
            f1.Show();
        }

        private void button3_Click(object sender, EventArgs e)
        {
            Form3 f2 = new Form3();
            f2.Show();
        }

        private void button4_Click(object sender, EventArgs e)
        {
            Form4 f2 = new Form4();
            f2.Show();
        }

        private void button8_Click(object sender, EventArgs e)
        {
            admin a = new admin();
            a.Show();
        }

        private void button3_Click_1(object sender, EventArgs e)
        {
            Form3 f2 = new Form3();
            f2.Show();
        }

        

        private void button2_Click_1(object sender, EventArgs e)
        {
            Form2 f1 = new Form2();
            f1.Show();
        }

        private void button4_Click_1(object sender, EventArgs e)
        {
            Form4 f2 = new Form4();
            f2.Show();
        }

        private void button8_Click_1(object sender, EventArgs e)
        {
            admin a = new admin();
            a.Show();
        }

        

        private void radioButton1_CheckedChanged(object sender, EventArgs e)
        {
            try
            {
                SqlDataAdapter sda = new SqlDataAdapter("select * from shopstatus where status='Reserved' ", cn);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                dataGridView1.DataSource = dt;
            }
            catch (Exception r)
            {
                MessageBox.Show(r.Message);
            }
        }

        private void radioButton2_CheckedChanged(object sender, EventArgs e)
        {
            try
            {
                SqlDataAdapter sda = new SqlDataAdapter("select * from shopstatus where status='UnReserved' ", cn);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                dataGridView1.DataSource = dt;
            }
            catch (Exception r)
            {
                MessageBox.Show(r.Message);
            }
        }

        private void button5_Click(object sender, EventArgs e)
        {
            Form5 f1 = new Form5();
            f1.Show();
        }

        private void button7_Click(object sender, EventArgs e)
        {
            Form7 f1 = new Form7();
            f1.Show();

        }

        private void button1_Click(object sender, EventArgs e)
        {
            int a = 0; ;
            int b=0;
            int c=0;
            int d=0;
            int i=0;
            int f=0;


            try
            {

                int no = int.Parse(textBox1.Text);
                if (no > 0)
                {

                    SqlConnection cn = new SqlConnection("server=Localhost;initial catalog=Practice;trusted_connection=true");
                    cn.Open();

                    string Name = string.Format("  Select name,fname,address,shopnofrom,shopnoto,blockno,id from Registration where shopnofrom={0} ", no);
                    SqlCommand cmd = new SqlCommand(Name, cn);

                    SqlDataReader rec = cmd.ExecuteReader();
                    if (rec.Read())
                    {

                        string name = string.Format(" {0} ", rec.GetValue(0));
                        set1 = name;
                        string fname = string.Format(" {0} ", rec.GetValue(1));
                        set2 = fname;
                        string add = string.Format(" {0} ", rec.GetValue(2));
                        set3 = add;

                        string from = string.Format(" {0} ", rec.GetValue(3));
                        set4 = from;
                        string to = string.Format(" {0} ", rec.GetValue(4));
                        set5 = to;
                        string block = string.Format(" {0} ", rec.GetValue(5));
                        set6 = block;
                        int id = int.Parse(string.Format(" {0} ", rec.GetValue(6)));
                        set11 = id;
                        Search s = new Search();
                        s.Show();
                        rec.Close();
                    }
                    else
                    {
                        rec.Close();
                        MessageBox.Show("no record found");
                    }

                    Name = string.Format("  Select * from Registration where shopnofrom={0} ", no);
                    cmd = new SqlCommand(Name, cn);
                    
                    rec = cmd.ExecuteReader();
                    if (rec.Read())
                    {
                        
                         a = 1;
                        set7 = a;
                        rec.Close();
                    }
                    else
                    {
                        a = 0;
                        set7 = a;
                        rec.Close();
                    }

                    Name = string.Format("  Select * from Reservation where shopnofrom={0} ", no);
                    cmd = new SqlCommand(Name, cn);

                    rec = cmd.ExecuteReader();
                    if (rec.Read())
                    {

                        b = 1;
                        set8 = b;
                        rec.Close();
                    }
                    else
                    {
                        b = 0;
                        set8 = b;
                        rec.Close();
                    }

                    Name = string.Format("  Select * from Payment where shopnofrom={0} ", no);
                    cmd = new SqlCommand(Name, cn);

                    rec = cmd.ExecuteReader();
                    if (rec.Read())
                    {

                        c = 1;
                        set9 = c;
                        rec.Close();
                    }
                    else
                    {
                        c = 0;
                        set9 = c;
                        rec.Close();
                    }

                    Name = string.Format("  Select * from Extraarea where shopnofrom={0} ", no);
                    cmd = new SqlCommand(Name, cn);

                    rec = cmd.ExecuteReader();
                    if (rec.Read())
                    {

                        d = 1;
                        set10 = d;
                        rec.Close();
                    }
                    else
                    {
                        d = 0;
                        set10 = d;
                        rec.Close();
                    }

                }

                }
            catch (Exception g)
            {
                MessageBox.Show(g.Message);
            }

        }
    }
}
