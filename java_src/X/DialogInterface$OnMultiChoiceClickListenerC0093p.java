package X;

import android.content.DialogInterface;
import androidx.preference.MultiSelectListPreferenceDialogFragment;
import java.util.HashSet;
/* renamed from: X.p  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class DialogInterface$OnMultiChoiceClickListenerC0093p implements DialogInterface.OnMultiChoiceClickListener {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ MultiSelectListPreferenceDialogFragment f2017a;

    public DialogInterface$OnMultiChoiceClickListenerC0093p(MultiSelectListPreferenceDialogFragment multiSelectListPreferenceDialogFragment) {
        this.f2017a = multiSelectListPreferenceDialogFragment;
    }

    @Override // android.content.DialogInterface.OnMultiChoiceClickListener
    public final void onClick(DialogInterface dialogInterface, int i4, boolean z4) {
        if (z4) {
            MultiSelectListPreferenceDialogFragment multiSelectListPreferenceDialogFragment = this.f2017a;
            multiSelectListPreferenceDialogFragment.f3670m |= ((HashSet) multiSelectListPreferenceDialogFragment.f3669l).add(multiSelectListPreferenceDialogFragment.f3672o[i4].toString());
            return;
        }
        MultiSelectListPreferenceDialogFragment multiSelectListPreferenceDialogFragment2 = this.f2017a;
        multiSelectListPreferenceDialogFragment2.f3670m |= ((HashSet) multiSelectListPreferenceDialogFragment2.f3669l).remove(multiSelectListPreferenceDialogFragment2.f3672o[i4].toString());
    }
}
