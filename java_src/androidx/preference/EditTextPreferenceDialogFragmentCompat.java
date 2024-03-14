package androidx.preference;

import X.RunnableC0084g;
import android.os.Bundle;
import android.os.SystemClock;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
/* loaded from: classes.dex */
public class EditTextPreferenceDialogFragmentCompat extends PreferenceDialogFragmentCompat {

    /* renamed from: l  reason: collision with root package name */
    public EditText f3651l;

    /* renamed from: m  reason: collision with root package name */
    public CharSequence f3652m;

    /* renamed from: n  reason: collision with root package name */
    public final RunnableC0084g f3653n = new RunnableC0084g(this);

    /* renamed from: o  reason: collision with root package name */
    public long f3654o = -1;

    @Override // androidx.preference.PreferenceDialogFragmentCompat
    public final void d(View view) {
        super.d(view);
        EditText editText = (EditText) view.findViewById(16908291);
        this.f3651l = editText;
        if (editText == null) {
            throw new IllegalStateException("Dialog view must contain an EditText with id @android:id/edit");
        }
        editText.requestFocus();
        this.f3651l.setText(this.f3652m);
        EditText editText2 = this.f3651l;
        editText2.setSelection(editText2.getText().length());
        ((EditTextPreference) b()).getClass();
    }

    @Override // androidx.preference.PreferenceDialogFragmentCompat
    public final void e(boolean z4) {
        if (z4) {
            String obj = this.f3651l.getText().toString();
            EditTextPreference editTextPreference = (EditTextPreference) b();
            editTextPreference.callChangeListener(obj);
            editTextPreference.a(obj);
        }
    }

    public final void g() {
        long j4 = this.f3654o;
        if (j4 != -1 && j4 + 1000 > SystemClock.currentThreadTimeMillis()) {
            EditText editText = this.f3651l;
            if (editText == null || !editText.isFocused()) {
                this.f3654o = -1L;
            } else if (((InputMethodManager) this.f3651l.getContext().getSystemService("input_method")).showSoftInput(this.f3651l, 0)) {
                this.f3654o = -1L;
            } else {
                this.f3651l.removeCallbacks(this.f3653n);
                this.f3651l.postDelayed(this.f3653n, 50L);
            }
        }
    }

    @Override // androidx.preference.PreferenceDialogFragmentCompat, androidx.fragment.app.DialogFragment, androidx.fragment.app.K
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle == null) {
            this.f3652m = ((EditTextPreference) b()).f3648j;
        } else {
            this.f3652m = bundle.getCharSequence("EditTextPreferenceDialogFragment.text");
        }
    }

    @Override // androidx.preference.PreferenceDialogFragmentCompat, androidx.fragment.app.DialogFragment, androidx.fragment.app.K
    public final void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putCharSequence("EditTextPreferenceDialogFragment.text", this.f3652m);
    }
}
