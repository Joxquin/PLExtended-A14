package com.google.android.material.bottomsheet;

import android.app.Dialog;
import androidx.appcompat.app.AppCompatDialogFragment;
import n2.q;
/* loaded from: classes.dex */
public class BottomSheetDialogFragment extends AppCompatDialogFragment {
    public BottomSheetDialogFragment() {
    }

    @Override // androidx.appcompat.app.AppCompatDialogFragment, androidx.fragment.app.DialogFragment
    public final Dialog onCreateDialog() {
        return new q(getTheme(), getContext());
    }

    public BottomSheetDialogFragment(int i4) {
        super(i4);
    }
}
