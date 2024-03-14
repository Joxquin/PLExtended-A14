package R;

import android.widget.EditText;
/* loaded from: classes.dex */
public final class a extends b {

    /* renamed from: a  reason: collision with root package name */
    public final EditText f1615a;

    /* renamed from: b  reason: collision with root package name */
    public final o f1616b;

    public a(EditText editText) {
        this.f1615a = editText;
        o oVar = new o(editText);
        this.f1616b = oVar;
        editText.addTextChangedListener(oVar);
        if (d.f1619b == null) {
            synchronized (d.f1618a) {
                if (d.f1619b == null) {
                    d.f1619b = new d();
                }
            }
        }
        editText.setEditableFactory(d.f1619b);
    }
}
