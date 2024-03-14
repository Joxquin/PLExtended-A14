package androidx.preference;

import X.K;
import X.N;
import X.X;
import X.b0;
import android.content.Context;
import android.content.res.TypedArray;
import android.os.Bundle;
import android.os.Handler;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import q.m;
/* loaded from: classes.dex */
public abstract class PreferenceGroup extends Preference {

    /* renamed from: d  reason: collision with root package name */
    public final m f3700d;

    /* renamed from: e  reason: collision with root package name */
    public final Handler f3701e;

    /* renamed from: f  reason: collision with root package name */
    public final List f3702f;

    /* renamed from: g  reason: collision with root package name */
    public boolean f3703g;

    /* renamed from: h  reason: collision with root package name */
    public int f3704h;

    /* renamed from: i  reason: collision with root package name */
    public boolean f3705i;

    /* renamed from: j  reason: collision with root package name */
    public int f3706j;

    /* renamed from: k  reason: collision with root package name */
    public final K f3707k;

    public PreferenceGroup(Context context, AttributeSet attributeSet, int i4, int i5) {
        super(context, attributeSet, i4, i5);
        this.f3700d = new m();
        this.f3701e = new Handler();
        this.f3703g = true;
        this.f3704h = 0;
        this.f3705i = false;
        this.f3706j = Integer.MAX_VALUE;
        this.f3707k = new K(this);
        this.f3702f = new ArrayList();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, b0.f1994j, i4, i5);
        this.f3703g = obtainStyledAttributes.getBoolean(2, obtainStyledAttributes.getBoolean(2, true));
        if (obtainStyledAttributes.hasValue(1)) {
            h(obtainStyledAttributes.getInt(1, obtainStyledAttributes.getInt(1, Integer.MAX_VALUE)));
        }
        obtainStyledAttributes.recycle();
    }

    public final void a(Preference preference) {
        long j4;
        if (((ArrayList) this.f3702f).contains(preference)) {
            return;
        }
        if (preference.getKey() != null) {
            PreferenceGroup preferenceGroup = this;
            while (preferenceGroup.getParent() != null) {
                preferenceGroup = preferenceGroup.getParent();
            }
            String key = preference.getKey();
            if (preferenceGroup.c(key) != null) {
                Log.e("PreferenceGroup", "Found duplicated key: \"" + key + "\". This can cause unintended behaviour, please use unique keys for every preference.");
            }
        }
        if (preference.getOrder() == Integer.MAX_VALUE) {
            if (this.f3703g) {
                int i4 = this.f3704h;
                this.f3704h = i4 + 1;
                preference.setOrder(i4);
            }
            if (preference instanceof PreferenceGroup) {
                ((PreferenceGroup) preference).f3703g = this.f3703g;
            }
        }
        int binarySearch = Collections.binarySearch(this.f3702f, preference);
        if (binarySearch < 0) {
            binarySearch = (binarySearch * (-1)) - 1;
        }
        preference.onParentChanged(shouldDisableDependents());
        synchronized (this) {
            ((ArrayList) this.f3702f).add(binarySearch, preference);
        }
        X preferenceManager = getPreferenceManager();
        String key2 = preference.getKey();
        if (key2 == null || !this.f3700d.containsKey(key2)) {
            synchronized (preferenceManager) {
                j4 = preferenceManager.f1966b;
                preferenceManager.f1966b = 1 + j4;
            }
        } else {
            j4 = ((Long) this.f3700d.get(key2)).longValue();
            this.f3700d.remove(key2);
        }
        preference.onAttachedToHierarchy(preferenceManager, j4);
        preference.assignParent(this);
        if (this.f3705i) {
            preference.onAttached();
        }
        notifyHierarchyChanged();
    }

    public final Preference c(CharSequence charSequence) {
        Preference c4;
        if (charSequence != null) {
            if (TextUtils.equals(getKey(), charSequence)) {
                return this;
            }
            int e4 = e();
            for (int i4 = 0; i4 < e4; i4++) {
                Preference d4 = d(i4);
                if (TextUtils.equals(d4.getKey(), charSequence)) {
                    return d4;
                }
                if ((d4 instanceof PreferenceGroup) && (c4 = ((PreferenceGroup) d4).c(charSequence)) != null) {
                    return c4;
                }
            }
            return null;
        }
        throw new IllegalArgumentException("Key cannot be null");
    }

    public final Preference d(int i4) {
        return (Preference) ((ArrayList) this.f3702f).get(i4);
    }

    @Override // androidx.preference.Preference
    public final void dispatchRestoreInstanceState(Bundle bundle) {
        super.dispatchRestoreInstanceState(bundle);
        int e4 = e();
        for (int i4 = 0; i4 < e4; i4++) {
            d(i4).dispatchRestoreInstanceState(bundle);
        }
    }

    @Override // androidx.preference.Preference
    public final void dispatchSaveInstanceState(Bundle bundle) {
        super.dispatchSaveInstanceState(bundle);
        int e4 = e();
        for (int i4 = 0; i4 < e4; i4++) {
            d(i4).dispatchSaveInstanceState(bundle);
        }
    }

    public final int e() {
        return ((ArrayList) this.f3702f).size();
    }

    public final void g(Preference preference) {
        synchronized (this) {
            preference.onPrepareForRemoval();
            if (preference.getParent() == this) {
                preference.assignParent(null);
            }
            if (((ArrayList) this.f3702f).remove(preference)) {
                String key = preference.getKey();
                if (key != null) {
                    this.f3700d.put(key, Long.valueOf(preference.getId()));
                    this.f3701e.removeCallbacks(this.f3707k);
                    this.f3701e.post(this.f3707k);
                }
                if (this.f3705i) {
                    preference.onDetached();
                }
            }
        }
        notifyHierarchyChanged();
    }

    public final void h(int i4) {
        if (i4 != Integer.MAX_VALUE && !hasKey()) {
            Log.e("PreferenceGroup", getClass().getSimpleName().concat(" should have a key defined if it contains an expandable preference"));
        }
        this.f3706j = i4;
    }

    @Override // androidx.preference.Preference
    public final void notifyDependencyChange(boolean z4) {
        super.notifyDependencyChange(z4);
        int e4 = e();
        for (int i4 = 0; i4 < e4; i4++) {
            d(i4).onParentChanged(z4);
        }
    }

    @Override // androidx.preference.Preference
    public final void onAttached() {
        super.onAttached();
        this.f3705i = true;
        int e4 = e();
        for (int i4 = 0; i4 < e4; i4++) {
            d(i4).onAttached();
        }
    }

    @Override // androidx.preference.Preference
    public final void onDetached() {
        super.onDetached();
        this.f3705i = false;
        int e4 = e();
        for (int i4 = 0; i4 < e4; i4++) {
            d(i4).onDetached();
        }
    }

    @Override // androidx.preference.Preference
    public final void onRestoreInstanceState(Parcelable parcelable) {
        if (!parcelable.getClass().equals(N.class)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        N n4 = (N) parcelable;
        this.f3706j = n4.f1946d;
        super.onRestoreInstanceState(n4.getSuperState());
    }

    @Override // androidx.preference.Preference
    public final Parcelable onSaveInstanceState() {
        return new N(super.onSaveInstanceState(), this.f3706j);
    }

    public PreferenceGroup(Context context, AttributeSet attributeSet, int i4) {
        this(context, attributeSet, i4, 0);
    }

    public PreferenceGroup(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }
}
