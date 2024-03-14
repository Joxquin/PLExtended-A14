package androidx.preference;

import X.DialogInterface$OnMultiChoiceClickListenerC0093p;
import android.app.AlertDialog;
import android.os.Bundle;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Set;
@Deprecated
/* loaded from: classes.dex */
public class MultiSelectListPreferenceDialogFragment extends PreferenceDialogFragment {

    /* renamed from: l  reason: collision with root package name */
    public final Set f3669l = new HashSet();

    /* renamed from: m  reason: collision with root package name */
    public boolean f3670m;

    /* renamed from: n  reason: collision with root package name */
    public CharSequence[] f3671n;

    /* renamed from: o  reason: collision with root package name */
    public CharSequence[] f3672o;

    @Override // androidx.preference.PreferenceDialogFragment
    @Deprecated
    public final void c(boolean z4) {
        MultiSelectListPreference multiSelectListPreference = (MultiSelectListPreference) a();
        if (z4 && this.f3670m) {
            Set set = this.f3669l;
            multiSelectListPreference.callChangeListener(set);
            multiSelectListPreference.a(set);
        }
        this.f3670m = false;
    }

    @Override // androidx.preference.PreferenceDialogFragment
    public final void d(AlertDialog.Builder builder) {
        int length = this.f3672o.length;
        boolean[] zArr = new boolean[length];
        for (int i4 = 0; i4 < length; i4++) {
            zArr[i4] = ((HashSet) this.f3669l).contains(this.f3672o[i4].toString());
        }
        builder.setMultiChoiceItems(this.f3671n, zArr, new DialogInterface$OnMultiChoiceClickListenerC0093p(this));
    }

    @Override // androidx.preference.PreferenceDialogFragment, android.app.DialogFragment, android.app.Fragment
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle != null) {
            ((HashSet) this.f3669l).clear();
            this.f3669l.addAll(bundle.getStringArrayList("MultiSelectListPreferenceDialogFragment.values"));
            this.f3670m = bundle.getBoolean("MultiSelectListPreferenceDialogFragment.changed", false);
            this.f3671n = bundle.getCharSequenceArray("MultiSelectListPreferenceDialogFragment.entries");
            this.f3672o = bundle.getCharSequenceArray("MultiSelectListPreferenceDialogFragment.entryValues");
            return;
        }
        MultiSelectListPreference multiSelectListPreference = (MultiSelectListPreference) a();
        if (multiSelectListPreference.f3666j == null || multiSelectListPreference.f3667k == null) {
            throw new IllegalStateException("MultiSelectListPreference requires an entries array and an entryValues array.");
        }
        ((HashSet) this.f3669l).clear();
        this.f3669l.addAll(multiSelectListPreference.f3668l);
        this.f3670m = false;
        this.f3671n = multiSelectListPreference.f3666j;
        this.f3672o = multiSelectListPreference.f3667k;
    }

    @Override // androidx.preference.PreferenceDialogFragment, android.app.DialogFragment, android.app.Fragment
    public final void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putStringArrayList("MultiSelectListPreferenceDialogFragment.values", new ArrayList<>(this.f3669l));
        bundle.putBoolean("MultiSelectListPreferenceDialogFragment.changed", this.f3670m);
        bundle.putCharSequenceArray("MultiSelectListPreferenceDialogFragment.entries", this.f3671n);
        bundle.putCharSequenceArray("MultiSelectListPreferenceDialogFragment.entryValues", this.f3672o);
    }
}
