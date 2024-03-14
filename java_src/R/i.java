package R;

import android.text.Editable;
import android.text.method.KeyListener;
import android.text.method.MetaKeyKeyListener;
import android.view.KeyEvent;
import android.view.View;
/* loaded from: classes.dex */
public final class i implements KeyListener {

    /* renamed from: a  reason: collision with root package name */
    public final KeyListener f1624a;

    /* renamed from: b  reason: collision with root package name */
    public final h f1625b;

    public i(KeyListener keyListener) {
        h hVar = new h();
        this.f1624a = keyListener;
        this.f1625b = hVar;
    }

    @Override // android.text.method.KeyListener
    public final void clearMetaKeyState(View view, Editable editable, int i4) {
        this.f1624a.clearMetaKeyState(view, editable, i4);
    }

    @Override // android.text.method.KeyListener
    public final int getInputType() {
        return this.f1624a.getInputType();
    }

    @Override // android.text.method.KeyListener
    public final boolean onKeyDown(View view, Editable editable, int i4, KeyEvent keyEvent) {
        boolean z4;
        this.f1625b.getClass();
        Object obj = androidx.emoji2.text.b.f3224a;
        if (i4 != 67 ? i4 != 112 ? false : androidx.emoji2.text.c.a(editable, keyEvent, true) : androidx.emoji2.text.c.a(editable, keyEvent, false)) {
            MetaKeyKeyListener.adjustMetaAfterKeypress(editable);
            z4 = true;
        } else {
            z4 = false;
        }
        return z4 || this.f1624a.onKeyDown(view, editable, i4, keyEvent);
    }

    @Override // android.text.method.KeyListener
    public final boolean onKeyOther(View view, Editable editable, KeyEvent keyEvent) {
        return this.f1624a.onKeyOther(view, editable, keyEvent);
    }

    @Override // android.text.method.KeyListener
    public final boolean onKeyUp(View view, Editable editable, int i4, KeyEvent keyEvent) {
        return this.f1624a.onKeyUp(view, editable, i4, keyEvent);
    }
}
