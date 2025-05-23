using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL.Data
{
    public sealed class FileLoggerService:ILoggerService
    {
        private static readonly FileLoggerService _instance = new FileLoggerService(); //Singleton implementation
        private readonly string logFile = "log.txt";

        public FileLoggerService()
        {
            if (!File.Exists(logFile))
                File.Create(logFile).Close();
        }

        public static FileLoggerService Instance => _instance;

        public void Log(string message)
        {
            File.AppendAllText(logFile, $"{DateTime.Now}: {message}{Environment.NewLine}");
        }
    }
}
