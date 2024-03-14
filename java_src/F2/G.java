package F2;

import android.text.method.PasswordTransformationMethod;
import android.view.View;
import android.widget.EditText;
import com.android.systemui.shared.R;
/* loaded from: classes.dex */
public final class G extends w {

    /* renamed from: e  reason: collision with root package name */
    public final int f420e;

    /* renamed from: f  reason: collision with root package name */
    public EditText f421f;

    /* renamed from: g  reason: collision with root package name */
    public final F f422g;

    /* JADX WARN: Type inference failed for: r1v2, types: [F2.F] */
    public G(v vVar, int i4) {
        super(vVar);
        this.f420e = R.drawable.design_password_eye;
        this.f422g = new View.OnClickListener() { // from class: F2.F
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                G g4 = G.this;
                EditText editText = g4.f421f;
                if (editText == null) {
                    return;
                }
                int selectionEnd = editText.getSelectionEnd();
                EditText editText2 = g4.f421f;
                if (editText2 != null && (editText2.getTransformationMethod() instanceof PasswordTransformationMethod)) {
                    g4.f421f.setTransformationMethod(null);
                } else {
                    g4.f421f.setTransformationMethod(PasswordTransformationMethod.getInstance());
                }
                if (selectionEnd >= 0) {
                    g4.f421f.setSelection(selectionEnd);
                }
                g4.q();
            }
        };
        if (i4 != 0) {
            this.f420e = i4;
        }
    }

    @Override // F2.w
    public final void b() {
        q();
    }

    @Override // F2.w
    public final int c() {
        return R.string.password_toggle_content_description;
    }

    @Override // F2.w
    public final int d() {
        return this.f420e;
    }

    @Override // F2.w
    public final View.OnClickListener f() {
        return this.f422g;
    }

    @Override // F2.w
    public final boolean k() {
        return true;
    }

    @Override // F2.w
    public final boolean l() {
        EditText editText = this.f421f;
        return !(editText != null && (editText.getTransformationMethod() instanceof PasswordTransformationMethod));
    }

    @Override // F2.w
    public final void m(EditText editText) {
        this.f421f = editText;
        q();
    }

    @Override // F2.w
    public final void r() {
        EditText editText = this.f421f;
        if (editText != null && (editText.getInputType() == 16 || editText.getInputType() == 128 || editText.getInputType() == 144 || editText.getInputType() == 224)) {
            this.f421f.setTransformationMethod(PasswordTransformationMethod.getInstance());
        }
    }

    @Override // F2.w
    public final void s() {
        EditText editText = this.f421f;
        if (editText != null) {
            editText.setTransformationMethod(PasswordTransformationMethod.getInstance());
        }
    }
}
