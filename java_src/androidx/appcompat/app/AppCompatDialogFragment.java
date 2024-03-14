package androidx.appcompat.app;

import android.app.Dialog;
import androidx.fragment.app.DialogFragment;
import e.DialogC0805F;
/* loaded from: classes.dex */
public class AppCompatDialogFragment extends DialogFragment {
    public AppCompatDialogFragment() {
    }

    @Override // androidx.fragment.app.DialogFragment
    public Dialog onCreateDialog() {
        return new DialogC0805F(getTheme(), getContext());
    }

    @Override // androidx.fragment.app.DialogFragment
    public final void setupDialog(Dialog dialog, int i4) {
        if (!(dialog instanceof DialogC0805F)) {
            super.setupDialog(dialog, i4);
            return;
        }
        DialogC0805F dialogC0805F = (DialogC0805F) dialog;
        if (i4 != 1 && i4 != 2) {
            if (i4 != 3) {
                return;
            }
            dialog.getWindow().addFlags(24);
        }
        dialogC0805F.f().s(1);
    }

    public AppCompatDialogFragment(int i4) {
        super(i4);
    }
}
