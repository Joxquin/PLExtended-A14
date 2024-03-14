package androidx.preference;

import D.o;
import X.C0092o;
import X.b0;
import android.content.Context;
import android.content.res.TypedArray;
import android.os.Parcelable;
import android.util.AttributeSet;
import com.android.systemui.shared.R;
import java.util.HashSet;
import java.util.Set;
/* loaded from: classes.dex */
public class MultiSelectListPreference extends DialogPreference {

    /* renamed from: j  reason: collision with root package name */
    public final CharSequence[] f3666j;

    /* renamed from: k  reason: collision with root package name */
    public final CharSequence[] f3667k;

    /* renamed from: l  reason: collision with root package name */
    public final Set f3668l;

    public MultiSelectListPreference() {
        throw null;
    }

    public MultiSelectListPreference(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        this.f3668l = new HashSet();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, b0.f1990f, i4, 0);
        CharSequence[] textArray = obtainStyledAttributes.getTextArray(2);
        this.f3666j = textArray == null ? obtainStyledAttributes.getTextArray(0) : textArray;
        CharSequence[] textArray2 = obtainStyledAttributes.getTextArray(3);
        this.f3667k = textArray2 == null ? obtainStyledAttributes.getTextArray(1) : textArray2;
        obtainStyledAttributes.recycle();
    }

    public final void a(Set set) {
        ((HashSet) this.f3668l).clear();
        this.f3668l.addAll(set);
        persistStringSet(set);
        notifyChanged();
    }

    @Override // androidx.preference.Preference
    public final Object onGetDefaultValue(TypedArray typedArray, int i4) {
        CharSequence[] textArray = typedArray.getTextArray(i4);
        HashSet hashSet = new HashSet();
        for (CharSequence charSequence : textArray) {
            hashSet.add(charSequence.toString());
        }
        return hashSet;
    }

    @Override // androidx.preference.Preference
    public final void onRestoreInstanceState(Parcelable parcelable) {
        if (!parcelable.getClass().equals(C0092o.class)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        C0092o c0092o = (C0092o) parcelable;
        super.onRestoreInstanceState(c0092o.getSuperState());
        a(c0092o.f2016d);
    }

    @Override // androidx.preference.Preference
    public final Parcelable onSaveInstanceState() {
        Parcelable onSaveInstanceState = super.onSaveInstanceState();
        if (isPersistent()) {
            return onSaveInstanceState;
        }
        C0092o c0092o = new C0092o(onSaveInstanceState);
        c0092o.f2016d = this.f3668l;
        return c0092o;
    }

    @Override // androidx.preference.Preference
    public final void onSetInitialValue(Object obj) {
        a(getPersistedStringSet((Set) obj));
    }

    public MultiSelectListPreference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, o.a(context, R.attr.dialogPreferenceStyle, 16842897));
    }
}
