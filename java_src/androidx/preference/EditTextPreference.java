package androidx.preference;

import D.o;
import X.C0082e;
import X.C0083f;
import X.b0;
import android.content.Context;
import android.content.res.TypedArray;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import com.android.systemui.shared.R;
/* loaded from: classes.dex */
public class EditTextPreference extends DialogPreference {

    /* renamed from: j  reason: collision with root package name */
    public String f3648j;

    public EditTextPreference() {
        throw null;
    }

    public EditTextPreference(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, b0.f1988d, i4, 0);
        if (obtainStyledAttributes.getBoolean(0, obtainStyledAttributes.getBoolean(0, false))) {
            if (C0083f.f2003a == null) {
                C0083f.f2003a = new C0083f();
            }
            setSummaryProvider(C0083f.f2003a);
        }
        obtainStyledAttributes.recycle();
    }

    public final void a(String str) {
        boolean shouldDisableDependents = shouldDisableDependents();
        this.f3648j = str;
        persistString(str);
        boolean shouldDisableDependents2 = shouldDisableDependents();
        if (shouldDisableDependents2 != shouldDisableDependents) {
            notifyDependencyChange(shouldDisableDependents2);
        }
        notifyChanged();
    }

    @Override // androidx.preference.Preference
    public final Object onGetDefaultValue(TypedArray typedArray, int i4) {
        return typedArray.getString(i4);
    }

    @Override // androidx.preference.Preference
    public final void onRestoreInstanceState(Parcelable parcelable) {
        if (!parcelable.getClass().equals(C0082e.class)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        C0082e c0082e = (C0082e) parcelable;
        super.onRestoreInstanceState(c0082e.getSuperState());
        a(c0082e.f2002d);
    }

    @Override // androidx.preference.Preference
    public final Parcelable onSaveInstanceState() {
        Parcelable onSaveInstanceState = super.onSaveInstanceState();
        if (isPersistent()) {
            return onSaveInstanceState;
        }
        C0082e c0082e = new C0082e(onSaveInstanceState);
        c0082e.f2002d = this.f3648j;
        return c0082e;
    }

    @Override // androidx.preference.Preference
    public final void onSetInitialValue(Object obj) {
        a(getPersistedString((String) obj));
    }

    @Override // androidx.preference.Preference
    public final boolean shouldDisableDependents() {
        return TextUtils.isEmpty(this.f3648j) || super.shouldDisableDependents();
    }

    public EditTextPreference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, o.a(context, R.attr.editTextPreferenceStyle, 16842898));
    }
}
