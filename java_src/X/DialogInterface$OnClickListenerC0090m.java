package X;

import android.content.DialogInterface;
import androidx.preference.ListPreferenceDialogFragmentCompat;
/* renamed from: X.m  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class DialogInterface$OnClickListenerC0090m implements DialogInterface.OnClickListener {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ ListPreferenceDialogFragmentCompat f2015d;

    public DialogInterface$OnClickListenerC0090m(ListPreferenceDialogFragmentCompat listPreferenceDialogFragmentCompat) {
        this.f2015d = listPreferenceDialogFragmentCompat;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i4) {
        ListPreferenceDialogFragmentCompat listPreferenceDialogFragmentCompat = this.f2015d;
        listPreferenceDialogFragmentCompat.f3663l = i4;
        listPreferenceDialogFragmentCompat.onClick(dialogInterface, -1);
        dialogInterface.dismiss();
    }
}
