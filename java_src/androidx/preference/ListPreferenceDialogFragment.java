package androidx.preference;

import X.DialogInterface$OnClickListenerC0089l;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.os.Bundle;
@Deprecated
/* loaded from: classes.dex */
public class ListPreferenceDialogFragment extends PreferenceDialogFragment {

    /* renamed from: l  reason: collision with root package name */
    public int f3660l;

    /* renamed from: m  reason: collision with root package name */
    public CharSequence[] f3661m;

    /* renamed from: n  reason: collision with root package name */
    public CharSequence[] f3662n;

    @Override // androidx.preference.PreferenceDialogFragment
    @Deprecated
    public final void c(boolean z4) {
        int i4;
        ListPreference listPreference = (ListPreference) a();
        if (!z4 || (i4 = this.f3660l) < 0) {
            return;
        }
        String charSequence = this.f3662n[i4].toString();
        listPreference.callChangeListener(charSequence);
        listPreference.d(charSequence);
    }

    @Override // androidx.preference.PreferenceDialogFragment
    public final void d(AlertDialog.Builder builder) {
        builder.setSingleChoiceItems(this.f3661m, this.f3660l, new DialogInterface$OnClickListenerC0089l(this));
        builder.setPositiveButton((CharSequence) null, (DialogInterface.OnClickListener) null);
    }

    @Override // androidx.preference.PreferenceDialogFragment, android.app.DialogFragment, android.app.Fragment
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle != null) {
            this.f3660l = bundle.getInt("ListPreferenceDialogFragment.index", 0);
            this.f3661m = bundle.getCharSequenceArray("ListPreferenceDialogFragment.entries");
            this.f3662n = bundle.getCharSequenceArray("ListPreferenceDialogFragment.entryValues");
            return;
        }
        ListPreference listPreference = (ListPreference) a();
        if (listPreference.f3655j == null || listPreference.f3656k == null) {
            throw new IllegalStateException("ListPreference requires an entries array and an entryValues array.");
        }
        this.f3660l = listPreference.a(listPreference.f3657l);
        this.f3661m = listPreference.f3655j;
        this.f3662n = listPreference.f3656k;
    }

    @Override // androidx.preference.PreferenceDialogFragment, android.app.DialogFragment, android.app.Fragment
    public final void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putInt("ListPreferenceDialogFragment.index", this.f3660l);
        bundle.putCharSequenceArray("ListPreferenceDialogFragment.entries", this.f3661m);
        bundle.putCharSequenceArray("ListPreferenceDialogFragment.entryValues", this.f3662n);
    }
}
