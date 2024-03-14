package k;

import android.content.res.TypedArray;
import android.text.method.KeyListener;
import android.text.method.NumberKeyListener;
import android.util.AttributeSet;
import android.view.inputmethod.InputConnection;
import android.widget.EditText;
import d.C0792a;
/* renamed from: k.D  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1120D {

    /* renamed from: a  reason: collision with root package name */
    public final EditText f10753a;

    /* renamed from: b  reason: collision with root package name */
    public final R.c f10754b;

    public C1120D(EditText editText) {
        this.f10753a = editText;
        this.f10754b = new R.c(editText);
    }

    public final KeyListener a(KeyListener keyListener) {
        if (!(keyListener instanceof NumberKeyListener)) {
            this.f10754b.f1617a.getClass();
            if (keyListener instanceof R.i) {
                return keyListener;
            }
            if (keyListener == null) {
                return null;
            }
            return keyListener instanceof NumberKeyListener ? keyListener : new R.i(keyListener);
        }
        return keyListener;
    }

    public final void b(AttributeSet attributeSet, int i4) {
        TypedArray obtainStyledAttributes = this.f10753a.getContext().obtainStyledAttributes(attributeSet, C0792a.f8739i, i4, 0);
        try {
            boolean z4 = obtainStyledAttributes.hasValue(14) ? obtainStyledAttributes.getBoolean(14, true) : true;
            obtainStyledAttributes.recycle();
            R.o oVar = this.f10754b.f1617a.f1616b;
            if (oVar.f1634g != z4) {
                if (oVar.f1633f != null) {
                    androidx.emoji2.text.b.a();
                    throw null;
                }
                oVar.f1634g = z4;
                if (z4) {
                    androidx.emoji2.text.b.a();
                    throw null;
                }
            }
        } catch (Throwable th) {
            obtainStyledAttributes.recycle();
            throw th;
        }
    }

    public final InputConnection c(InputConnection inputConnection) {
        R.c cVar = this.f10754b;
        if (inputConnection == null) {
            cVar.getClass();
            return null;
        }
        R.a aVar = cVar.f1617a;
        aVar.getClass();
        if (!(inputConnection instanceof R.f)) {
            inputConnection = new R.f(aVar.f1615a, inputConnection);
        }
        return inputConnection;
    }
}
