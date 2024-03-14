package androidx.preference;

import X.DialogInterface$OnClickListenerC0090m;
import android.os.Bundle;
import e.C0816h;
import e.C0820l;
/* loaded from: classes.dex */
public class ListPreferenceDialogFragmentCompat extends PreferenceDialogFragmentCompat {

    /* renamed from: l  reason: collision with root package name */
    public int f3663l;

    /* renamed from: m  reason: collision with root package name */
    public CharSequence[] f3664m;

    /* renamed from: n  reason: collision with root package name */
    public CharSequence[] f3665n;

    @Override // androidx.preference.PreferenceDialogFragmentCompat
    public final void e(boolean z4) {
        int i4;
        if (!z4 || (i4 = this.f3663l) < 0) {
            return;
        }
        String charSequence = this.f3665n[i4].toString();
        ListPreference listPreference = (ListPreference) b();
        listPreference.callChangeListener(charSequence);
        listPreference.d(charSequence);
    }

    @Override // androidx.preference.PreferenceDialogFragmentCompat
    public final void f(C0820l c0820l) {
        CharSequence[] charSequenceArr = this.f3664m;
        int i4 = this.f3663l;
        DialogInterface$OnClickListenerC0090m dialogInterface$OnClickListenerC0090m = new DialogInterface$OnClickListenerC0090m(this);
        C0816h c0816h = c0820l.f8976a;
        c0816h.f8926m = charSequenceArr;
        c0816h.f8928o = dialogInterface$OnClickListenerC0090m;
        c0816h.f8934u = i4;
        c0816h.f8933t = true;
        c0816h.f8920g = null;
        c0816h.f8921h = null;
    }

    @Override // androidx.preference.PreferenceDialogFragmentCompat, androidx.fragment.app.DialogFragment, androidx.fragment.app.K
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle != null) {
            this.f3663l = bundle.getInt("ListPreferenceDialogFragment.index", 0);
            this.f3664m = bundle.getCharSequenceArray("ListPreferenceDialogFragment.entries");
            this.f3665n = bundle.getCharSequenceArray("ListPreferenceDialogFragment.entryValues");
            return;
        }
        ListPreference listPreference = (ListPreference) b();
        if (listPreference.f3655j == null || listPreference.f3656k == null) {
            throw new IllegalStateException("ListPreference requires an entries array and an entryValues array.");
        }
        this.f3663l = listPreference.a(listPreference.f3657l);
        this.f3664m = listPreference.f3655j;
        this.f3665n = listPreference.f3656k;
    }

    @Override // androidx.preference.PreferenceDialogFragmentCompat, androidx.fragment.app.DialogFragment, androidx.fragment.app.K
    public final void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putInt("ListPreferenceDialogFragment.index", this.f3663l);
        bundle.putCharSequenceArray("ListPreferenceDialogFragment.entries", this.f3664m);
        bundle.putCharSequenceArray("ListPreferenceDialogFragment.entryValues", this.f3665n);
    }
}
