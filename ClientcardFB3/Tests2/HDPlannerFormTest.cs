﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Moq;
using NUnit.Framework;
using NUnit.Extensions.Forms;
using System.Windows.Forms;
using System.Data;

namespace ClientcardFB3.Tests
{
    [TestFixture]
    class HDPlannerFormTest
    {
        [Test]
        public void FillFilterByComboTest()
        {
            HDPlannerForm planForm = new HDPlannerForm(new MainForm(new LoginForm()), new HDRoutes("", new Volunteers("")), new EditVolunteerForm(""));

            ComboBox cbo = new ComboBox();

            // Set up the data table with information to test the function
            DataTable inTable = new DataTable();
            inTable.Columns.Add("COLUMN_NAME");
            string[] itemsList = new string[] { "1st", "2nd", "something", "item" };
            foreach (string item in itemsList)
            {
                inTable.Rows.Add(new string[] { item });
            }

            //planForm
        }
     /*   [Test]
        public void FillFilterByComboTest()
        {
            AutoMocker planFormMoq = new AutoMocker();
            HDPlannerForm planForm = planFormMoq.CreateInstance<HDPlannerForm>();
            planFormMoq.GetMock<MainForm>();
            planFormMoq.GetMock<HDRoutes>();
            planFormMoq.GetMock<EditVolunteerForm>();

            // planForm.Fi
            //HDPlannerForm planForm = new HDPlannerForm(new MainForm(new LoginForm()), new HDRoutes("", new Volunteers("")), new EditVolunteerForm(""));
        
            // init
            mocker = new AutoMoqer();
 
            // mock a Banana Cake Factory
            var cakeFac = mocker.Create<BananaCakeFactory>();
 
            // inject our IRepo
            mocker.GetMock<IBananaRepo>();
 
            // do work
            var result = cakeFac.Bake();
        }*/
    }
}