package androidx.fragment.app;

import android.app.Dialog;
import android.content.DialogInterface;
/* loaded from: classes.dex */
public final class r implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ DialogFragment f3490d;

    public r(DialogFragment dialogFragment) {
        this.f3490d = dialogFragment;
    }

    @Override // java.lang.Runnable
    public final void run() {
        DialogInterface.OnDismissListener onDismissListener;
        Dialog dialog;
        onDismissListener = this.f3490d.mOnDismissListener;
        dialog = this.f3490d.mDialog;
        onDismissListener.onDismiss(dialog);
    }
}
