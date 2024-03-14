package androidx.preference;

import X.j0;
import android.content.Context;
import android.content.res.TypedArray;
import android.os.Parcelable;
import android.util.AttributeSet;
/* loaded from: classes.dex */
public abstract class TwoStatePreference extends Preference {
    protected boolean mChecked;
    private boolean mCheckedSet;
    private boolean mDisableDependentsState;
    private CharSequence mSummaryOff;
    private CharSequence mSummaryOn;

    public TwoStatePreference() {
        throw null;
    }

    public TwoStatePreference(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0, 0);
    }

    @Override // androidx.preference.Preference
    public final void onClick() {
        boolean z4 = !this.mChecked;
        if (callChangeListener(Boolean.valueOf(z4))) {
            setChecked(z4);
        }
    }

    @Override // androidx.preference.Preference
    public final Object onGetDefaultValue(TypedArray typedArray, int i4) {
        return Boolean.valueOf(typedArray.getBoolean(i4, false));
    }

    @Override // androidx.preference.Preference
    public final void onRestoreInstanceState(Parcelable parcelable) {
        if (!parcelable.getClass().equals(j0.class)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        j0 j0Var = (j0) parcelable;
        super.onRestoreInstanceState(j0Var.getSuperState());
        setChecked(j0Var.f2012d);
    }

    @Override // androidx.preference.Preference
    public final Parcelable onSaveInstanceState() {
        Parcelable onSaveInstanceState = super.onSaveInstanceState();
        if (isPersistent()) {
            return onSaveInstanceState;
        }
        j0 j0Var = new j0(onSaveInstanceState);
        j0Var.f2012d = this.mChecked;
        return j0Var;
    }

    @Override // androidx.preference.Preference
    public final void onSetInitialValue(Object obj) {
        if (obj == null) {
            obj = Boolean.FALSE;
        }
        setChecked(getPersistedBoolean(((Boolean) obj).booleanValue()));
    }

    public final void setChecked(boolean z4) {
        boolean z5 = this.mChecked != z4;
        if (z5 || !this.mCheckedSet) {
            this.mChecked = z4;
            this.mCheckedSet = true;
            persistBoolean(z4);
            if (z5) {
                notifyDependencyChange(shouldDisableDependents());
                notifyChanged();
            }
        }
    }

    public final void setDisableDependentsState(boolean z4) {
        this.mDisableDependentsState = z4;
    }

    public final void setSummaryOff(CharSequence charSequence) {
        this.mSummaryOff = charSequence;
        if (this.mChecked) {
            return;
        }
        notifyChanged();
    }

    public final void setSummaryOn(CharSequence charSequence) {
        this.mSummaryOn = charSequence;
        if (this.mChecked) {
            notifyChanged();
        }
    }

    @Override // androidx.preference.Preference
    public final boolean shouldDisableDependents() {
        return (this.mDisableDependentsState ? this.mChecked : !this.mChecked) || super.shouldDisableDependents();
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0030  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0041  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0049  */
    /* JADX WARN: Removed duplicated region for block: B:28:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void syncSummaryView(android.view.View r4) {
        /*
            r3 = this;
            boolean r0 = r4 instanceof android.widget.TextView
            if (r0 != 0) goto L5
            return
        L5:
            android.widget.TextView r4 = (android.widget.TextView) r4
            boolean r0 = r3.mChecked
            r1 = 0
            if (r0 == 0) goto L1b
            java.lang.CharSequence r0 = r3.mSummaryOn
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 != 0) goto L1b
            java.lang.CharSequence r0 = r3.mSummaryOn
            r4.setText(r0)
        L19:
            r0 = r1
            goto L2e
        L1b:
            boolean r0 = r3.mChecked
            if (r0 != 0) goto L2d
            java.lang.CharSequence r0 = r3.mSummaryOff
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 != 0) goto L2d
            java.lang.CharSequence r0 = r3.mSummaryOff
            r4.setText(r0)
            goto L19
        L2d:
            r0 = 1
        L2e:
            if (r0 == 0) goto L3e
            java.lang.CharSequence r3 = r3.getSummary()
            boolean r2 = android.text.TextUtils.isEmpty(r3)
            if (r2 != 0) goto L3e
            r4.setText(r3)
            r0 = r1
        L3e:
            if (r0 != 0) goto L41
            goto L43
        L41:
            r1 = 8
        L43:
            int r3 = r4.getVisibility()
            if (r1 == r3) goto L4c
            r4.setVisibility(r1)
        L4c:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.preference.TwoStatePreference.syncSummaryView(android.view.View):void");
    }

    public TwoStatePreference(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4, 0);
    }
}
