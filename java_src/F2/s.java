package F2;

import android.widget.EditText;
import com.google.android.material.textfield.TextInputLayout;
/* loaded from: classes.dex */
public final class s implements M {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ v f471a;

    public s(v vVar) {
        this.f471a = vVar;
    }

    @Override // F2.M
    public final void a(TextInputLayout textInputLayout) {
        v vVar = this.f471a;
        EditText editText = vVar.f492s;
        if (editText == textInputLayout.f8099g) {
            return;
        }
        if (editText != null) {
            editText.removeTextChangedListener(vVar.f495v);
            if (vVar.f492s.getOnFocusChangeListener() == vVar.c().e()) {
                vVar.f492s.setOnFocusChangeListener(null);
            }
        }
        EditText editText2 = textInputLayout.f8099g;
        vVar.f492s = editText2;
        if (editText2 != null) {
            editText2.addTextChangedListener(vVar.f495v);
        }
        vVar.c().m(vVar.f492s);
        vVar.i(vVar.c());
    }
}
