package androidx.preference;

import X.DialogInterface$OnMultiChoiceClickListenerC0094q;
import android.os.Bundle;
import e.C0816h;
import e.C0820l;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Set;
/* loaded from: classes.dex */
public class MultiSelectListPreferenceDialogFragmentCompat extends PreferenceDialogFragmentCompat {

    /* renamed from: l  reason: collision with root package name */
    public final Set f3673l = new HashSet();

    /* renamed from: m  reason: collision with root package name */
    public boolean f3674m;

    /* renamed from: n  reason: collision with root package name */
    public CharSequence[] f3675n;

    /* renamed from: o  reason: collision with root package name */
    public CharSequence[] f3676o;

    @Override // androidx.preference.PreferenceDialogFragmentCompat
    public final void e(boolean z4) {
        if (z4 && this.f3674m) {
            MultiSelectListPreference multiSelectListPreference = (MultiSelectListPreference) b();
            multiSelectListPreference.callChangeListener(this.f3673l);
            multiSelectListPreference.a(this.f3673l);
        }
        this.f3674m = false;
    }

    @Override // androidx.preference.PreferenceDialogFragmentCompat
    public final void f(C0820l c0820l) {
        int length = this.f3676o.length;
        boolean[] zArr = new boolean[length];
        for (int i4 = 0; i4 < length; i4++) {
            zArr[i4] = ((HashSet) this.f3673l).contains(this.f3676o[i4].toString());
        }
        CharSequence[] charSequenceArr = this.f3675n;
        DialogInterface$OnMultiChoiceClickListenerC0094q dialogInterface$OnMultiChoiceClickListenerC0094q = new DialogInterface$OnMultiChoiceClickListenerC0094q(this);
        C0816h c0816h = c0820l.f8976a;
        c0816h.f8926m = charSequenceArr;
        c0816h.f8935v = dialogInterface$OnMultiChoiceClickListenerC0094q;
        c0816h.f8931r = zArr;
        c0816h.f8932s = true;
    }

    @Override // androidx.preference.PreferenceDialogFragmentCompat, androidx.fragment.app.DialogFragment, androidx.fragment.app.K
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle != null) {
            ((HashSet) this.f3673l).clear();
            this.f3673l.addAll(bundle.getStringArrayList("MultiSelectListPreferenceDialogFragmentCompat.values"));
            this.f3674m = bundle.getBoolean("MultiSelectListPreferenceDialogFragmentCompat.changed", false);
            this.f3675n = bundle.getCharSequenceArray("MultiSelectListPreferenceDialogFragmentCompat.entries");
            this.f3676o = bundle.getCharSequenceArray("MultiSelectListPreferenceDialogFragmentCompat.entryValues");
            return;
        }
        MultiSelectListPreference multiSelectListPreference = (MultiSelectListPreference) b();
        if (multiSelectListPreference.f3666j == null || multiSelectListPreference.f3667k == null) {
            throw new IllegalStateException("MultiSelectListPreference requires an entries array and an entryValues array.");
        }
        ((HashSet) this.f3673l).clear();
        this.f3673l.addAll(multiSelectListPreference.f3668l);
        this.f3674m = false;
        this.f3675n = multiSelectListPreference.f3666j;
        this.f3676o = multiSelectListPreference.f3667k;
    }

    @Override // androidx.preference.PreferenceDialogFragmentCompat, androidx.fragment.app.DialogFragment, androidx.fragment.app.K
    public final void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putStringArrayList("MultiSelectListPreferenceDialogFragmentCompat.values", new ArrayList<>(this.f3673l));
        bundle.putBoolean("MultiSelectListPreferenceDialogFragmentCompat.changed", this.f3674m);
        bundle.putCharSequenceArray("MultiSelectListPreferenceDialogFragmentCompat.entries", this.f3675n);
        bundle.putCharSequenceArray("MultiSelectListPreferenceDialogFragmentCompat.entryValues", this.f3676o);
    }
}
