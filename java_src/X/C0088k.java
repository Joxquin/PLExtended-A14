package X;

import android.text.TextUtils;
import androidx.preference.ListPreference;
import androidx.preference.Preference;
import com.android.systemui.shared.R;
/* renamed from: X.k  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0088k implements InterfaceC0100x {

    /* renamed from: a  reason: collision with root package name */
    public static C0088k f2013a;

    @Override // X.InterfaceC0100x
    public final CharSequence a(Preference preference) {
        ListPreference listPreference = (ListPreference) preference;
        return TextUtils.isEmpty(listPreference.c()) ? listPreference.getContext().getString(R.string.not_set) : listPreference.c();
    }
}
