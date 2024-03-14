package X;

import android.content.DialogInterface;
import androidx.preference.ListPreferenceDialogFragment;
/* renamed from: X.l  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class DialogInterface$OnClickListenerC0089l implements DialogInterface.OnClickListener {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ ListPreferenceDialogFragment f2014d;

    public DialogInterface$OnClickListenerC0089l(ListPreferenceDialogFragment listPreferenceDialogFragment) {
        this.f2014d = listPreferenceDialogFragment;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i4) {
        ListPreferenceDialogFragment listPreferenceDialogFragment = this.f2014d;
        listPreferenceDialogFragment.f3660l = i4;
        listPreferenceDialogFragment.onClick(dialogInterface, -1);
        dialogInterface.dismiss();
    }
}
