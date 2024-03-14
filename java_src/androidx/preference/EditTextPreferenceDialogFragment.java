package androidx.preference;

import android.os.Bundle;
import android.view.View;
import android.widget.EditText;
@Deprecated
/* loaded from: classes.dex */
public class EditTextPreferenceDialogFragment extends PreferenceDialogFragment {

    /* renamed from: l  reason: collision with root package name */
    public EditText f3649l;

    /* renamed from: m  reason: collision with root package name */
    public CharSequence f3650m;

    @Override // androidx.preference.PreferenceDialogFragment
    public final void b(View view) {
        super.b(view);
        EditText editText = (EditText) view.findViewById(16908291);
        this.f3649l = editText;
        editText.requestFocus();
        EditText editText2 = this.f3649l;
        if (editText2 == null) {
            throw new IllegalStateException("Dialog view must contain an EditText with id @android:id/edit");
        }
        editText2.setText(this.f3650m);
        EditText editText3 = this.f3649l;
        editText3.setSelection(editText3.getText().length());
    }

    @Override // androidx.preference.PreferenceDialogFragment
    @Deprecated
    public final void c(boolean z4) {
        if (z4) {
            String obj = this.f3649l.getText().toString();
            ((EditTextPreference) a()).callChangeListener(obj);
            ((EditTextPreference) a()).a(obj);
        }
    }

    @Override // androidx.preference.PreferenceDialogFragment, android.app.DialogFragment, android.app.Fragment
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle == null) {
            this.f3650m = ((EditTextPreference) a()).f3648j;
        } else {
            this.f3650m = bundle.getCharSequence("EditTextPreferenceDialogFragment.text");
        }
    }

    @Override // androidx.preference.PreferenceDialogFragment, android.app.DialogFragment, android.app.Fragment
    public final void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putCharSequence("EditTextPreferenceDialogFragment.text", this.f3650m);
    }
}
