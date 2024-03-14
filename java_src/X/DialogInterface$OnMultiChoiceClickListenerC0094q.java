package X;

import android.content.DialogInterface;
import androidx.preference.MultiSelectListPreferenceDialogFragmentCompat;
import java.util.HashSet;
/* renamed from: X.q  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class DialogInterface$OnMultiChoiceClickListenerC0094q implements DialogInterface.OnMultiChoiceClickListener {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ MultiSelectListPreferenceDialogFragmentCompat f2018a;

    public DialogInterface$OnMultiChoiceClickListenerC0094q(MultiSelectListPreferenceDialogFragmentCompat multiSelectListPreferenceDialogFragmentCompat) {
        this.f2018a = multiSelectListPreferenceDialogFragmentCompat;
    }

    @Override // android.content.DialogInterface.OnMultiChoiceClickListener
    public final void onClick(DialogInterface dialogInterface, int i4, boolean z4) {
        if (z4) {
            MultiSelectListPreferenceDialogFragmentCompat multiSelectListPreferenceDialogFragmentCompat = this.f2018a;
            multiSelectListPreferenceDialogFragmentCompat.f3674m |= ((HashSet) multiSelectListPreferenceDialogFragmentCompat.f3673l).add(multiSelectListPreferenceDialogFragmentCompat.f3676o[i4].toString());
            return;
        }
        MultiSelectListPreferenceDialogFragmentCompat multiSelectListPreferenceDialogFragmentCompat2 = this.f2018a;
        multiSelectListPreferenceDialogFragmentCompat2.f3674m |= ((HashSet) multiSelectListPreferenceDialogFragmentCompat2.f3673l).remove(multiSelectListPreferenceDialogFragmentCompat2.f3676o[i4].toString());
    }
}
