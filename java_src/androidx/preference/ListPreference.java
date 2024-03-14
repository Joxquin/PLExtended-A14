package androidx.preference;

import D.o;
import X.C0087j;
import X.C0088k;
import X.b0;
import android.content.Context;
import android.content.res.TypedArray;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import com.android.systemui.shared.R;
/* loaded from: classes.dex */
public class ListPreference extends DialogPreference {

    /* renamed from: j  reason: collision with root package name */
    public final CharSequence[] f3655j;

    /* renamed from: k  reason: collision with root package name */
    public final CharSequence[] f3656k;

    /* renamed from: l  reason: collision with root package name */
    public String f3657l;

    /* renamed from: m  reason: collision with root package name */
    public String f3658m;

    /* renamed from: n  reason: collision with root package name */
    public boolean f3659n;

    public ListPreference() {
        throw null;
    }

    public ListPreference(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, b0.f1989e, i4, 0);
        CharSequence[] textArray = obtainStyledAttributes.getTextArray(2);
        this.f3655j = textArray == null ? obtainStyledAttributes.getTextArray(0) : textArray;
        CharSequence[] textArray2 = obtainStyledAttributes.getTextArray(3);
        this.f3656k = textArray2 == null ? obtainStyledAttributes.getTextArray(1) : textArray2;
        if (obtainStyledAttributes.getBoolean(4, obtainStyledAttributes.getBoolean(4, false))) {
            if (C0088k.f2013a == null) {
                C0088k.f2013a = new C0088k();
            }
            setSummaryProvider(C0088k.f2013a);
        }
        obtainStyledAttributes.recycle();
        TypedArray obtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, b0.f1991g, i4, 0);
        this.f3658m = o.b(obtainStyledAttributes2, 33, 7);
        obtainStyledAttributes2.recycle();
    }

    public final int a(String str) {
        CharSequence[] charSequenceArr;
        if (str == null || (charSequenceArr = this.f3656k) == null) {
            return -1;
        }
        for (int length = charSequenceArr.length - 1; length >= 0; length--) {
            if (TextUtils.equals(this.f3656k[length].toString(), str)) {
                return length;
            }
        }
        return -1;
    }

    public final CharSequence c() {
        CharSequence[] charSequenceArr;
        int a4 = a(this.f3657l);
        if (a4 < 0 || (charSequenceArr = this.f3655j) == null) {
            return null;
        }
        return charSequenceArr[a4];
    }

    public final void d(String str) {
        boolean z4 = !TextUtils.equals(this.f3657l, str);
        if (z4 || !this.f3659n) {
            this.f3657l = str;
            this.f3659n = true;
            persistString(str);
            if (z4) {
                notifyChanged();
            }
        }
    }

    @Override // androidx.preference.Preference
    public final CharSequence getSummary() {
        if (getSummaryProvider() != null) {
            return getSummaryProvider().a(this);
        }
        CharSequence c4 = c();
        CharSequence summary = super.getSummary();
        String str = this.f3658m;
        if (str == null) {
            return summary;
        }
        Object[] objArr = new Object[1];
        if (c4 == null) {
            c4 = "";
        }
        objArr[0] = c4;
        String format = String.format(str, objArr);
        if (TextUtils.equals(format, summary)) {
            return summary;
        }
        Log.w("ListPreference", "Setting a summary with a String formatting marker is no longer supported. You should use a SummaryProvider instead.");
        return format;
    }

    @Override // androidx.preference.Preference
    public final Object onGetDefaultValue(TypedArray typedArray, int i4) {
        return typedArray.getString(i4);
    }

    @Override // androidx.preference.Preference
    public final void onRestoreInstanceState(Parcelable parcelable) {
        if (!parcelable.getClass().equals(C0087j.class)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        C0087j c0087j = (C0087j) parcelable;
        super.onRestoreInstanceState(c0087j.getSuperState());
        d(c0087j.f2011d);
    }

    @Override // androidx.preference.Preference
    public final Parcelable onSaveInstanceState() {
        Parcelable onSaveInstanceState = super.onSaveInstanceState();
        if (isPersistent()) {
            return onSaveInstanceState;
        }
        C0087j c0087j = new C0087j(onSaveInstanceState);
        c0087j.f2011d = this.f3657l;
        return c0087j;
    }

    @Override // androidx.preference.Preference
    public final void onSetInitialValue(Object obj) {
        d(getPersistedString((String) obj));
    }

    @Override // androidx.preference.Preference
    public final void setSummary(CharSequence charSequence) {
        super.setSummary(charSequence);
        if (charSequence == null) {
            this.f3658m = null;
        } else {
            this.f3658m = ((String) charSequence).toString();
        }
    }

    public ListPreference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, o.a(context, R.attr.dialogPreferenceStyle, 16842897));
    }
}
