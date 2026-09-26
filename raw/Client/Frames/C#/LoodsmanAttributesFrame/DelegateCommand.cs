using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;

namespace LoodsmanAttributesFrame
{
    public class DelegateCommand : ICommand
    {
        private Func<bool> _canExecute;
        private Action<object> _execute;

        public DelegateCommand(Func<bool> canExecute, Action<object> execute)
        {
            _canExecute = canExecute;
            _execute = execute ?? throw new ArgumentNullException(nameof(execute));
        }

        public DelegateCommand(Action<object> execute) : this(null, execute) { }

        public event EventHandler CanExecuteChanged;

        public bool CanExecute(object parameter) => _canExecute == null || _canExecute();
        public void Execute(object parameter) => _execute(parameter);
    }
}
