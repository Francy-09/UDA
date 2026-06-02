using System;
using System.Diagnostics;
using System.IO;

class GameLauncher
{
    static void Main()
    {
        try
        {
            string exePath = AppDomain.CurrentDomain.BaseDirectory;
            string htmlPath = Path.Combine(exePath, "pages", "01_index.html");
            
            if (File.Exists(htmlPath))
            {
                Process.Start(new ProcessStartInfo
                {
                    FileName = htmlPath,
                    UseShellExecute = true
                });
            }
            else
            {
                System.Windows.Forms.MessageBox.Show(
                    "Game file not found: " + htmlPath,
                    "Error",
                    System.Windows.Forms.MessageBoxButtons.OK,
                    System.Windows.Forms.MessageBoxIcon.Error
                );
            }
        }
        catch (Exception ex)
        {
            System.Windows.Forms.MessageBox.Show(
                "Error launching game: " + ex.Message,
                "Error",
                System.Windows.Forms.MessageBoxButtons.OK,
                System.Windows.Forms.MessageBoxIcon.Error
            );
        }
    }
}
