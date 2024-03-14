package e;

import android.content.DialogInterface;
import android.os.Handler;
import android.os.Message;
import java.lang.ref.WeakReference;
/* renamed from: e.i  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class HandlerC0817i extends Handler {

    /* renamed from: a  reason: collision with root package name */
    public final WeakReference f8936a;

    public HandlerC0817i(DialogInterface dialogInterface) {
        this.f8936a = new WeakReference(dialogInterface);
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        int i4 = message.what;
        if (i4 == -3 || i4 == -2 || i4 == -1) {
            ((DialogInterface.OnClickListener) message.obj).onClick((DialogInterface) this.f8936a.get(), message.what);
        } else if (i4 != 1) {
        } else {
            ((DialogInterface) message.obj).dismiss();
        }
    }
}
