package X;

import android.text.TextUtils;
import androidx.preference.EditTextPreference;
import androidx.preference.Preference;
import com.android.systemui.shared.R;
/* renamed from: X.f  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0083f implements InterfaceC0100x {

    /* renamed from: a  reason: collision with root package name */
    public static C0083f f2003a;

    @Override // X.InterfaceC0100x
    public final CharSequence a(Preference preference) {
        EditTextPreference editTextPreference = (EditTextPreference) preference;
        return TextUtils.isEmpty(editTextPreference.f3648j) ? editTextPreference.getContext().getString(R.string.not_set) : editTextPreference.f3648j;
    }
}
