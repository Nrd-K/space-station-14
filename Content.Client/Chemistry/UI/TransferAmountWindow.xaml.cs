﻿using Robust.Client.AutoGenerated;
using Robust.Client.UserInterface.Controls;
using Robust.Client.UserInterface.CustomControls;
using Robust.Client.UserInterface.XAML;

namespace Content.Client.Chemistry.UI
{
    [GenerateTypedNameReferences]
    public sealed partial class TransferAmountWindow : DefaultWindow
    {
        private int _max = Int32.MaxValue;
        private int _min = 1;

        public TransferAmountWindow()
        {
            RobustXamlLoader.Load(this);
            AmountLineEdit.OnTextChanged += OnValueChanged;
        }

        public void SetBounds(int min, int max)
        {
          _min = min;
          _max = max;
          MinimumAmount.Text = Loc.GetString("comp-solution-transfer-set-amount-min", ("amount", _min));
          MaximumAmount.Text = Loc.GetString("comp-solution-transfer-set-amount-max", ("amount", _max));
        }

        private void OnValueChanged(LineEdit.LineEditEventArgs args)
        {
            if (!int.TryParse(AmountLineEdit.Text, out var amount)  || amount > _max || amount < _min)
                ApplyButton.Disabled = true;
            else 
                ApplyButton.Disabled = false; 
        }
    }
}
