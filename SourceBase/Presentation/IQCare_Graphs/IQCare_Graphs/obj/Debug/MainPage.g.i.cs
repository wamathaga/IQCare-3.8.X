﻿#pragma checksum "C:\Projects\IQCare 3.8.1\SourceBase\Presentation\IQCare_Graphs\IQCare_Graphs\MainPage.xaml" "{406ea660-64cf-4c82-b6f0-42d48172a799}" "F960D6FF62A1D420766A47B31C2FC6AB"
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.42000
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

using Microsoft.Windows.Controls.DataVisualization.Charting;
using System;
using System.Windows;
using System.Windows.Automation;
using System.Windows.Automation.Peers;
using System.Windows.Automation.Provider;
using System.Windows.Controls;
using System.Windows.Controls.Primitives;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Ink;
using System.Windows.Input;
using System.Windows.Interop;
using System.Windows.Markup;
using System.Windows.Media;
using System.Windows.Media.Animation;
using System.Windows.Media.Imaging;
using System.Windows.Resources;
using System.Windows.Shapes;
using System.Windows.Threading;


namespace IQCare_Graphs {
    
    
    public partial class MainPage : System.Windows.Controls.UserControl {
        
        internal System.Windows.Controls.Grid ctlGridChart;
        
        internal Microsoft.Windows.Controls.DataVisualization.Charting.Chart MFenollrd;
        
        private bool _contentLoaded;
        
        /// <summary>
        /// InitializeComponent
        /// </summary>
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        public void InitializeComponent() {
            if (_contentLoaded) {
                return;
            }
            _contentLoaded = true;
            System.Windows.Application.LoadComponent(this, new System.Uri("/IQCare_Graphs;component/MainPage.xaml", System.UriKind.Relative));
            this.ctlGridChart = ((System.Windows.Controls.Grid)(this.FindName("ctlGridChart")));
            this.MFenollrd = ((Microsoft.Windows.Controls.DataVisualization.Charting.Chart)(this.FindName("MFenollrd")));
        }
    }
}

