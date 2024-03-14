package androidx.fragment.app;

import android.app.Dialog;
import android.content.DialogInterface;
/* renamed from: androidx.fragment.app.s  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class DialogInterface$OnCancelListenerC0224s implements DialogInterface.OnCancelListener {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ DialogFragment f3491d;

    public DialogInterface$OnCancelListenerC0224s(DialogFragment dialogFragment) {
        this.f3491d = dialogFragment;
    }

    @Override // android.content.DialogInterface.OnCancelListener
    public final void onCancel(DialogInterface dialogInterface) {
        Dialog dialog;
        Dialog dialog2;
        dialog = this.f3491d.mDialog;
        if (dialog != null) {
            DialogFragment dialogFragment = this.f3491d;
            dialog2 = dialogFragment.mDialog;
            dialogFragment.onCancel(dialog2);
        }
    }
}
