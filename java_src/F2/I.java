package F2;

import android.text.Editable;
import android.text.TextWatcher;
import com.google.android.material.textfield.TextInputLayout;
/* loaded from: classes.dex */
public final class I implements TextWatcher {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ TextInputLayout f431d;

    public I(TextInputLayout textInputLayout) {
        this.f431d = textInputLayout;
    }

    @Override // android.text.TextWatcher
    public final void afterTextChanged(Editable editable) {
        TextInputLayout textInputLayout = this.f431d;
        textInputLayout.v(!textInputLayout.f8138z0, false);
        TextInputLayout textInputLayout2 = this.f431d;
        if (textInputLayout2.f8113n) {
            textInputLayout2.p(editable);
        }
        TextInputLayout textInputLayout3 = this.f431d;
        if (textInputLayout3.f8129v) {
            textInputLayout3.w(editable);
        }
    }

    @Override // android.text.TextWatcher
    public final void beforeTextChanged(CharSequence charSequence, int i4, int i5, int i6) {
    }

    @Override // android.text.TextWatcher
    public final void onTextChanged(CharSequence charSequence, int i4, int i5, int i6) {
    }
}
