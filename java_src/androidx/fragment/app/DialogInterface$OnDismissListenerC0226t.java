package androidx.fragment.app;

import android.app.Dialog;
import android.content.DialogInterface;
/* renamed from: androidx.fragment.app.t  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class DialogInterface$OnDismissListenerC0226t implements DialogInterface.OnDismissListener {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ DialogFragment f3510d;

    public DialogInterface$OnDismissListenerC0226t(DialogFragment dialogFragment) {
        this.f3510d = dialogFragment;
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public final void onDismiss(DialogInterface dialogInterface) {
        Dialog dialog;
        Dialog dialog2;
        dialog = this.f3510d.mDialog;
        if (dialog != null) {
            DialogFragment dialogFragment = this.f3510d;
            dialog2 = dialogFragment.mDialog;
            dialogFragment.onDismiss(dialog2);
        }
    }
}
