package R;

import android.text.Editable;
import android.text.Spannable;
import android.text.TextWatcher;
import android.widget.EditText;
/* loaded from: classes.dex */
public final class o implements TextWatcher {

    /* renamed from: d  reason: collision with root package name */
    public final EditText f1631d;

    /* renamed from: f  reason: collision with root package name */
    public n f1633f;

    /* renamed from: e  reason: collision with root package name */
    public final boolean f1632e = false;

    /* renamed from: g  reason: collision with root package name */
    public boolean f1634g = true;

    public o(EditText editText) {
        this.f1631d = editText;
    }

    @Override // android.text.TextWatcher
    public final void afterTextChanged(Editable editable) {
    }

    @Override // android.text.TextWatcher
    public final void beforeTextChanged(CharSequence charSequence, int i4, int i5, int i6) {
    }

    @Override // android.text.TextWatcher
    public final void onTextChanged(CharSequence charSequence, int i4, int i5, int i6) {
        boolean z4;
        if (this.f1631d.isInEditMode()) {
            return;
        }
        if (this.f1634g) {
            if (this.f1632e) {
                z4 = false;
                if (z4 && i5 <= i6 && (charSequence instanceof Spannable)) {
                    androidx.emoji2.text.b.a();
                    throw null;
                }
                return;
            }
            Object obj = androidx.emoji2.text.b.f3224a;
        }
        z4 = true;
        if (z4) {
            return;
        }
        androidx.emoji2.text.b.a();
        throw null;
    }
}
