package j;

import android.content.DialogInterface;
import android.view.KeyEvent;
import android.view.View;
import android.view.Window;
import e.DialogInterfaceC0821m;
/* loaded from: classes.dex */
public final class p implements DialogInterface.OnKeyListener, DialogInterface.OnClickListener, DialogInterface.OnDismissListener, InterfaceC1071B {

    /* renamed from: d  reason: collision with root package name */
    public final C1097o f10589d;

    /* renamed from: e  reason: collision with root package name */
    public DialogInterfaceC0821m f10590e;

    /* renamed from: f  reason: collision with root package name */
    public C1093k f10591f;

    public p(C1097o c1097o) {
        this.f10589d = c1097o;
    }

    @Override // j.InterfaceC1071B
    public final void a(C1097o c1097o, boolean z4) {
        DialogInterfaceC0821m dialogInterfaceC0821m;
        if ((z4 || c1097o == this.f10589d) && (dialogInterfaceC0821m = this.f10590e) != null) {
            dialogInterfaceC0821m.dismiss();
        }
    }

    @Override // j.InterfaceC1071B
    public final boolean c(C1097o c1097o) {
        return false;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i4) {
        C1097o c1097o = this.f10589d;
        C1093k c1093k = this.f10591f;
        if (c1093k.f10556i == null) {
            c1093k.f10556i = new C1092j(c1093k);
        }
        c1097o.q(c1093k.f10556i.getItem(i4), null, 0);
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public final void onDismiss(DialogInterface dialogInterface) {
        this.f10591f.a(this.f10589d, true);
    }

    @Override // android.content.DialogInterface.OnKeyListener
    public final boolean onKey(DialogInterface dialogInterface, int i4, KeyEvent keyEvent) {
        Window window;
        View decorView;
        KeyEvent.DispatcherState keyDispatcherState;
        View decorView2;
        KeyEvent.DispatcherState keyDispatcherState2;
        if (i4 == 82 || i4 == 4) {
            if (keyEvent.getAction() == 0 && keyEvent.getRepeatCount() == 0) {
                Window window2 = this.f10590e.getWindow();
                if (window2 != null && (decorView2 = window2.getDecorView()) != null && (keyDispatcherState2 = decorView2.getKeyDispatcherState()) != null) {
                    keyDispatcherState2.startTracking(keyEvent, this);
                    return true;
                }
            } else if (keyEvent.getAction() == 1 && !keyEvent.isCanceled() && (window = this.f10590e.getWindow()) != null && (decorView = window.getDecorView()) != null && (keyDispatcherState = decorView.getKeyDispatcherState()) != null && keyDispatcherState.isTracking(keyEvent)) {
                this.f10589d.c(true);
                dialogInterface.dismiss();
                return true;
            }
        }
        return this.f10589d.performShortcut(i4, keyEvent, 0);
    }
}
