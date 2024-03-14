package F2;

import android.content.Context;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.widget.EditText;
import com.google.android.material.internal.CheckableImageButton;
import com.google.android.material.textfield.TextInputLayout;
/* loaded from: classes.dex */
public abstract class w {

    /* renamed from: a  reason: collision with root package name */
    public final TextInputLayout f497a;

    /* renamed from: b  reason: collision with root package name */
    public final v f498b;

    /* renamed from: c  reason: collision with root package name */
    public final Context f499c;

    /* renamed from: d  reason: collision with root package name */
    public final CheckableImageButton f500d;

    public w(v vVar) {
        this.f497a = vVar.f477d;
        this.f498b = vVar;
        this.f499c = vVar.getContext();
        this.f500d = vVar.f482i;
    }

    public void a() {
    }

    public void b() {
    }

    public int c() {
        return 0;
    }

    public int d() {
        return 0;
    }

    public View.OnFocusChangeListener e() {
        return null;
    }

    public View.OnClickListener f() {
        return null;
    }

    public View.OnFocusChangeListener g() {
        return null;
    }

    public C0012k h() {
        return null;
    }

    public boolean i(int i4) {
        return true;
    }

    public boolean j() {
        return false;
    }

    public boolean k() {
        return this instanceof q;
    }

    public boolean l() {
        return false;
    }

    public void m(EditText editText) {
    }

    public void n(M.e eVar) {
    }

    public void o(AccessibilityEvent accessibilityEvent) {
    }

    public void p(boolean z4) {
    }

    public final void q() {
        this.f498b.f(false);
    }

    public void r() {
    }

    public void s() {
    }
}
